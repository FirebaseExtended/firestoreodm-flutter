// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../collection_data.dart';

class DocumentReferenceTemplate {
  DocumentReferenceTemplate(this.data);

  final CollectionData data;

  @override
  String toString() {
    return '''
abstract class ${data.documentReferenceName} extends FirestoreDocumentReference<${data.type}, ${data.documentSnapshotName}> {
  factory ${data.documentReferenceName}(DocumentReference<${data.type}> reference) = _\$${data.documentReferenceName};

  DocumentReference<${data.type}> get reference;

  ${_parent(data)}

  ${_subCollections(data)}

  @override
  Stream<${data.documentSnapshotName}> snapshots();

  @override
  Future<${data.documentSnapshotName}> get([GetOptions? options]);

  @override
  Future<void> delete();

  ${_setPrototype(data)}

  ${_updatePrototype(data)}
}

class _\$${data.documentReferenceName}
      extends FirestoreDocumentReference<${data.type}, ${data.documentSnapshotName}>
      implements ${data.documentReferenceName} {
  _\$${data.documentReferenceName}(this.reference);

  @override
  final DocumentReference<${data.type}> reference;

  ${_parent(data)}

  ${_subCollections(data)}

  @override
  Stream<${data.documentSnapshotName}> snapshots() {
    return reference.snapshots().map(${data.documentSnapshotName}._);
  }

  @override
  Future<${data.documentSnapshotName}> get([GetOptions? options]) {
    return reference.get(options).then(${data.documentSnapshotName}._);
  }

  @override
  Future<${data.documentSnapshotName}> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(${data.documentSnapshotName}._);
  }

  ${_set(data)}

  ${_update(data)} 

  ${_equalAndHashCode(data)}
}
''';
  }

  String _parameters(
    CollectionData data, {
    bool includeFields = true,
    bool useSentinel = false,
    bool includeFieldValues = true,
  }) {
    final parameters = <String>[];

    for (final field in data.updatableFields) {
      if (!field.updatable) continue;

      final fieldType = field.type.getDisplayString();
      if (includeFields) {
        final type = useSentinel ? 'Object?' : fieldType;
        final defaultValue = useSentinel ? ' = _sentinel' : '';
        parameters.add('$type ${field.name}$defaultValue,');
      }
      if (includeFieldValues) {
        parameters.add('FieldValue? ${field.name}FieldValue,');
      }
    }

    return parameters.join('\n');
  }

  // TODO support nested objects
  String _json(
    CollectionData data, {
    bool includeFields = true,
    bool includeFieldValues = true,
  }) {
    return [
      for (final field in data.updatableFields) ...[
        if (includeFields)
          '''
        if (${field.name} != _sentinel)
          ${field.field}: ${data.perFieldToJson(field.name)}(${field.name} as ${field.type}),
        ''',
        if (includeFieldValues)
          '''
        if (${field.name}FieldValue != null)
          ${field.field}: ${field.name}FieldValue ,
        ''',
      ],
    ].join('\n');
  }

  String _asserts(CollectionData dat) {
    return [
      for (final field in data.updatableFields)
        '''
        assert(
          ${field.name} == _sentinel || ${field.name}FieldValue == null,
          "Cannot specify both ${field.name} and ${field.name}FieldValue",
        );''',
    ].join('\n');
  }

  String _setPrototype(CollectionData data) {
    if (data.updatableFields.isEmpty) return '';

    final type = data.type.getDisplayString();
    final parameters = _parameters(data, includeFields: false);

    return '''
/// Sets data on the document, overwriting any existing data. If the document
/// does not yet exist, it will be created.
///
/// If [SetOptions] are provided, the data can be merged into an existing
/// document instead of overwriting.
Future<void> set(
  $type model, {
  SetOptions? setOptions,
  $parameters
});

/// Writes to the document using the transaction API.
///
/// If the document does not exist yet, it will be created. If you pass
/// [SetOptions], the provided data can be merged into the existing document.
void transactionSet(
  Transaction transaction,
  $type model, {
  $parameters
});

/// Writes to the document using the batch API.
///
/// If the document does not exist yet, it will be created. If you pass
/// [SetOptions], the provided data can be merged into the existing document.
void batchSet(
  WriteBatch batch,
  $type model, {
  $parameters
});
''';
  }

