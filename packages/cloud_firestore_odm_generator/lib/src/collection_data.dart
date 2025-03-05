// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:cloud_firestore_odm/annotation.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'collection_generator.dart';
import 'names.dart';

const collectionChecker = TypeChecker.fromRuntime(Collection);
const jsonSerializableChecker = TypeChecker.fromRuntime(JsonSerializable);
const freezedChecker = TypeChecker.fromRuntime(Freezed);

class CollectionGraph {
  CollectionGraph._(this.roots, this.subCollections);

  factory CollectionGraph.parse(List<CollectionData> collections) {
    final roots = collections.where((collection) {
      final pathSplit = collection.path.split('/');
      return !pathSplit.any((split) => split == '*');
    }).toList();

    final subCollections = collections.where((collection) {
      final pathSplit = collection.path.split('/');
      return pathSplit.any((split) => split == '*');
    }).toList();

    final allCollections = [...roots, ...subCollections];

    for (final subCollection in subCollections) {
      final lastIDIndex = subCollection.path.lastIndexOf('/*/');
      if (lastIDIndex < 0) {
        // TODO find a way to test this
        throw InvalidGenerationSourceError(
          'Defined a sub-collection with path ${subCollection.path} but '
          'the path does not point to a sub-collection.',
        );
      }
      // From "movies/*/comments/*/retweets" obtains "movies/*/comments"
      final parentPath = subCollection.path.substring(0, lastIDIndex);

      final parentCollection = allCollections.firstWhere(
        (c) => c.path == parentPath,
        orElse: () {
          // TODO find a way to test this
          throw InvalidGenerationSourceError(
            'Defined a subcollection with path "${subCollection.path}" '
            'but no collection with path "$parentPath" found.',
          );
        },
      );

      subCollection._parent = parentCollection;
      parentCollection._children.add(subCollection);
    }

    return CollectionGraph._(roots, subCollections);
  }

  final List<CollectionData> roots;
  final List<CollectionData> subCollections;

  late final allCollections = [...roots, ...subCollections];

  @override
  String toString() {
    return 'Data(roots: $roots, subCollections: $subCollections)';
  }
}

class CollectionData with Names {
  CollectionData({
    required this.type,
    required String? collectionName,
    required this.collectionPrefix,
    required this.path,
    required this.queryableFields,
    required this.fromJson,
    required this.toJson,
    required this.perFieldToJson,
    required this.idKey,
    required this.libraryElement,
  }) : collectionName =
            collectionName ?? ReCase(path.split('/').last).camelCase;

