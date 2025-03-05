// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PersonCollectionReference
    implements
        PersonQuery,
        FirestoreCollectionReference<Person, PersonQuerySnapshot> {
  factory PersonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$PersonCollectionReference;

  static Person fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Person.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Person value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Person> get reference;

  @override
  PersonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PersonDocumentReference> add(Person value);
}

class _$PersonCollectionReference extends _$PersonQuery
    implements PersonCollectionReference {
  factory _$PersonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PersonCollectionReference._(
      firestore.collection('freezed-test').withConverter(
            fromFirestore: PersonCollectionReference.fromFirestore,
            toFirestore: PersonCollectionReference.toFirestore,
          ),
    );
  }

  _$PersonCollectionReference._(
    CollectionReference<Person> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Person> get reference =>
      super.reference as CollectionReference<Person>;

  @override
  PersonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PersonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<PersonDocumentReference> add(Person value) {
    return reference.add(value).then((ref) => PersonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PersonDocumentReference
    extends FirestoreDocumentReference<Person, PersonDocumentSnapshot> {
  factory PersonDocumentReference(DocumentReference<Person> reference) =
      _$PersonDocumentReference;

  DocumentReference<Person> get reference;

  /// A reference to the [PersonCollectionReference] containing this document.
  PersonCollectionReference get parent {
    return _$PersonCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonDocumentSnapshot> snapshots();

  @override
  Future<PersonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });
}

class _$PersonDocumentReference
    extends FirestoreDocumentReference<Person, PersonDocumentSnapshot>
    implements PersonDocumentReference {
  _$PersonDocumentReference(this.reference);

  @override
  final DocumentReference<Person> reference;

  /// A reference to the [PersonCollectionReference] containing this document.
  PersonCollectionReference get parent {
    return _$PersonCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PersonDocumentSnapshot._);
  }

  @override
  Future<PersonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PersonDocumentSnapshot._);
  }

  @override
  Future<PersonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(PersonDocumentSnapshot._);
  }

  Future<void> set(
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) async {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!:
            _$PersonPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!:
            _$PersonPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!:
            _$PersonPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!:
            _$PersonPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!:
            _$PersonPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!:
            _$PersonPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PersonQuery
    implements QueryReference<Person, PersonQuerySnapshot> {
  @override
  PersonQuery limit(int limit);

  @override
  PersonQuery limitToLast(int limit);

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
  /// ```
  PersonQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  PersonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });
}