  String _set(CollectionData data) {
    if (data.updatableFields.isEmpty) return '';

    final type = data.type.getDisplayString();
    final parameters = _parameters(data, includeFields: false);
    final fieldValuesJson = _json(data, includeFields: false);
    final json = '''
{
  ...${data.toJson('model')},
  $fieldValuesJson
}''';

    return '''
Future<void> set(
  $type model, {
  SetOptions? setOptions,
  $parameters
}) async {
  final json = $json;

  return (reference as DocumentReference).set(json);
}

void transactionSet(
  Transaction transaction,
  $type model, {
  $parameters
}) {
  final json = $json;

  transaction.set(reference, json);
}

void batchSet(
  WriteBatch batch,
  $type model, {
  $parameters
}) {
  final json = $json;

  batch.set(reference, json);
}
''';
  }

  String _updatePrototype(CollectionData data) {
    if (data.updatableFields.isEmpty) return '';

    final parameters = _parameters(data);

    return '''
/// Updates data on the document. Data will be merged with any existing
/// document data.
///
/// If no document exists yet, the update will fail.
Future<void> update({$parameters});

/// Updates fields in the current document using the transaction API.
///
/// The update will fail if applied to a document that does not exist.
void transactionUpdate(Transaction transaction, {$parameters});

/// Updates fields in the current document using the batch API.
///
/// The update will fail if applied to a document that does not exist.
void batchUpdate(WriteBatch batch, {$parameters});
''';
  }

  String _update(CollectionData data) {
    if (data.updatableFields.isEmpty) return '';

    final parameters = _parameters(data, useSentinel: true);
    final json = _json(data);
    final asserts = _asserts(data);

    return '''
Future<void> update({$parameters}) async {
  $asserts
  final json = {$json};

  return reference.update(json);
}

void transactionUpdate(Transaction transaction, {$parameters}) {
  $asserts
  final json = {$json};

  transaction.update(reference, json);
}

void batchUpdate(WriteBatch batch, {$parameters}) {
  $asserts
  final json = {$json};

  batch.update(reference, json);
}
''';
  }

  String _parent(CollectionData data) {
    final doc =
        '/// A reference to the [${data.collectionReferenceInterfaceName}] containing this document.';
    if (data.parent == null) {
      return '''
  $doc
  ${data.collectionReferenceInterfaceName} get parent {
    return ${data.collectionReferenceImplName}(reference.firestore);
  }
''';
    }

    final parent = data.parent!;
    return '''
  $doc
  ${data.collectionReferenceInterfaceName} get parent {
    return ${data.collectionReferenceImplName}(
      reference.parent.parent!.withConverter<${parent.type}>(
        fromFirestore: ${parent.collectionReferenceInterfaceName}.fromFirestore,
        toFirestore: ${parent.collectionReferenceInterfaceName}.toFirestore,
      ),
    );
  }
''';
  }

  String _subCollections(CollectionData data) {
    final buffer = StringBuffer();

    for (final child in data.children) {
      buffer.writeln(
        '''
  late final ${child.collectionReferenceInterfaceName} ${child.collectionName} = ${child.collectionReferenceImplName}(
    reference,
  );
''',
      );
    }

    return buffer.toString();
  }

  String _equalAndHashCode(CollectionData data) {
    final propertyNames = [
      'runtimeType',
      'parent',
      'id',
    ];

    return '''
  @override
  bool operator ==(Object other) {
    return other is ${data.documentReferenceName}
      && ${propertyNames.map((p) => 'other.$p == $p').join(' && ')};
  }

  @override
  int get hashCode => Object.hash(${propertyNames.join(',')});
''';
  }
}