  factory CollectionData.fromAnnotation({
    required LibraryElement libraryElement,
    required Element annotatedElement,
    required DartObject annotation,
    required GlobalData globalData,
  }) {
    // TODO find a way to test validation

    final name = annotation.getField('name')!.toStringValue();
    final prefix = annotation.getField('prefix')!.toStringValue();

    // TODO(validate name)

    final path = annotation.getField('path')!.toStringValue();
    _assertIsValidCollectionPath(path, annotatedElement);
    path!;

    final type = CollectionData.modelTypeOfAnnotation(annotation);

    if (type is DynamicType) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection was used, but no generic type was specified. ',
        todo: 'Instead of @Collection("path") do @Collection<MyClass>("path").',
        element: annotatedElement,
      );
    }

    final collectionTargetElement = type.element;
    if (collectionTargetElement is! ClassElement) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection can only receive classes as generic argument. ',
        element: annotatedElement,
      );
    }

    final hasFreezed = freezedChecker.hasAnnotationOf(collectionTargetElement);
    final redirectedFreezedConstructors =
        collectionTargetElement.constructors.where(
      (element) {
        return element.isFactory &&
            // It should be safe to read "redirectedConstructor" as the build.yaml
            // asks to run the ODM after Freezed
            element.redirectedConstructor != null;
      },
    ).toList();

    final hasJsonSerializable =
        jsonSerializableChecker.hasAnnotationOf(collectionTargetElement);
    // Freezed classes are also JsonSerializable
    if (!hasJsonSerializable && !hasFreezed) {
      throw InvalidGenerationSourceError(
        'Used @Collection with the class ${collectionTargetElement.name}, but '
        'the class has no @JsonSerializable annotation.',
      );
    }

    final annotatedElementSource = annotatedElement.librarySource;
    // TODO(rrousselGit) handle parts
    // Whether the model class and the reference variable are defined in the same file
    // This is important because json_serializable generates private code for
    // decoding a Model class.
    final modelAndReferenceInTheSameLibrary =
        collectionTargetElement.librarySource == annotatedElementSource;
    if (!modelAndReferenceInTheSameLibrary) {
      throw InvalidGenerationSourceError(
        '''
When using json_serializable, the `@Collection` annotation and the class that
represents the content of the collection must be in the same file.

- @Collection is from $annotatedElementSource
- `$collectionTargetElement` is from ${collectionTargetElement.librarySource}
''',
        element: annotatedElement,
      );
    }

    // TODO test error handling
    if (redirectedFreezedConstructors.length > 1) {
      throw InvalidGenerationSourceError(
        'Union types when using @freezed are currently unsupported. Use a single constructor instead',
        element: annotatedElement,
      );
    }

    final collectionTargetElementPublicType =
        collectionTargetElement.name.public;
    final fromJson = collectionTargetElement.constructors
        .firstWhereOrNull((ctor) => ctor.name == 'fromJson');
    if (fromJson != null) {
      if (fromJson.parameters.length != 1 ||
          !fromJson.parameters.first.isRequiredPositional ||
          !fromJson.parameters.first.type.isDartCoreMap) {
        // TODO support deserializing generic objects
        throw InvalidGenerationSourceError(
          '@Collection was used with the class ${collectionTargetElement.name} but '
          'its fromJson does not match `Function(Map json)`.',
          element: annotatedElement,
        );
      }
    }
    final toJson = collectionTargetElement
        // Looking into fromJson from superTypes too
        .allMethods
        .firstWhereOrNull((method) => method.name == 'toJson');
    final redirectedFreezedClass = redirectedFreezedConstructors
        .singleOrNull?.redirectedConstructor!.enclosingElement3.name;
    final generatedJsonTypePrefix = _generatedJsonTypePrefix(
      hasFreezed: hasFreezed,
      redirectedFreezedClass: redirectedFreezedClass,
      collectionTargetElementPublicType: collectionTargetElementPublicType,
    );
    if (toJson != null) {
      if (toJson.parameters.isNotEmpty || !toJson.returnType.isDartCoreMap) {
        // TODO support serializing generic objects
        throw InvalidGenerationSourceError(
          '@Collection was used with the class ${collectionTargetElement.name} but '
          'its toJson does not match `Map Function()`.',
          element: annotatedElement,
        );
      }
    }
    final data = CollectionData(
      type: type,
      path: path,
      collectionName: name,
      collectionPrefix: prefix,
      libraryElement: libraryElement,
      fromJson: (json) {
        if (fromJson != null) return '$type.fromJson($json)';
        return '${generatedJsonTypePrefix}FromJson($json)';
      },
      toJson: (value) {
        if (toJson != null) return '$value.toJson()';
        return '${generatedJsonTypePrefix}ToJson($value)';
      },
      perFieldToJson: (field) =>
          '${generatedJsonTypePrefix}PerFieldToJson.$field',
      idKey: collectionTargetElement
          .allFields(
            hasFreezed: hasFreezed,
            freezedConstructors: redirectedFreezedConstructors,
          )
          .firstWhereOrNull((f) => f.hasId())
          ?.name,
      queryableFields: [
        QueryingField(
          'fieldPath',
          whereDoc: '''
  /// Perform a where query based on a [FieldPath].
  /// 
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  /// 
  /// If possible, instead use the more explicit variant of where queries:
  /// 
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  /// 
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```''',
          orderByDoc: '''
  /// Perform an order query based on a [FieldPath].
  /// 
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  /// 
  /// If possible, instead use the more explicit variant of order queries:
  /// 
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  /// 
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```''',
          annotatedElement.library!.typeProvider.objectType,
          field: 'fieldPath',
          updatable: false,
        ),
        QueryingField(
          'documentId',
          annotatedElement.library!.typeProvider.stringType,
          whereDoc: '', // Inherited
          orderByDoc: '', // Inherited
          field: 'FieldPath.documentId',
          updatable: false,
        ),
        ...collectionTargetElement
            .allFields(
              hasFreezed: hasFreezed,
              freezedConstructors: redirectedFreezedConstructors,
            )
            .where((f) => f.isPublic)
            .where((f) => !f.hasId())
            .where((f) => !f.isJsonIgnored())
            .map(
              (f) => QueryingField(
                f.name,
                f.type,
                whereDoc: '',
                orderByDoc: '',
                updatable: true,
                field: "${generatedJsonTypePrefix}FieldMap['${f.name}']!",
              ),
            )
            .toList(),
      ],
    );

    final classPrefix = data.classPrefix;

    if (globalData.classPrefixesForLibrary[annotatedElementSource]
            ?.contains(classPrefix) ??
        false) {
      throw InvalidGenerationSourceError(
        'Defined a collection with duplicate class prefix $classPrefix. '
        'Either use a different class, or set a unique class prefix.',
      );
    }

    globalData.classPrefixesForLibrary[annotatedElementSource] ??= [];
    globalData.classPrefixesForLibrary[annotatedElementSource]!
        .add(classPrefix);

    return data;
  }

  static void _assertIsValidCollectionPath(String? path, Element element) {
    if (path == null) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but the path was null, which is not allowed.',
        element: element,
      );
    }

    final allowedCharactersRegex = RegExp(r'^[0-9a-zA-Z/*-_]+$');
    if (!allowedCharactersRegex.hasMatch(path)) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but the path contains illegal characters.',
        element: element,
      );
    }

    final pathSplit = path.split('/');
    if (pathSplit.length.isEven) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but this path points to a document instead of a collection',
        element: element,
      );
    }

    for (var i = 0; i < pathSplit.length; i += 2) {
      if (pathSplit[i] == '*') {
        throw InvalidGenerationSourceError(
          'The annotation @Collection received "$path" as collection path, '
          'but ${pathSplit[i]} is not a valid collection name',
          element: element,
        );
      }
    }
  }

  static DartType modelTypeOfAnnotation(DartObject annotation) {
    return (annotation.type! as ParameterizedType).typeArguments.first;
  }

  static String _generatedJsonTypePrefix({
    required bool hasFreezed,
    required String? redirectedFreezedClass,
    required String collectionTargetElementPublicType,
  }) {
    if (hasFreezed) {
      final className =
          redirectedFreezedClass?.public ?? collectionTargetElementPublicType;
      // Only support freezed 3.x or higher
      return '_\$$className';
    } else {
      return '_\$$collectionTargetElementPublicType';
    }
  }

  @override
  final String? collectionPrefix;
  @override
  final DartType type;

  final String collectionName;
  final String path;
  final String? idKey;
  final List<QueryingField> queryableFields;
  final LibraryElement libraryElement;

  late final updatableFields =
      queryableFields.where((element) => element.updatable).toList();

  CollectionData? _parent;
  CollectionData? get parent => _parent;

  final List<CollectionData> _children = [];
  List<CollectionData> get children => UnmodifiableListView(_children);

  String Function(String json) fromJson;
  String Function(String value) toJson;
  String Function(String field) perFieldToJson;

  @override
  String toString() {
    return 'CollectionData(type: $type, collectionName: $collectionName, path: $path)';
  }
}