class _$PersonQuery extends QueryReference<Person, PersonQuerySnapshot>
    implements PersonQuery {
  _$PersonQuery(
    this._collection, {
    required Query<Person> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PersonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(PersonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<PersonQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PersonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PersonQuery limit(int limit) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery limitToLast(int limit) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereFirstName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PersonFieldMap['firstName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PersonPerFieldToJson.firstName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PersonPerFieldToJson.firstName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PersonPerFieldToJson.firstName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PersonPerFieldToJson.firstName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PersonPerFieldToJson.firstName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PersonPerFieldToJson.firstName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PersonPerFieldToJson.firstName(e)),
        whereNotIn: whereNotIn?.map((e) => _$PersonPerFieldToJson.firstName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereLastName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PersonFieldMap['lastName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PersonPerFieldToJson.lastName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PersonPerFieldToJson.lastName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PersonPerFieldToJson.lastName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PersonPerFieldToJson.lastName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PersonPerFieldToJson.lastName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PersonPerFieldToJson.lastName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PersonPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$PersonPerFieldToJson.lastName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PersonFieldMap['firstName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$PersonFieldMap['lastName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PersonDocumentSnapshot extends FirestoreDocumentSnapshot<Person> {
  PersonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Person> snapshot;

  @override
  PersonDocumentReference get reference {
    return PersonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Person? data;
}

class PersonQuerySnapshot
    extends FirestoreQuerySnapshot<Person, PersonQueryDocumentSnapshot> {
  PersonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory PersonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Person> snapshot,
  ) {
    final docs = snapshot.docs.map(PersonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        PersonDocumentSnapshot._,
      );
    }).toList();

    return PersonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<PersonDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PersonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<PersonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Person> snapshot;

  @override
  final List<PersonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PersonDocumentSnapshot>> docChanges;
}

class PersonQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Person>
    implements PersonDocumentSnapshot {
  PersonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Person> snapshot;

  @override
  final Person data;

  @override
  PersonDocumentReference get reference {
    return PersonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PublicRedirectedCollectionReference
    implements
        PublicRedirectedQuery,
        FirestoreCollectionReference<PublicRedirected,
            PublicRedirectedQuerySnapshot> {
  factory PublicRedirectedCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$PublicRedirectedCollectionReference;

  static PublicRedirected fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return PublicRedirected.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    PublicRedirected value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<PublicRedirected> get reference;

  @override
  PublicRedirectedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PublicRedirectedDocumentReference> add(PublicRedirected value);
}

class _$PublicRedirectedCollectionReference extends _$PublicRedirectedQuery
    implements PublicRedirectedCollectionReference {
  factory _$PublicRedirectedCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PublicRedirectedCollectionReference._(
      firestore.collection('freezed-test').withConverter(
            fromFirestore: PublicRedirectedCollectionReference.fromFirestore,
            toFirestore: PublicRedirectedCollectionReference.toFirestore,
          ),
    );
  }

  _$PublicRedirectedCollectionReference._(
    CollectionReference<PublicRedirected> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<PublicRedirected> get reference =>
      super.reference as CollectionReference<PublicRedirected>;

  @override
  PublicRedirectedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PublicRedirectedDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<PublicRedirectedDocumentReference> add(PublicRedirected value) {
    return reference
        .add(value)
        .then((ref) => PublicRedirectedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PublicRedirectedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PublicRedirectedDocumentReference
    extends FirestoreDocumentReference<PublicRedirected,
        PublicRedirectedDocumentSnapshot> {
  factory PublicRedirectedDocumentReference(
          DocumentReference<PublicRedirected> reference) =
      _$PublicRedirectedDocumentReference;

  DocumentReference<PublicRedirected> get reference;

  /// A reference to the [PublicRedirectedCollectionReference] containing this document.
  PublicRedirectedCollectionReference get parent {
    return _$PublicRedirectedCollectionReference(reference.firestore);
  }

  @override
  Stream<PublicRedirectedDocumentSnapshot> snapshots();

  @override
  Future<PublicRedirectedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String value,
    FieldValue valueFieldValue,
  });
}

class _$PublicRedirectedDocumentReference extends FirestoreDocumentReference<
        PublicRedirected, PublicRedirectedDocumentSnapshot>
    implements PublicRedirectedDocumentReference {
  _$PublicRedirectedDocumentReference(this.reference);

  @override
  final DocumentReference<PublicRedirected> reference;

  /// A reference to the [PublicRedirectedCollectionReference] containing this document.
  PublicRedirectedCollectionReference get parent {
    return _$PublicRedirectedCollectionReference(reference.firestore);
  }

  @override
  Stream<PublicRedirectedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PublicRedirectedDocumentSnapshot._);
  }

  @override
  Future<PublicRedirectedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PublicRedirectedDocumentSnapshot._);
  }

  @override
  Future<PublicRedirectedDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(PublicRedirectedDocumentSnapshot._);
  }

  Future<void> set(
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!:
            _$PublicRedirected2PerFieldToJson.value(value as String),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!:
            _$PublicRedirected2PerFieldToJson.value(value as String),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!:
            _$PublicRedirected2PerFieldToJson.value(value as String),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PublicRedirectedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PublicRedirectedQuery
    implements QueryReference<PublicRedirected, PublicRedirectedQuerySnapshot> {
  @override
  PublicRedirectedQuery limit(int limit);

  @override
  PublicRedirectedQuery limitToLast(int limit);

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
  /// ```
  PublicRedirectedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PublicRedirectedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PublicRedirectedQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  PublicRedirectedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });

  PublicRedirectedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });

  PublicRedirectedQuery orderByValue({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });
}

class _$PublicRedirectedQuery
    extends QueryReference<PublicRedirected, PublicRedirectedQuerySnapshot>
    implements PublicRedirectedQuery {
  _$PublicRedirectedQuery(
    this._collection, {
    required Query<PublicRedirected> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PublicRedirectedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(PublicRedirectedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<PublicRedirectedQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(PublicRedirectedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PublicRedirectedQuery limit(int limit) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery limitToLast(int limit) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PublicRedirected2FieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PublicRedirected2PerFieldToJson.value(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PublicRedirected2PerFieldToJson.value(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PublicRedirected2PerFieldToJson.value(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PublicRedirected2PerFieldToJson
                .value(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PublicRedirected2PerFieldToJson.value(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PublicRedirected2PerFieldToJson
                .value(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$PublicRedirected2PerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$PublicRedirected2PerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PublicRedirected2FieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PublicRedirectedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PublicRedirectedDocumentSnapshot
    extends FirestoreDocumentSnapshot<PublicRedirected> {
  PublicRedirectedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<PublicRedirected> snapshot;

  @override
  PublicRedirectedDocumentReference get reference {
    return PublicRedirectedDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final PublicRedirected? data;
}

class PublicRedirectedQuerySnapshot extends FirestoreQuerySnapshot<
    PublicRedirected, PublicRedirectedQueryDocumentSnapshot> {
  PublicRedirectedQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory PublicRedirectedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<PublicRedirected> snapshot,
  ) {
    final docs =
        snapshot.docs.map(PublicRedirectedQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        PublicRedirectedDocumentSnapshot._,
      );
    }).toList();

    return PublicRedirectedQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PublicRedirectedDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<PublicRedirected> snapshot;

  @override
  final List<PublicRedirectedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>>
      docChanges;
}

class PublicRedirectedQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<PublicRedirected>
    implements PublicRedirectedDocumentSnapshot {
  PublicRedirectedQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<PublicRedirected> snapshot;

  @override
  final PublicRedirected data;

  @override
  PublicRedirectedDocumentReference get reference {
    return PublicRedirectedDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SimpleFreezedCollectionReference
    implements
        SimpleFreezedQuery,
        FirestoreCollectionReference<SimpleFreezed,
            SimpleFreezedQuerySnapshot> {
  factory SimpleFreezedCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SimpleFreezedCollectionReference;

  static SimpleFreezed fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SimpleFreezed.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SimpleFreezed value,
    SetOptions? options,
  ) {
    return _$SimpleFreezedToJson(value);
  }

  @override
  CollectionReference<SimpleFreezed> get reference;

  @override
  SimpleFreezedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SimpleFreezedDocumentReference> add(SimpleFreezed value);
}

class _$SimpleFreezedCollectionReference extends _$SimpleFreezedQuery
    implements SimpleFreezedCollectionReference {
  factory _$SimpleFreezedCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SimpleFreezedCollectionReference._(
      firestore.collection('freezed-test').withConverter(
            fromFirestore: SimpleFreezedCollectionReference.fromFirestore,
            toFirestore: SimpleFreezedCollectionReference.toFirestore,
          ),
    );
  }

  _$SimpleFreezedCollectionReference._(
    CollectionReference<SimpleFreezed> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SimpleFreezed> get reference =>
      super.reference as CollectionReference<SimpleFreezed>;

  @override
  SimpleFreezedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SimpleFreezedDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SimpleFreezedDocumentReference> add(SimpleFreezed value) {
    return reference
        .add(value)
        .then((ref) => SimpleFreezedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SimpleFreezedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SimpleFreezedDocumentReference
    extends FirestoreDocumentReference<SimpleFreezed,
        SimpleFreezedDocumentSnapshot> {
  factory SimpleFreezedDocumentReference(
          DocumentReference<SimpleFreezed> reference) =
      _$SimpleFreezedDocumentReference;

  DocumentReference<SimpleFreezed> get reference;

  /// A reference to the [SimpleFreezedCollectionReference] containing this document.
  SimpleFreezedCollectionReference get parent {
    return _$SimpleFreezedCollectionReference(reference.firestore);
  }

  @override
  Stream<SimpleFreezedDocumentSnapshot> snapshots();

  @override
  Future<SimpleFreezedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue aFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue aFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue aFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int a,
    FieldValue aFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int a,
    FieldValue aFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int a,
    FieldValue aFieldValue,
  });
}

class _$SimpleFreezedDocumentReference extends FirestoreDocumentReference<
    SimpleFreezed,
    SimpleFreezedDocumentSnapshot> implements SimpleFreezedDocumentReference {
  _$SimpleFreezedDocumentReference(this.reference);

  @override
  final DocumentReference<SimpleFreezed> reference;

  /// A reference to the [SimpleFreezedCollectionReference] containing this document.
  SimpleFreezedCollectionReference get parent {
    return _$SimpleFreezedCollectionReference(reference.firestore);
  }

  @override
  Stream<SimpleFreezedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SimpleFreezedDocumentSnapshot._);
  }

  @override
  Future<SimpleFreezedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SimpleFreezedDocumentSnapshot._);
  }

  @override
  Future<SimpleFreezedDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(SimpleFreezedDocumentSnapshot._);
  }

  Future<void> set(
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue? aFieldValue,
  }) async {
    final json = {
      ..._$SimpleFreezedToJson(model),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue? aFieldValue,
  }) {
    final json = {
      ..._$SimpleFreezedToJson(model),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    SimpleFreezed model, {
    SetOptions? options,
    FieldValue? aFieldValue,
  }) {
    final json = {
      ..._$SimpleFreezedToJson(model),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? a = _sentinel,
    FieldValue? aFieldValue,
  }) async {
    assert(
      a == _sentinel || aFieldValue == null,
      "Cannot specify both a and aFieldValue",
    );
    final json = {
      if (a != _sentinel)
        _$SimpleFreezedFieldMap['a']!:
            _$SimpleFreezedPerFieldToJson.a(a as int),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? a = _sentinel,
    FieldValue? aFieldValue,
  }) {
    assert(
      a == _sentinel || aFieldValue == null,
      "Cannot specify both a and aFieldValue",
    );
    final json = {
      if (a != _sentinel)
        _$SimpleFreezedFieldMap['a']!:
            _$SimpleFreezedPerFieldToJson.a(a as int),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? a = _sentinel,
    FieldValue? aFieldValue,
  }) {
    assert(
      a == _sentinel || aFieldValue == null,
      "Cannot specify both a and aFieldValue",
    );
    final json = {
      if (a != _sentinel)
        _$SimpleFreezedFieldMap['a']!:
            _$SimpleFreezedPerFieldToJson.a(a as int),
      if (aFieldValue != null) _$SimpleFreezedFieldMap['a']!: aFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SimpleFreezedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SimpleFreezedQuery
    implements QueryReference<SimpleFreezed, SimpleFreezedQuerySnapshot> {
  @override
  SimpleFreezedQuery limit(int limit);

  @override
  SimpleFreezedQuery limitToLast(int limit);

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
  /// ```
  SimpleFreezedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SimpleFreezedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  SimpleFreezedQuery whereA({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  SimpleFreezedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  });

  SimpleFreezedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  });

  SimpleFreezedQuery orderByA({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  });
}

class _$SimpleFreezedQuery
    extends QueryReference<SimpleFreezed, SimpleFreezedQuerySnapshot>
    implements SimpleFreezedQuery {
  _$SimpleFreezedQuery(
    this._collection, {
    required Query<SimpleFreezed> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SimpleFreezedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SimpleFreezedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SimpleFreezedQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SimpleFreezedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SimpleFreezedQuery limit(int limit) {
    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SimpleFreezedQuery limitToLast(int limit) {
    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SimpleFreezedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SimpleFreezedQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SimpleFreezedQuery whereA({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SimpleFreezedFieldMap['a']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SimpleFreezedPerFieldToJson.a(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SimpleFreezedPerFieldToJson.a(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$SimpleFreezedPerFieldToJson.a(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SimpleFreezedPerFieldToJson.a(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SimpleFreezedPerFieldToJson.a(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SimpleFreezedPerFieldToJson.a(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$SimpleFreezedPerFieldToJson.a(e)),
        whereNotIn: whereNotIn?.map((e) => _$SimpleFreezedPerFieldToJson.a(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SimpleFreezedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SimpleFreezedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SimpleFreezedQuery orderByA({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SimpleFreezedDocumentSnapshot? startAtDocument,
    SimpleFreezedDocumentSnapshot? endAtDocument,
    SimpleFreezedDocumentSnapshot? endBeforeDocument,
    SimpleFreezedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SimpleFreezedFieldMap['a']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SimpleFreezedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SimpleFreezedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SimpleFreezedDocumentSnapshot
    extends FirestoreDocumentSnapshot<SimpleFreezed> {
  SimpleFreezedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SimpleFreezed> snapshot;

  @override
  SimpleFreezedDocumentReference get reference {
    return SimpleFreezedDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SimpleFreezed? data;
}

class SimpleFreezedQuerySnapshot extends FirestoreQuerySnapshot<SimpleFreezed,
    SimpleFreezedQueryDocumentSnapshot> {
  SimpleFreezedQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SimpleFreezedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SimpleFreezed> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SimpleFreezedQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SimpleFreezedDocumentSnapshot._,
      );
    }).toList();

    return SimpleFreezedQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SimpleFreezedDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SimpleFreezedDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SimpleFreezedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SimpleFreezed> snapshot;

  @override
  final List<SimpleFreezedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SimpleFreezedDocumentSnapshot>> docChanges;
}

class SimpleFreezedQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SimpleFreezed>
    implements SimpleFreezedDocumentSnapshot {
  SimpleFreezedQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SimpleFreezed> snapshot;

  @override
  final SimpleFreezed data;

  @override
  SimpleFreezedDocumentReference get reference {
    return SimpleFreezedDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleFreezed _$SimpleFreezedFromJson(Map<String, dynamic> json) =>
    SimpleFreezed(
      a: (json['a'] as num).toInt(),
    );

const _$SimpleFreezedFieldMap = <String, String>{
  'a': 'a',
};

// ignore: unused_element
abstract class _$SimpleFreezedPerFieldToJson {
  // ignore: unused_element
  static Object? a(int instance) => instance;
}

Map<String, dynamic> _$SimpleFreezedToJson(SimpleFreezed instance) =>
    <String, dynamic>{
      'a': instance.a,
    };

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
      firstName: json['first_name'] as String,
      lastName: json['LAST_NAME'] as String,
    );

const _$PersonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

// ignore: unused_element
abstract class _$PersonPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
}

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'LAST_NAME': instance.lastName,
    };

PublicRedirected2 _$PublicRedirected2FromJson(Map<String, dynamic> json) =>
    PublicRedirected2(
      value: json['value'] as String,
    );

const _$PublicRedirected2FieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$PublicRedirected2PerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$PublicRedirected2ToJson(PublicRedirected2 instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