extension on ClassElement {
  Iterable<MethodElement> get allMethods sync* {
    yield* methods;
    for (final supertype in allSupertypes) {
      if (supertype.isDartCoreObject) continue;
      yield* supertype.methods;
    }
  }

  Iterable<VariableElement> allFields({
    required bool hasFreezed,
    required List<ConstructorElement> freezedConstructors,
  }) {
    if (hasFreezed) {
      /// For Freezed 3.x,  support mixed mode classes. There can be the classic freezed way with a factory,
      /// or there can be simple regular classes with a normal constructor.
      ///
      /// We need to find the factory constructor, or the normal constructor if there is no factory.
      final factoryConstructor = freezedConstructors.firstWhereOrNull(
        (ctor) =>
            ctor.isFactory &&
            !ctor.name.startsWith('_') &&
            ctor.name != 'fromJson',
      );
      if (factoryConstructor == null) {
        // No factory constructor, use the normal constructor
        return fields;
      }
      return factoryConstructor.parameters;
    } else {
      final uniqueFields = <String, FieldElement>{};

      final allFields = const <FieldElement>[].followedBy(fields).followedBy(
            allSupertypes
                .where((e) => !e.isDartCoreObject)
                .expand((e) => e.element.fields),
          );

      for (final field in allFields) {
        if (field.getter != null && !field.getter!.isSynthetic) continue;
        if (field.isStatic) continue;
        uniqueFields[field.name] ??= field;
      }
      return uniqueFields.values;
    }
  }
}

extension on String {
  String get public {
    return startsWith('_') ? substring(1) : this;
  }
}

const _coreListChecker = TypeChecker.fromUrl('dart:core#List');
const _coreSetChecker = TypeChecker.fromUrl('dart:core#Set');

extension DartTypeExtension on DartType {
  bool get isJsonDocumentReference {
    return element?.librarySource?.uri.scheme == 'package' &&
        const {'cloud_firestore'}
            .contains(element?.librarySource?.uri.pathSegments.first) &&
        element?.name == 'DocumentReference' &&
        (this as InterfaceType).typeArguments.single.isDartCoreMap;
  }

  bool get isList => _coreListChecker.isExactlyType(this);
  bool get isSet => _coreSetChecker.isExactlyType(this);
  bool get isSupportedIterable => isList || isSet;

  bool get isSupportedPrimitiveIterable {
    if (!isSupportedIterable) return false;

    final generic = (this as InterfaceType).typeArguments.single;

    return generic.isDartCoreNum ||
        generic.isDartCoreString ||
        generic.isDartCoreBool ||
        generic.isDartCoreObject ||
        generic.isEnum ||
        generic is DynamicType;
  }
}

extension on Element {
  bool isJsonIgnored() {
    const checker = TypeChecker.fromRuntime(JsonKey);
    final jsonKeys = checker.annotationsOf(this);

    for (final jsonKey in jsonKeys) {
      final ignore = jsonKey.getField('ignore')?.toBoolValue() ?? false;

      // ignore is deprecated in favor of includeFromJson and includeToJson
      final jsonIncluded =
          (jsonKey.getField('includeFromJson')?.toBoolValue() ?? true) &&
              (jsonKey.getField('includeToJson')?.toBoolValue() ?? true);
      if (ignore || !jsonIncluded) {
        return true;
      }
    }

    return false;
  }

  bool hasId() {
    const checker = TypeChecker.fromRuntime(Id);
    return checker.hasAnnotationOf(this);
  }
}
