// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

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
abstract class IgnoredGetterCollectionReference
    implements
        IgnoredGetterQuery,
        FirestoreCollectionReference<IgnoredGetter,
            IgnoredGetterQuerySnapshot> {
  factory IgnoredGetterCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$IgnoredGetterCollectionReference;

  static IgnoredGetter fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$IgnoredGetterFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    IgnoredGetter value,
    SetOptions? options,
  ) {
    return _$IgnoredGetterToJson(value);
  }

  @override
  CollectionReference<IgnoredGetter> get reference;

  @override
  IgnoredGetterDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<IgnoredGetterDocumentReference> add(IgnoredGetter value);
}

class _$IgnoredGetterCollectionReference extends _$IgnoredGetterQuery
    implements IgnoredGetterCollectionReference {
  factory _$IgnoredGetterCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$IgnoredGetterCollectionReference._(
      firestore.collection('firestore-example-app/test/getter').withConverter(
            fromFirestore: IgnoredGetterCollectionReference.fromFirestore,
            toFirestore: IgnoredGetterCollectionReference.toFirestore,
          ),
    );
  }

  _$IgnoredGetterCollectionReference._(
    CollectionReference<IgnoredGetter> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<IgnoredGetter> get reference =>
      super.reference as CollectionReference<IgnoredGetter>;

  @override
  IgnoredGetterDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return IgnoredGetterDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<IgnoredGetterDocumentReference> add(IgnoredGetter value) {
    return reference
        .add(value)
        .then((ref) => IgnoredGetterDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$IgnoredGetterCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class IgnoredGetterDocumentReference
    extends FirestoreDocumentReference<IgnoredGetter,
        IgnoredGetterDocumentSnapshot> {
  factory IgnoredGetterDocumentReference(
          DocumentReference<IgnoredGetter> reference) =
      _$IgnoredGetterDocumentReference;

  DocumentReference<IgnoredGetter> get reference;

  /// A reference to the [IgnoredGetterCollectionReference] containing this document.
  IgnoredGetterCollectionReference get parent {
    return _$IgnoredGetterCollectionReference(reference.firestore);
  }

  @override
  Stream<IgnoredGetterDocumentSnapshot> snapshots();

  @override
  Future<IgnoredGetterDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$IgnoredGetterDocumentReference extends FirestoreDocumentReference<
    IgnoredGetter,
    IgnoredGetterDocumentSnapshot> implements IgnoredGetterDocumentReference {
  _$IgnoredGetterDocumentReference(this.reference);

  @override
  final DocumentReference<IgnoredGetter> reference;

  /// A reference to the [IgnoredGetterCollectionReference] containing this document.
  IgnoredGetterCollectionReference get parent {
    return _$IgnoredGetterCollectionReference(reference.firestore);
  }

  @override
  Stream<IgnoredGetterDocumentSnapshot> snapshots() {
    return reference.snapshots().map(IgnoredGetterDocumentSnapshot._);
  }

  @override
  Future<IgnoredGetterDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(IgnoredGetterDocumentSnapshot._);
  }

  @override
  Future<IgnoredGetterDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(IgnoredGetterDocumentSnapshot._);
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
        _$IgnoredGetterFieldMap['value']!:
            _$IgnoredGetterPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$IgnoredGetterFieldMap['value']!: valueFieldValue,
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
        _$IgnoredGetterFieldMap['value']!:
            _$IgnoredGetterPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$IgnoredGetterFieldMap['value']!: valueFieldValue,
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
        _$IgnoredGetterFieldMap['value']!:
            _$IgnoredGetterPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$IgnoredGetterFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is IgnoredGetterDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class IgnoredGetterQuery
    implements QueryReference<IgnoredGetter, IgnoredGetterQuerySnapshot> {
  @override
  IgnoredGetterQuery limit(int limit);

  @override
  IgnoredGetterQuery limitToLast(int limit);

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
  IgnoredGetterQuery whereFieldPath(
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

  IgnoredGetterQuery whereDocumentId({
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

  IgnoredGetterQuery whereValue({
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
  IgnoredGetterQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });

  IgnoredGetterQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });

  IgnoredGetterQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });
}

class _$IgnoredGetterQuery
    extends QueryReference<IgnoredGetter, IgnoredGetterQuerySnapshot>
    implements IgnoredGetterQuery {
  _$IgnoredGetterQuery(
    this._collection, {
    required Query<IgnoredGetter> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<IgnoredGetterQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(IgnoredGetterQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<IgnoredGetterQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(IgnoredGetterQuerySnapshot._fromQuerySnapshot);
  }

  @override
  IgnoredGetterQuery limit(int limit) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IgnoredGetterQuery limitToLast(int limit) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IgnoredGetterQuery whereFieldPath(
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
    return _$IgnoredGetterQuery(
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
  IgnoredGetterQuery whereDocumentId({
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
    return _$IgnoredGetterQuery(
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
  IgnoredGetterQuery whereValue({
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
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IgnoredGetterFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$IgnoredGetterPerFieldToJson.value(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$IgnoredGetterPerFieldToJson.value(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$IgnoredGetterPerFieldToJson.value(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$IgnoredGetterPerFieldToJson.value(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$IgnoredGetterPerFieldToJson.value(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$IgnoredGetterPerFieldToJson.value(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$IgnoredGetterPerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$IgnoredGetterPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IgnoredGetterQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
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

    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IgnoredGetterQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
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

    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  IgnoredGetterQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$IgnoredGetterFieldMap['value']!, descending: descending);
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

    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$IgnoredGetterQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class IgnoredGetterDocumentSnapshot
    extends FirestoreDocumentSnapshot<IgnoredGetter> {
  IgnoredGetterDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<IgnoredGetter> snapshot;

  @override
  IgnoredGetterDocumentReference get reference {
    return IgnoredGetterDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final IgnoredGetter? data;
}

class IgnoredGetterQuerySnapshot extends FirestoreQuerySnapshot<IgnoredGetter,
    IgnoredGetterQueryDocumentSnapshot> {
  IgnoredGetterQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory IgnoredGetterQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<IgnoredGetter> snapshot,
  ) {
    final docs =
        snapshot.docs.map(IgnoredGetterQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        IgnoredGetterDocumentSnapshot._,
      );
    }).toList();

    return IgnoredGetterQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    IgnoredGetterDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<IgnoredGetter> snapshot;

  @override
  final List<IgnoredGetterQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>> docChanges;
}

class IgnoredGetterQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<IgnoredGetter>
    implements IgnoredGetterDocumentSnapshot {
  IgnoredGetterQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<IgnoredGetter> snapshot;

  @override
  final IgnoredGetter data;

  @override
  IgnoredGetterDocumentReference get reference {
    return IgnoredGetterDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ModelCollectionReference
    implements
        ModelQuery,
        FirestoreCollectionReference<Model, ModelQuerySnapshot> {
  factory ModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ModelCollectionReference;

  static Model fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Model value,
    SetOptions? options,
  ) {
    return _$ModelToJson(value);
  }

  @override
  CollectionReference<Model> get reference;

  @override
  ModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ModelDocumentReference> add(Model value);
}

class _$ModelCollectionReference extends _$ModelQuery
    implements ModelCollectionReference {
  factory _$ModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ModelCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: ModelCollectionReference.fromFirestore,
            toFirestore: ModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ModelCollectionReference._(
    CollectionReference<Model> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Model> get reference =>
      super.reference as CollectionReference<Model>;

  @override
  ModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ModelDocumentReference> add(Model value) {
    return reference.add(value).then((ref) => ModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ModelDocumentReference
    extends FirestoreDocumentReference<Model, ModelDocumentSnapshot> {
  factory ModelDocumentReference(DocumentReference<Model> reference) =
      _$ModelDocumentReference;

  DocumentReference<Model> get reference;

  /// A reference to the [ModelCollectionReference] containing this document.
  ModelCollectionReference get parent {
    return _$ModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ModelDocumentSnapshot> snapshots();

  @override
  Future<ModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

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

class _$ModelDocumentReference
    extends FirestoreDocumentReference<Model, ModelDocumentSnapshot>
    implements ModelDocumentReference {
  _$ModelDocumentReference(this.reference);

  @override
  final DocumentReference<Model> reference;

  /// A reference to the [ModelCollectionReference] containing this document.
  ModelCollectionReference get parent {
    return _$ModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ModelDocumentSnapshot._);
  }

  @override
  Future<ModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ModelDocumentSnapshot._);
  }

  @override
  Future<ModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ModelDocumentSnapshot._);
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
        _$ModelFieldMap['value']!: _$ModelPerFieldToJson.value(value as String),
      if (valueFieldValue != null) _$ModelFieldMap['value']!: valueFieldValue,
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
        _$ModelFieldMap['value']!: _$ModelPerFieldToJson.value(value as String),
      if (valueFieldValue != null) _$ModelFieldMap['value']!: valueFieldValue,
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
        _$ModelFieldMap['value']!: _$ModelPerFieldToJson.value(value as String),
      if (valueFieldValue != null) _$ModelFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ModelQuery implements QueryReference<Model, ModelQuerySnapshot> {
  @override
  ModelQuery limit(int limit);

  @override
  ModelQuery limitToLast(int limit);

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
  ModelQuery whereFieldPath(
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

  ModelQuery whereDocumentId({
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

  ModelQuery whereValue({
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
  ModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });

  ModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });

  ModelQuery orderByValue({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ModelQuery extends QueryReference<Model, ModelQuerySnapshot>
    implements ModelQuery {
  _$ModelQuery(
    this._collection, {
    required Query<Model> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ModelQuery limit(int limit) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ModelQuery limitToLast(int limit) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ModelQuery whereFieldPath(
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
    return _$ModelQuery(
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
  ModelQuery whereDocumentId({
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
    return _$ModelQuery(
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
  ModelQuery whereValue({
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
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ModelFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ModelPerFieldToJson.value(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ModelPerFieldToJson.value(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ModelPerFieldToJson.value(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ModelPerFieldToJson.value(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ModelPerFieldToJson.value(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ModelPerFieldToJson.value(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ModelPerFieldToJson.value(e)),
        whereNotIn: whereNotIn?.map((e) => _$ModelPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
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

    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
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

    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ModelQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ModelFieldMap['value']!,
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

    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ModelDocumentSnapshot extends FirestoreDocumentSnapshot<Model> {
  ModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Model> snapshot;

  @override
  ModelDocumentReference get reference {
    return ModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Model? data;
}

class ModelQuerySnapshot
    extends FirestoreQuerySnapshot<Model, ModelQueryDocumentSnapshot> {
  ModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Model> snapshot,
  ) {
    final docs = snapshot.docs.map(ModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ModelDocumentSnapshot._,
      );
    }).toList();

    return ModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Model> snapshot;

  @override
  final List<ModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ModelDocumentSnapshot>> docChanges;
}

class ModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Model>
    implements ModelDocumentSnapshot {
  ModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Model> snapshot;

  @override
  final Model data;

  @override
  ModelDocumentReference get reference {
    return ModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class NestedCollectionReference
    implements
        NestedQuery,
        FirestoreCollectionReference<Nested, NestedQuerySnapshot> {
  factory NestedCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$NestedCollectionReference;

  static Nested fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Nested.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Nested value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Nested> get reference;

  @override
  NestedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<NestedDocumentReference> add(Nested value);
}

class _$NestedCollectionReference extends _$NestedQuery
    implements NestedCollectionReference {
  factory _$NestedCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$NestedCollectionReference._(
      firestore.collection('nested').withConverter(
            fromFirestore: NestedCollectionReference.fromFirestore,
            toFirestore: NestedCollectionReference.toFirestore,
          ),
    );
  }

  _$NestedCollectionReference._(
    CollectionReference<Nested> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Nested> get reference =>
      super.reference as CollectionReference<Nested>;

  @override
  NestedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return NestedDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<NestedDocumentReference> add(Nested value) {
    return reference.add(value).then((ref) => NestedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot> {
  factory NestedDocumentReference(DocumentReference<Nested> reference) =
      _$NestedDocumentReference;

  DocumentReference<Nested> get reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots();

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });
}

class _$NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot>
    implements NestedDocumentReference {
  _$NestedDocumentReference(this.reference);

  @override
  final DocumentReference<Nested> reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(NestedDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$NestedFieldMap['value']!:
            _$NestedPerFieldToJson.value(value as Nested?),
      if (valueFieldValue != null) _$NestedFieldMap['value']!: valueFieldValue,
      if (simple != _sentinel)
        _$NestedFieldMap['simple']!:
            _$NestedPerFieldToJson.simple(simple as int?),
      if (simpleFieldValue != null)
        _$NestedFieldMap['simple']!: simpleFieldValue,
      if (valueList != _sentinel)
        _$NestedFieldMap['valueList']!:
            _$NestedPerFieldToJson.valueList(valueList as List<Nested>?),
      if (valueListFieldValue != null)
        _$NestedFieldMap['valueList']!: valueListFieldValue,
      if (boolList != _sentinel)
        _$NestedFieldMap['boolList']!:
            _$NestedPerFieldToJson.boolList(boolList as List<bool>?),
      if (boolListFieldValue != null)
        _$NestedFieldMap['boolList']!: boolListFieldValue,
      if (stringList != _sentinel)
        _$NestedFieldMap['stringList']!:
            _$NestedPerFieldToJson.stringList(stringList as List<String>?),
      if (stringListFieldValue != null)
        _$NestedFieldMap['stringList']!: stringListFieldValue,
      if (numList != _sentinel)
        _$NestedFieldMap['numList']!:
            _$NestedPerFieldToJson.numList(numList as List<num>?),
      if (numListFieldValue != null)
        _$NestedFieldMap['numList']!: numListFieldValue,
      if (objectList != _sentinel)
        _$NestedFieldMap['objectList']!:
            _$NestedPerFieldToJson.objectList(objectList as List<Object?>?),
      if (objectListFieldValue != null)
        _$NestedFieldMap['objectList']!: objectListFieldValue,
      if (dynamicList != _sentinel)
        _$NestedFieldMap['dynamicList']!:
            _$NestedPerFieldToJson.dynamicList(dynamicList as List<dynamic>?),
      if (dynamicListFieldValue != null)
        _$NestedFieldMap['dynamicList']!: dynamicListFieldValue,
      if (boolSet != _sentinel)
        _$NestedFieldMap['boolSet']!:
            _$NestedPerFieldToJson.boolSet(boolSet as Set<bool>?),
      if (boolSetFieldValue != null)
        _$NestedFieldMap['boolSet']!: boolSetFieldValue,
      if (enumValue != _sentinel)
        _$NestedFieldMap['enumValue']!:
            _$NestedPerFieldToJson.enumValue(enumValue as TestEnum),
      if (enumValueFieldValue != null)
        _$NestedFieldMap['enumValue']!: enumValueFieldValue,
      if (nullableEnumValue != _sentinel)
        _$NestedFieldMap['nullableEnumValue']!: _$NestedPerFieldToJson
            .nullableEnumValue(nullableEnumValue as TestEnum?),
      if (nullableEnumValueFieldValue != null)
        _$NestedFieldMap['nullableEnumValue']!: nullableEnumValueFieldValue,
      if (enumList != _sentinel)
        _$NestedFieldMap['enumList']!:
            _$NestedPerFieldToJson.enumList(enumList as List<TestEnum>),
      if (enumListFieldValue != null)
        _$NestedFieldMap['enumList']!: enumListFieldValue,
      if (nullableEnumList != _sentinel)
        _$NestedFieldMap['nullableEnumList']!: _$NestedPerFieldToJson
            .nullableEnumList(nullableEnumList as List<TestEnum>?),
      if (nullableEnumListFieldValue != null)
        _$NestedFieldMap['nullableEnumList']!: nullableEnumListFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$NestedFieldMap['value']!:
            _$NestedPerFieldToJson.value(value as Nested?),
      if (valueFieldValue != null) _$NestedFieldMap['value']!: valueFieldValue,
      if (simple != _sentinel)
        _$NestedFieldMap['simple']!:
            _$NestedPerFieldToJson.simple(simple as int?),
      if (simpleFieldValue != null)
        _$NestedFieldMap['simple']!: simpleFieldValue,
      if (valueList != _sentinel)
        _$NestedFieldMap['valueList']!:
            _$NestedPerFieldToJson.valueList(valueList as List<Nested>?),
      if (valueListFieldValue != null)
        _$NestedFieldMap['valueList']!: valueListFieldValue,
      if (boolList != _sentinel)
        _$NestedFieldMap['boolList']!:
            _$NestedPerFieldToJson.boolList(boolList as List<bool>?),
      if (boolListFieldValue != null)
        _$NestedFieldMap['boolList']!: boolListFieldValue,
      if (stringList != _sentinel)
        _$NestedFieldMap['stringList']!:
            _$NestedPerFieldToJson.stringList(stringList as List<String>?),
      if (stringListFieldValue != null)
        _$NestedFieldMap['stringList']!: stringListFieldValue,
      if (numList != _sentinel)
        _$NestedFieldMap['numList']!:
            _$NestedPerFieldToJson.numList(numList as List<num>?),
      if (numListFieldValue != null)
        _$NestedFieldMap['numList']!: numListFieldValue,
      if (objectList != _sentinel)
        _$NestedFieldMap['objectList']!:
            _$NestedPerFieldToJson.objectList(objectList as List<Object?>?),
      if (objectListFieldValue != null)
        _$NestedFieldMap['objectList']!: objectListFieldValue,
      if (dynamicList != _sentinel)
        _$NestedFieldMap['dynamicList']!:
            _$NestedPerFieldToJson.dynamicList(dynamicList as List<dynamic>?),
      if (dynamicListFieldValue != null)
        _$NestedFieldMap['dynamicList']!: dynamicListFieldValue,
      if (boolSet != _sentinel)
        _$NestedFieldMap['boolSet']!:
            _$NestedPerFieldToJson.boolSet(boolSet as Set<bool>?),
      if (boolSetFieldValue != null)
        _$NestedFieldMap['boolSet']!: boolSetFieldValue,
      if (enumValue != _sentinel)
        _$NestedFieldMap['enumValue']!:
            _$NestedPerFieldToJson.enumValue(enumValue as TestEnum),
      if (enumValueFieldValue != null)
        _$NestedFieldMap['enumValue']!: enumValueFieldValue,
      if (nullableEnumValue != _sentinel)
        _$NestedFieldMap['nullableEnumValue']!: _$NestedPerFieldToJson
            .nullableEnumValue(nullableEnumValue as TestEnum?),
      if (nullableEnumValueFieldValue != null)
        _$NestedFieldMap['nullableEnumValue']!: nullableEnumValueFieldValue,
      if (enumList != _sentinel)
        _$NestedFieldMap['enumList']!:
            _$NestedPerFieldToJson.enumList(enumList as List<TestEnum>),
      if (enumListFieldValue != null)
        _$NestedFieldMap['enumList']!: enumListFieldValue,
      if (nullableEnumList != _sentinel)
        _$NestedFieldMap['nullableEnumList']!: _$NestedPerFieldToJson
            .nullableEnumList(nullableEnumList as List<TestEnum>?),
      if (nullableEnumListFieldValue != null)
        _$NestedFieldMap['nullableEnumList']!: nullableEnumListFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$NestedFieldMap['value']!:
            _$NestedPerFieldToJson.value(value as Nested?),
      if (valueFieldValue != null) _$NestedFieldMap['value']!: valueFieldValue,
      if (simple != _sentinel)
        _$NestedFieldMap['simple']!:
            _$NestedPerFieldToJson.simple(simple as int?),
      if (simpleFieldValue != null)
        _$NestedFieldMap['simple']!: simpleFieldValue,
      if (valueList != _sentinel)
        _$NestedFieldMap['valueList']!:
            _$NestedPerFieldToJson.valueList(valueList as List<Nested>?),
      if (valueListFieldValue != null)
        _$NestedFieldMap['valueList']!: valueListFieldValue,
      if (boolList != _sentinel)
        _$NestedFieldMap['boolList']!:
            _$NestedPerFieldToJson.boolList(boolList as List<bool>?),
      if (boolListFieldValue != null)
        _$NestedFieldMap['boolList']!: boolListFieldValue,
      if (stringList != _sentinel)
        _$NestedFieldMap['stringList']!:
            _$NestedPerFieldToJson.stringList(stringList as List<String>?),
      if (stringListFieldValue != null)
        _$NestedFieldMap['stringList']!: stringListFieldValue,
      if (numList != _sentinel)
        _$NestedFieldMap['numList']!:
            _$NestedPerFieldToJson.numList(numList as List<num>?),
      if (numListFieldValue != null)
        _$NestedFieldMap['numList']!: numListFieldValue,
      if (objectList != _sentinel)
        _$NestedFieldMap['objectList']!:
            _$NestedPerFieldToJson.objectList(objectList as List<Object?>?),
      if (objectListFieldValue != null)
        _$NestedFieldMap['objectList']!: objectListFieldValue,
      if (dynamicList != _sentinel)
        _$NestedFieldMap['dynamicList']!:
            _$NestedPerFieldToJson.dynamicList(dynamicList as List<dynamic>?),
      if (dynamicListFieldValue != null)
        _$NestedFieldMap['dynamicList']!: dynamicListFieldValue,
      if (boolSet != _sentinel)
        _$NestedFieldMap['boolSet']!:
            _$NestedPerFieldToJson.boolSet(boolSet as Set<bool>?),
      if (boolSetFieldValue != null)
        _$NestedFieldMap['boolSet']!: boolSetFieldValue,
      if (enumValue != _sentinel)
        _$NestedFieldMap['enumValue']!:
            _$NestedPerFieldToJson.enumValue(enumValue as TestEnum),
      if (enumValueFieldValue != null)
        _$NestedFieldMap['enumValue']!: enumValueFieldValue,
      if (nullableEnumValue != _sentinel)
        _$NestedFieldMap['nullableEnumValue']!: _$NestedPerFieldToJson
            .nullableEnumValue(nullableEnumValue as TestEnum?),
      if (nullableEnumValueFieldValue != null)
        _$NestedFieldMap['nullableEnumValue']!: nullableEnumValueFieldValue,
      if (enumList != _sentinel)
        _$NestedFieldMap['enumList']!:
            _$NestedPerFieldToJson.enumList(enumList as List<TestEnum>),
      if (enumListFieldValue != null)
        _$NestedFieldMap['enumList']!: enumListFieldValue,
      if (nullableEnumList != _sentinel)
        _$NestedFieldMap['nullableEnumList']!: _$NestedPerFieldToJson
            .nullableEnumList(nullableEnumList as List<TestEnum>?),
      if (nullableEnumListFieldValue != null)
        _$NestedFieldMap['nullableEnumList']!: nullableEnumListFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is NestedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class NestedQuery
    implements QueryReference<Nested, NestedQuerySnapshot> {
  @override
  NestedQuery limit(int limit);

  @override
  NestedQuery limitToLast(int limit);

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
  NestedQuery whereFieldPath(
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

  NestedQuery whereDocumentId({
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

  NestedQuery whereValue({
    Nested? isEqualTo,
    Nested? isNotEqualTo,
    Nested? isLessThan,
    Nested? isLessThanOrEqualTo,
    Nested? isGreaterThan,
    Nested? isGreaterThanOrEqualTo,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereSimple({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereValueList({
    List<Nested>? isEqualTo,
    List<Nested>? isNotEqualTo,
    List<Nested>? isLessThan,
    List<Nested>? isLessThanOrEqualTo,
    List<Nested>? isGreaterThan,
    List<Nested>? isGreaterThanOrEqualTo,
    Nested? arrayContains,
    List<Nested>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereBoolList({
    List<bool>? isEqualTo,
    List<bool>? isNotEqualTo,
    List<bool>? isLessThan,
    List<bool>? isLessThanOrEqualTo,
    List<bool>? isGreaterThan,
    List<bool>? isGreaterThanOrEqualTo,
    bool? arrayContains,
    List<bool>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereStringList({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereNumList({
    List<num>? isEqualTo,
    List<num>? isNotEqualTo,
    List<num>? isLessThan,
    List<num>? isLessThanOrEqualTo,
    List<num>? isGreaterThan,
    List<num>? isGreaterThanOrEqualTo,
    num? arrayContains,
    List<num>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereObjectList({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereDynamicList({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereBoolSet({
    Set<bool>? isEqualTo,
    Set<bool>? isNotEqualTo,
    Set<bool>? isLessThan,
    Set<bool>? isLessThanOrEqualTo,
    Set<bool>? isGreaterThan,
    Set<bool>? isGreaterThanOrEqualTo,
    bool? arrayContains,
    Set<bool>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereEnumValue({
    TestEnum? isEqualTo,
    TestEnum? isNotEqualTo,
    TestEnum? isLessThan,
    TestEnum? isLessThanOrEqualTo,
    TestEnum? isGreaterThan,
    TestEnum? isGreaterThanOrEqualTo,
    List<TestEnum>? whereIn,
    List<TestEnum>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereNullableEnumValue({
    TestEnum? isEqualTo,
    TestEnum? isNotEqualTo,
    TestEnum? isLessThan,
    TestEnum? isLessThanOrEqualTo,
    TestEnum? isGreaterThan,
    TestEnum? isGreaterThanOrEqualTo,
    List<TestEnum?>? whereIn,
    List<TestEnum?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereEnumList({
    List<TestEnum>? isEqualTo,
    List<TestEnum>? isNotEqualTo,
    List<TestEnum>? isLessThan,
    List<TestEnum>? isLessThanOrEqualTo,
    List<TestEnum>? isGreaterThan,
    List<TestEnum>? isGreaterThanOrEqualTo,
    TestEnum? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereNullableEnumList({
    List<TestEnum>? isEqualTo,
    List<TestEnum>? isNotEqualTo,
    List<TestEnum>? isLessThan,
    List<TestEnum>? isLessThanOrEqualTo,
    List<TestEnum>? isGreaterThan,
    List<TestEnum>? isGreaterThanOrEqualTo,
    TestEnum? arrayContains,
    List<TestEnum>? arrayContainsAny,
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
  NestedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValue({
    bool descending = false,
    Nested? startAt,
    Nested? startAfter,
    Nested? endAt,
    Nested? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderBySimple({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValueList({
    bool descending = false,
    List<Nested>? startAt,
    List<Nested>? startAfter,
    List<Nested>? endAt,
    List<Nested>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByBoolList({
    bool descending = false,
    List<bool>? startAt,
    List<bool>? startAfter,
    List<bool>? endAt,
    List<bool>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByStringList({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNumList({
    bool descending = false,
    List<num>? startAt,
    List<num>? startAfter,
    List<num>? endAt,
    List<num>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByObjectList({
    bool descending = false,
    List<Object?>? startAt,
    List<Object?>? startAfter,
    List<Object?>? endAt,
    List<Object?>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByDynamicList({
    bool descending = false,
    List<dynamic>? startAt,
    List<dynamic>? startAfter,
    List<dynamic>? endAt,
    List<dynamic>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByBoolSet({
    bool descending = false,
    Set<bool>? startAt,
    Set<bool>? startAfter,
    Set<bool>? endAt,
    Set<bool>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByEnumValue({
    bool descending = false,
    TestEnum startAt,
    TestEnum startAfter,
    TestEnum endAt,
    TestEnum endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNullableEnumValue({
    bool descending = false,
    TestEnum? startAt,
    TestEnum? startAfter,
    TestEnum? endAt,
    TestEnum? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByEnumList({
    bool descending = false,
    List<TestEnum> startAt,
    List<TestEnum> startAfter,
    List<TestEnum> endAt,
    List<TestEnum> endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNullableEnumList({
    bool descending = false,
    List<TestEnum>? startAt,
    List<TestEnum>? startAfter,
    List<TestEnum>? endAt,
    List<TestEnum>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });
}

class _$NestedQuery extends QueryReference<Nested, NestedQuerySnapshot>
    implements NestedQuery {
  _$NestedQuery(
    this._collection, {
    required Query<Nested> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<NestedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<NestedQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  NestedQuery limit(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery limitToLast(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereFieldPath(
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
    return _$NestedQuery(
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
  NestedQuery whereDocumentId({
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
    return _$NestedQuery(
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
  NestedQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.value(isEqualTo as Nested?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.value(isNotEqualTo as Nested?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.value(isLessThan as Nested?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson.value(isLessThanOrEqualTo as Nested?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.value(isGreaterThan as Nested?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson.value(isGreaterThanOrEqualTo as Nested?)
            : null,
        whereIn: whereIn?.map((e) => _$NestedPerFieldToJson.value(e)),
        whereNotIn: whereNotIn?.map((e) => _$NestedPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereSimple({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['simple']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.simple(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.simple(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.simple(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson.simple(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.simple(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson.simple(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$NestedPerFieldToJson.simple(e)),
        whereNotIn: whereNotIn?.map((e) => _$NestedPerFieldToJson.simple(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereValueList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Nested>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['valueList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.valueList(isEqualTo as List<Nested>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.valueList(isNotEqualTo as List<Nested>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.valueList(isLessThan as List<Nested>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .valueList(isLessThanOrEqualTo as List<Nested>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.valueList(isGreaterThan as List<Nested>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .valueList(isGreaterThanOrEqualTo as List<Nested>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.valueList([arrayContains as Nested])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.valueList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereBoolList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<bool>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['boolList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.boolList(isEqualTo as List<bool>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.boolList(isNotEqualTo as List<bool>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.boolList(isLessThan as List<bool>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .boolList(isLessThanOrEqualTo as List<bool>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.boolList(isGreaterThan as List<bool>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .boolList(isGreaterThanOrEqualTo as List<bool>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.boolList([arrayContains as bool])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.boolList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereStringList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['stringList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.stringList(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.stringList(isNotEqualTo as List<String>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.stringList(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .stringList(isLessThanOrEqualTo as List<String>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.stringList(isGreaterThan as List<String>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .stringList(isGreaterThanOrEqualTo as List<String>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.stringList([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.stringList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<num>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['numList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.numList(isEqualTo as List<num>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.numList(isNotEqualTo as List<num>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.numList(isLessThan as List<num>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson.numList(isLessThanOrEqualTo as List<num>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.numList(isGreaterThan as List<num>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .numList(isGreaterThanOrEqualTo as List<num>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.numList([arrayContains as num]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.numList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereObjectList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['objectList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.objectList(isEqualTo as List<Object?>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.objectList(isNotEqualTo as List<Object?>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.objectList(isLessThan as List<Object?>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .objectList(isLessThanOrEqualTo as List<Object?>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.objectList(isGreaterThan as List<Object?>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .objectList(isGreaterThanOrEqualTo as List<Object?>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.objectList([arrayContains]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.objectList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereDynamicList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<dynamic>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['dynamicList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.dynamicList(isEqualTo as List<dynamic>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.dynamicList(isNotEqualTo as List<dynamic>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.dynamicList(isLessThan as List<dynamic>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .dynamicList(isLessThanOrEqualTo as List<dynamic>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson
                .dynamicList(isGreaterThan as List<dynamic>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .dynamicList(isGreaterThanOrEqualTo as List<dynamic>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.dynamicList([arrayContains as dynamic])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.dynamicList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereBoolSet({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    Set<bool>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['boolSet']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.boolSet(isEqualTo as Set<bool>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.boolSet(isNotEqualTo as Set<bool>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.boolSet(isLessThan as Set<bool>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson.boolSet(isLessThanOrEqualTo as Set<bool>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.boolSet(isGreaterThan as Set<bool>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .boolSet(isGreaterThanOrEqualTo as Set<bool>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.boolSet({arrayContains as bool})
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.boolSet(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereEnumValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<TestEnum>? whereIn,
    List<TestEnum>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['enumValue']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.enumValue(isEqualTo as TestEnum)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.enumValue(isNotEqualTo as TestEnum)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.enumValue(isLessThan as TestEnum)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson.enumValue(isLessThanOrEqualTo as TestEnum)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.enumValue(isGreaterThan as TestEnum)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .enumValue(isGreaterThanOrEqualTo as TestEnum)
            : null,
        whereIn: whereIn?.map((e) => _$NestedPerFieldToJson.enumValue(e)),
        whereNotIn: whereNotIn?.map((e) => _$NestedPerFieldToJson.enumValue(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNullableEnumValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<TestEnum?>? whereIn,
    List<TestEnum?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['nullableEnumValue']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.nullableEnumValue(isEqualTo as TestEnum?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson
                .nullableEnumValue(isNotEqualTo as TestEnum?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.nullableEnumValue(isLessThan as TestEnum?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .nullableEnumValue(isLessThanOrEqualTo as TestEnum?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson
                .nullableEnumValue(isGreaterThan as TestEnum?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .nullableEnumValue(isGreaterThanOrEqualTo as TestEnum?)
            : null,
        whereIn:
            whereIn?.map((e) => _$NestedPerFieldToJson.nullableEnumValue(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$NestedPerFieldToJson.nullableEnumValue(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereEnumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['enumList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson.enumList(isEqualTo as List<TestEnum>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson.enumList(isNotEqualTo as List<TestEnum>)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson.enumList(isLessThan as List<TestEnum>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .enumList(isLessThanOrEqualTo as List<TestEnum>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson.enumList(isGreaterThan as List<TestEnum>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .enumList(isGreaterThanOrEqualTo as List<TestEnum>)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson.enumList([arrayContains as TestEnum])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.enumList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNullableEnumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['nullableEnumList']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$NestedPerFieldToJson
                .nullableEnumList(isEqualTo as List<TestEnum>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$NestedPerFieldToJson
                .nullableEnumList(isNotEqualTo as List<TestEnum>?)
            : null,
        isLessThan: isLessThan != null
            ? _$NestedPerFieldToJson
                .nullableEnumList(isLessThan as List<TestEnum>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .nullableEnumList(isLessThanOrEqualTo as List<TestEnum>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NestedPerFieldToJson
                .nullableEnumList(isGreaterThan as List<TestEnum>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NestedPerFieldToJson
                .nullableEnumList(isGreaterThanOrEqualTo as List<TestEnum>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$NestedPerFieldToJson
                    .nullableEnumList([arrayContains as TestEnum]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NestedPerFieldToJson.nullableEnumList(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['value']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderBySimple({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['simple']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByValueList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['valueList']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByBoolList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['boolList']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByStringList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['stringList']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['numList']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByObjectList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['objectList']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByDynamicList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['dynamicList']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByBoolSet({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['boolSet']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByEnumValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['enumValue']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNullableEnumValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$NestedFieldMap['nullableEnumValue']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByEnumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['enumList']!,
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNullableEnumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['nullableEnumList']!, descending: descending);
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

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class NestedDocumentSnapshot extends FirestoreDocumentSnapshot<Nested> {
  NestedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Nested> snapshot;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Nested? data;
}

class NestedQuerySnapshot
    extends FirestoreQuerySnapshot<Nested, NestedQueryDocumentSnapshot> {
  NestedQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory NestedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Nested> snapshot,
  ) {
    final docs = snapshot.docs.map(NestedQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        NestedDocumentSnapshot._,
      );
    }).toList();

    return NestedQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<NestedDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    NestedDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<NestedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Nested> snapshot;

  @override
  final List<NestedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<NestedDocumentSnapshot>> docChanges;
}

class NestedQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Nested>
    implements NestedDocumentSnapshot {
  NestedQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Nested> snapshot;

  @override
  final Nested data;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class EmptyModelCollectionReference
    implements
        EmptyModelQuery,
        FirestoreCollectionReference<EmptyModel, EmptyModelQuerySnapshot> {
  factory EmptyModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$EmptyModelCollectionReference;

  static EmptyModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return EmptyModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    EmptyModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<EmptyModel> get reference;

  @override
  EmptyModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<EmptyModelDocumentReference> add(EmptyModel value);
}

class _$EmptyModelCollectionReference extends _$EmptyModelQuery
    implements EmptyModelCollectionReference {
  factory _$EmptyModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$EmptyModelCollectionReference._(
      firestore.collection('config').withConverter(
            fromFirestore: EmptyModelCollectionReference.fromFirestore,
            toFirestore: EmptyModelCollectionReference.toFirestore,
          ),
    );
  }

  _$EmptyModelCollectionReference._(
    CollectionReference<EmptyModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<EmptyModel> get reference =>
      super.reference as CollectionReference<EmptyModel>;

  @override
  EmptyModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return EmptyModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<EmptyModelDocumentReference> add(EmptyModel value) {
    return reference.add(value).then((ref) => EmptyModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModel, EmptyModelDocumentSnapshot> {
  factory EmptyModelDocumentReference(DocumentReference<EmptyModel> reference) =
      _$EmptyModelDocumentReference;

  DocumentReference<EmptyModel> get reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots();

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();
}

class _$EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModel, EmptyModelDocumentSnapshot>
    implements EmptyModelDocumentReference {
  _$EmptyModelDocumentReference(this.reference);

  @override
  final DocumentReference<EmptyModel> reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(EmptyModelDocumentSnapshot._);
  }

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(EmptyModelDocumentSnapshot._);
  }

  @override
  Future<EmptyModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(EmptyModelDocumentSnapshot._);
  }

  @override
  bool operator ==(Object other) {
    return other is EmptyModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class EmptyModelQuery
    implements QueryReference<EmptyModel, EmptyModelQuerySnapshot> {
  @override
  EmptyModelQuery limit(int limit);

  @override
  EmptyModelQuery limitToLast(int limit);

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
  EmptyModelQuery whereFieldPath(
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

  EmptyModelQuery whereDocumentId({
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
  EmptyModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });

  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });
}

class _$EmptyModelQuery
    extends QueryReference<EmptyModel, EmptyModelQuerySnapshot>
    implements EmptyModelQuery {
  _$EmptyModelQuery(
    this._collection, {
    required Query<EmptyModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<EmptyModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(EmptyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<EmptyModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(EmptyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  EmptyModelQuery limit(int limit) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EmptyModelQuery limitToLast(int limit) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EmptyModelQuery whereFieldPath(
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
    return _$EmptyModelQuery(
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
  EmptyModelQuery whereDocumentId({
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
    return _$EmptyModelQuery(
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
  EmptyModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
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

    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
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

    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class EmptyModelDocumentSnapshot extends FirestoreDocumentSnapshot<EmptyModel> {
  EmptyModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<EmptyModel> snapshot;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final EmptyModel? data;
}

class EmptyModelQuerySnapshot extends FirestoreQuerySnapshot<EmptyModel,
    EmptyModelQueryDocumentSnapshot> {
  EmptyModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory EmptyModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<EmptyModel> snapshot,
  ) {
    final docs = snapshot.docs.map(EmptyModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        EmptyModelDocumentSnapshot._,
      );
    }).toList();

    return EmptyModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<EmptyModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    EmptyModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<EmptyModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<EmptyModel> snapshot;

  @override
  final List<EmptyModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<EmptyModelDocumentSnapshot>> docChanges;
}

class EmptyModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<EmptyModel>
    implements EmptyModelDocumentSnapshot {
  EmptyModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<EmptyModel> snapshot;

  @override
  final EmptyModel data;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class OptionalJsonCollectionReference
    implements
        OptionalJsonQuery,
        FirestoreCollectionReference<OptionalJson, OptionalJsonQuerySnapshot> {
  factory OptionalJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$OptionalJsonCollectionReference;

  static OptionalJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$OptionalJsonFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    OptionalJson value,
    SetOptions? options,
  ) {
    return _$OptionalJsonToJson(value);
  }

  @override
  CollectionReference<OptionalJson> get reference;

  @override
  OptionalJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<OptionalJsonDocumentReference> add(OptionalJson value);
}

class _$OptionalJsonCollectionReference extends _$OptionalJsonQuery
    implements OptionalJsonCollectionReference {
  factory _$OptionalJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$OptionalJsonCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: OptionalJsonCollectionReference.fromFirestore,
            toFirestore: OptionalJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$OptionalJsonCollectionReference._(
    CollectionReference<OptionalJson> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<OptionalJson> get reference =>
      super.reference as CollectionReference<OptionalJson>;

  @override
  OptionalJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return OptionalJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<OptionalJsonDocumentReference> add(OptionalJson value) {
    return reference
        .add(value)
        .then((ref) => OptionalJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$OptionalJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class OptionalJsonDocumentReference extends FirestoreDocumentReference<
    OptionalJson, OptionalJsonDocumentSnapshot> {
  factory OptionalJsonDocumentReference(
          DocumentReference<OptionalJson> reference) =
      _$OptionalJsonDocumentReference;

  DocumentReference<OptionalJson> get reference;

  /// A reference to the [OptionalJsonCollectionReference] containing this document.
  OptionalJsonCollectionReference get parent {
    return _$OptionalJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<OptionalJsonDocumentSnapshot> snapshots();

  @override
  Future<OptionalJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$OptionalJsonDocumentReference extends FirestoreDocumentReference<
    OptionalJson,
    OptionalJsonDocumentSnapshot> implements OptionalJsonDocumentReference {
  _$OptionalJsonDocumentReference(this.reference);

  @override
  final DocumentReference<OptionalJson> reference;

  /// A reference to the [OptionalJsonCollectionReference] containing this document.
  OptionalJsonCollectionReference get parent {
    return _$OptionalJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<OptionalJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(OptionalJsonDocumentSnapshot._);
  }

  @override
  Future<OptionalJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(OptionalJsonDocumentSnapshot._);
  }

  @override
  Future<OptionalJsonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(OptionalJsonDocumentSnapshot._);
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
        _$OptionalJsonFieldMap['value']!:
            _$OptionalJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$OptionalJsonFieldMap['value']!: valueFieldValue,
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
        _$OptionalJsonFieldMap['value']!:
            _$OptionalJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$OptionalJsonFieldMap['value']!: valueFieldValue,
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
        _$OptionalJsonFieldMap['value']!:
            _$OptionalJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$OptionalJsonFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is OptionalJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class OptionalJsonQuery
    implements QueryReference<OptionalJson, OptionalJsonQuerySnapshot> {
  @override
  OptionalJsonQuery limit(int limit);

  @override
  OptionalJsonQuery limitToLast(int limit);

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
  OptionalJsonQuery whereFieldPath(
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

  OptionalJsonQuery whereDocumentId({
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

  OptionalJsonQuery whereValue({
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
  OptionalJsonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });

  OptionalJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });

  OptionalJsonQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$OptionalJsonQuery
    extends QueryReference<OptionalJson, OptionalJsonQuerySnapshot>
    implements OptionalJsonQuery {
  _$OptionalJsonQuery(
    this._collection, {
    required Query<OptionalJson> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<OptionalJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(OptionalJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<OptionalJsonQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(OptionalJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  OptionalJsonQuery limit(int limit) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  OptionalJsonQuery limitToLast(int limit) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  OptionalJsonQuery whereFieldPath(
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
    return _$OptionalJsonQuery(
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
  OptionalJsonQuery whereDocumentId({
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
    return _$OptionalJsonQuery(
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
  OptionalJsonQuery whereValue({
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
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$OptionalJsonFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$OptionalJsonPerFieldToJson.value(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$OptionalJsonPerFieldToJson.value(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$OptionalJsonPerFieldToJson.value(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$OptionalJsonPerFieldToJson.value(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$OptionalJsonPerFieldToJson.value(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$OptionalJsonPerFieldToJson.value(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$OptionalJsonPerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$OptionalJsonPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  OptionalJsonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
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

    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  OptionalJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
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

    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  OptionalJsonQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$OptionalJsonFieldMap['value']!, descending: descending);
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

    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$OptionalJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class OptionalJsonDocumentSnapshot
    extends FirestoreDocumentSnapshot<OptionalJson> {
  OptionalJsonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<OptionalJson> snapshot;

  @override
  OptionalJsonDocumentReference get reference {
    return OptionalJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final OptionalJson? data;
}

class OptionalJsonQuerySnapshot extends FirestoreQuerySnapshot<OptionalJson,
    OptionalJsonQueryDocumentSnapshot> {
  OptionalJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory OptionalJsonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<OptionalJson> snapshot,
  ) {
    final docs =
        snapshot.docs.map(OptionalJsonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        OptionalJsonDocumentSnapshot._,
      );
    }).toList();

    return OptionalJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<OptionalJsonDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    OptionalJsonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<OptionalJsonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<OptionalJson> snapshot;

  @override
  final List<OptionalJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<OptionalJsonDocumentSnapshot>> docChanges;
}

class OptionalJsonQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<OptionalJson>
    implements OptionalJsonDocumentSnapshot {
  OptionalJsonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<OptionalJson> snapshot;

  @override
  final OptionalJson data;

  @override
  OptionalJsonDocumentReference get reference {
    return OptionalJsonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MixedJsonCollectionReference
    implements
        MixedJsonQuery,
        FirestoreCollectionReference<MixedJson, MixedJsonQuerySnapshot> {
  factory MixedJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MixedJsonCollectionReference;

  static MixedJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MixedJson.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    MixedJson value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<MixedJson> get reference;

  @override
  MixedJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MixedJsonDocumentReference> add(MixedJson value);
}

class _$MixedJsonCollectionReference extends _$MixedJsonQuery
    implements MixedJsonCollectionReference {
  factory _$MixedJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MixedJsonCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: MixedJsonCollectionReference.fromFirestore,
            toFirestore: MixedJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$MixedJsonCollectionReference._(
    CollectionReference<MixedJson> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MixedJson> get reference =>
      super.reference as CollectionReference<MixedJson>;

  @override
  MixedJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MixedJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MixedJsonDocumentReference> add(MixedJson value) {
    return reference.add(value).then((ref) => MixedJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MixedJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MixedJsonDocumentReference
    extends FirestoreDocumentReference<MixedJson, MixedJsonDocumentSnapshot> {
  factory MixedJsonDocumentReference(DocumentReference<MixedJson> reference) =
      _$MixedJsonDocumentReference;

  DocumentReference<MixedJson> get reference;

  /// A reference to the [MixedJsonCollectionReference] containing this document.
  MixedJsonCollectionReference get parent {
    return _$MixedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<MixedJsonDocumentSnapshot> snapshots();

  @override
  Future<MixedJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$MixedJsonDocumentReference
    extends FirestoreDocumentReference<MixedJson, MixedJsonDocumentSnapshot>
    implements MixedJsonDocumentReference {
  _$MixedJsonDocumentReference(this.reference);

  @override
  final DocumentReference<MixedJson> reference;

  /// A reference to the [MixedJsonCollectionReference] containing this document.
  MixedJsonCollectionReference get parent {
    return _$MixedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<MixedJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MixedJsonDocumentSnapshot._);
  }

  @override
  Future<MixedJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MixedJsonDocumentSnapshot._);
  }

  @override
  Future<MixedJsonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MixedJsonDocumentSnapshot._);
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
        _$MixedJsonFieldMap['value']!:
            _$MixedJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$MixedJsonFieldMap['value']!: valueFieldValue,
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
        _$MixedJsonFieldMap['value']!:
            _$MixedJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$MixedJsonFieldMap['value']!: valueFieldValue,
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
        _$MixedJsonFieldMap['value']!:
            _$MixedJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$MixedJsonFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MixedJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MixedJsonQuery
    implements QueryReference<MixedJson, MixedJsonQuerySnapshot> {
  @override
  MixedJsonQuery limit(int limit);

  @override
  MixedJsonQuery limitToLast(int limit);

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
  MixedJsonQuery whereFieldPath(
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

  MixedJsonQuery whereDocumentId({
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

  MixedJsonQuery whereValue({
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
  MixedJsonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });

  MixedJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });

  MixedJsonQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$MixedJsonQuery extends QueryReference<MixedJson, MixedJsonQuerySnapshot>
    implements MixedJsonQuery {
  _$MixedJsonQuery(
    this._collection, {
    required Query<MixedJson> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MixedJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MixedJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MixedJsonQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MixedJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MixedJsonQuery limit(int limit) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MixedJsonQuery limitToLast(int limit) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MixedJsonQuery whereFieldPath(
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
    return _$MixedJsonQuery(
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
  MixedJsonQuery whereDocumentId({
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
    return _$MixedJsonQuery(
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
  MixedJsonQuery whereValue({
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
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MixedJsonFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MixedJsonPerFieldToJson.value(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MixedJsonPerFieldToJson.value(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$MixedJsonPerFieldToJson.value(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MixedJsonPerFieldToJson.value(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MixedJsonPerFieldToJson.value(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MixedJsonPerFieldToJson.value(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$MixedJsonPerFieldToJson.value(e)),
        whereNotIn: whereNotIn?.map((e) => _$MixedJsonPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MixedJsonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
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

    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MixedJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
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

    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MixedJsonQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MixedJsonFieldMap['value']!,
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

    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MixedJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MixedJsonDocumentSnapshot extends FirestoreDocumentSnapshot<MixedJson> {
  MixedJsonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MixedJson> snapshot;

  @override
  MixedJsonDocumentReference get reference {
    return MixedJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MixedJson? data;
}

class MixedJsonQuerySnapshot
    extends FirestoreQuerySnapshot<MixedJson, MixedJsonQueryDocumentSnapshot> {
  MixedJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MixedJsonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MixedJson> snapshot,
  ) {
    final docs = snapshot.docs.map(MixedJsonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MixedJsonDocumentSnapshot._,
      );
    }).toList();

    return MixedJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MixedJsonDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MixedJsonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MixedJsonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MixedJson> snapshot;

  @override
  final List<MixedJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MixedJsonDocumentSnapshot>> docChanges;
}

class MixedJsonQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MixedJson>
    implements MixedJsonDocumentSnapshot {
  MixedJsonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MixedJson> snapshot;

  @override
  final MixedJson data;

  @override
  MixedJsonDocumentReference get reference {
    return MixedJsonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class RootCollectionReference
    implements
        RootQuery,
        FirestoreCollectionReference<Root, RootQuerySnapshot> {
  factory RootCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$RootCollectionReference;

  static Root fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Root.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Root value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Root> get reference;

  @override
  RootDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<RootDocumentReference> add(Root value);
}

class _$RootCollectionReference extends _$RootQuery
    implements RootCollectionReference {
  factory _$RootCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$RootCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: RootCollectionReference.fromFirestore,
            toFirestore: RootCollectionReference.toFirestore,
          ),
    );
  }

  _$RootCollectionReference._(
    CollectionReference<Root> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Root> get reference =>
      super.reference as CollectionReference<Root>;

  @override
  RootDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return RootDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<RootDocumentReference> add(Root value) {
    return reference.add(value).then((ref) => RootDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$RootCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class RootDocumentReference
    extends FirestoreDocumentReference<Root, RootDocumentSnapshot> {
  factory RootDocumentReference(DocumentReference<Root> reference) =
      _$RootDocumentReference;

  DocumentReference<Root> get reference;

  /// A reference to the [RootCollectionReference] containing this document.
  RootCollectionReference get parent {
    return _$RootCollectionReference(reference.firestore);
  }

  late final SubCollectionReference sub = _$SubCollectionReference(
    reference,
  );

  late final AsCamelCaseCollectionReference asCamelCase =
      _$AsCamelCaseCollectionReference(
    reference,
  );

  late final CustomSubNameCollectionReference thisIsACustomName =
      _$CustomSubNameCollectionReference(
    reference,
  );

  late final ThisIsACustomPrefixCollectionReference customClassPrefix =
      _$ThisIsACustomPrefixCollectionReference(
    reference,
  );

  @override
  Stream<RootDocumentSnapshot> snapshots();

  @override
  Future<RootDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });
}

class _$RootDocumentReference
    extends FirestoreDocumentReference<Root, RootDocumentSnapshot>
    implements RootDocumentReference {
  _$RootDocumentReference(this.reference);

  @override
  final DocumentReference<Root> reference;

  /// A reference to the [RootCollectionReference] containing this document.
  RootCollectionReference get parent {
    return _$RootCollectionReference(reference.firestore);
  }

  late final SubCollectionReference sub = _$SubCollectionReference(
    reference,
  );

  late final AsCamelCaseCollectionReference asCamelCase =
      _$AsCamelCaseCollectionReference(
    reference,
  );

  late final CustomSubNameCollectionReference thisIsACustomName =
      _$CustomSubNameCollectionReference(
    reference,
  );

  late final ThisIsACustomPrefixCollectionReference customClassPrefix =
      _$ThisIsACustomPrefixCollectionReference(
    reference,
  );

  @override
  Stream<RootDocumentSnapshot> snapshots() {
    return reference.snapshots().map(RootDocumentSnapshot._);
  }

  @override
  Future<RootDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RootDocumentSnapshot._);
  }

  @override
  Future<RootDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(RootDocumentSnapshot._);
  }

  Future<void> update({
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) async {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$RootFieldMap['nonNullable']!:
            _$RootPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$RootFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$RootFieldMap['nullable']!:
            _$RootPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$RootFieldMap['nullable']!: nullableFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$RootFieldMap['nonNullable']!:
            _$RootPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$RootFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$RootFieldMap['nullable']!:
            _$RootPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$RootFieldMap['nullable']!: nullableFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$RootFieldMap['nonNullable']!:
            _$RootPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$RootFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$RootFieldMap['nullable']!:
            _$RootPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$RootFieldMap['nullable']!: nullableFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is RootDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class RootQuery implements QueryReference<Root, RootQuerySnapshot> {
  @override
  RootQuery limit(int limit);

  @override
  RootQuery limitToLast(int limit);

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
  RootQuery whereFieldPath(
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

  RootQuery whereDocumentId({
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

  RootQuery whereNonNullable({
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

  RootQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
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
  RootQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  RootQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  RootQuery orderByNonNullable({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  RootQuery orderByNullable({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });
}

class _$RootQuery extends QueryReference<Root, RootQuerySnapshot>
    implements RootQuery {
  _$RootQuery(
    this._collection, {
    required Query<Root> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<RootQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(RootQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<RootQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RootQuerySnapshot._fromQuerySnapshot);
  }

  @override
  RootQuery limit(int limit) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RootQuery limitToLast(int limit) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RootQuery whereFieldPath(
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
    return _$RootQuery(
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
  RootQuery whereDocumentId({
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
    return _$RootQuery(
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
  RootQuery whereNonNullable({
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
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RootFieldMap['nonNullable']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RootPerFieldToJson.nonNullable(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RootPerFieldToJson.nonNullable(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$RootPerFieldToJson.nonNullable(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RootPerFieldToJson.nonNullable(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RootPerFieldToJson.nonNullable(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RootPerFieldToJson.nonNullable(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$RootPerFieldToJson.nonNullable(e)),
        whereNotIn: whereNotIn?.map((e) => _$RootPerFieldToJson.nonNullable(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RootQuery whereNullable({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RootFieldMap['nullable']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RootPerFieldToJson.nullable(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RootPerFieldToJson.nullable(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$RootPerFieldToJson.nullable(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RootPerFieldToJson.nullable(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RootPerFieldToJson.nullable(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RootPerFieldToJson.nullable(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$RootPerFieldToJson.nullable(e)),
        whereNotIn: whereNotIn?.map((e) => _$RootPerFieldToJson.nullable(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RootQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
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

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RootQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
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

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RootQuery orderByNonNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RootFieldMap['nonNullable']!, descending: descending);
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

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RootQuery orderByNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RootFieldMap['nullable']!,
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

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$RootQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class RootDocumentSnapshot extends FirestoreDocumentSnapshot<Root> {
  RootDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Root> snapshot;

  @override
  RootDocumentReference get reference {
    return RootDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Root? data;
}

class RootQuerySnapshot
    extends FirestoreQuerySnapshot<Root, RootQueryDocumentSnapshot> {
  RootQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory RootQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Root> snapshot,
  ) {
    final docs = snapshot.docs.map(RootQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        RootDocumentSnapshot._,
      );
    }).toList();

    return RootQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<RootDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    RootDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<RootDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Root> snapshot;

  @override
  final List<RootQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<RootDocumentSnapshot>> docChanges;
}

class RootQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Root>
    implements RootDocumentSnapshot {
  RootQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Root> snapshot;

  @override
  final Root data;

  @override
  RootDocumentReference get reference {
    return RootDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SubCollectionReference
    implements SubQuery, FirestoreCollectionReference<Sub, SubQuerySnapshot> {
  factory SubCollectionReference(
    DocumentReference<Root> parent,
  ) = _$SubCollectionReference;

  static Sub fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Sub.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Sub value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Sub> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  SubDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SubDocumentReference> add(Sub value);
}

class _$SubCollectionReference extends _$SubQuery
    implements SubCollectionReference {
  factory _$SubCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$SubCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('sub').withConverter(
            fromFirestore: SubCollectionReference.fromFirestore,
            toFirestore: SubCollectionReference.toFirestore,
          ),
    );
  }

  _$SubCollectionReference._(
    this.parent,
    CollectionReference<Sub> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Sub> get reference =>
      super.reference as CollectionReference<Sub>;

  @override
  SubDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SubDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SubDocumentReference> add(Sub value) {
    return reference.add(value).then((ref) => SubDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SubCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SubDocumentReference
    extends FirestoreDocumentReference<Sub, SubDocumentSnapshot> {
  factory SubDocumentReference(DocumentReference<Sub> reference) =
      _$SubDocumentReference;

  DocumentReference<Sub> get reference;

  /// A reference to the [SubCollectionReference] containing this document.
  SubCollectionReference get parent {
    return _$SubCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SubDocumentSnapshot> snapshots();

  @override
  Future<SubDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });
}

class _$SubDocumentReference
    extends FirestoreDocumentReference<Sub, SubDocumentSnapshot>
    implements SubDocumentReference {
  _$SubDocumentReference(this.reference);

  @override
  final DocumentReference<Sub> reference;

  /// A reference to the [SubCollectionReference] containing this document.
  SubCollectionReference get parent {
    return _$SubCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SubDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SubDocumentSnapshot._);
  }

  @override
  Future<SubDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SubDocumentSnapshot._);
  }

  @override
  Future<SubDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SubDocumentSnapshot._);
  }

  Future<void> update({
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) async {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$SubFieldMap['nonNullable']!:
            _$SubPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$SubFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$SubFieldMap['nullable']!:
            _$SubPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$SubFieldMap['nullable']!: nullableFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$SubFieldMap['nonNullable']!:
            _$SubPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$SubFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$SubFieldMap['nullable']!:
            _$SubPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$SubFieldMap['nullable']!: nullableFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$SubFieldMap['nonNullable']!:
            _$SubPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$SubFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$SubFieldMap['nullable']!:
            _$SubPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$SubFieldMap['nullable']!: nullableFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SubDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SubQuery implements QueryReference<Sub, SubQuerySnapshot> {
  @override
  SubQuery limit(int limit);

  @override
  SubQuery limitToLast(int limit);

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
  SubQuery whereFieldPath(
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

  SubQuery whereDocumentId({
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

  SubQuery whereNonNullable({
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

  SubQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
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
  SubQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  SubQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  SubQuery orderByNonNullable({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  SubQuery orderByNullable({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });
}

class _$SubQuery extends QueryReference<Sub, SubQuerySnapshot>
    implements SubQuery {
  _$SubQuery(
    this._collection, {
    required Query<Sub> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SubQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(SubQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SubQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SubQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SubQuery limit(int limit) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SubQuery limitToLast(int limit) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SubQuery whereFieldPath(
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
    return _$SubQuery(
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
  SubQuery whereDocumentId({
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
    return _$SubQuery(
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
  SubQuery whereNonNullable({
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
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SubFieldMap['nonNullable']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SubPerFieldToJson.nonNullable(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SubPerFieldToJson.nonNullable(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SubPerFieldToJson.nonNullable(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SubPerFieldToJson.nonNullable(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SubPerFieldToJson.nonNullable(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SubPerFieldToJson.nonNullable(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$SubPerFieldToJson.nonNullable(e)),
        whereNotIn: whereNotIn?.map((e) => _$SubPerFieldToJson.nonNullable(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SubQuery whereNullable({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SubFieldMap['nullable']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SubPerFieldToJson.nullable(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SubPerFieldToJson.nullable(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$SubPerFieldToJson.nullable(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SubPerFieldToJson.nullable(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SubPerFieldToJson.nullable(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SubPerFieldToJson.nullable(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$SubPerFieldToJson.nullable(e)),
        whereNotIn: whereNotIn?.map((e) => _$SubPerFieldToJson.nullable(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SubQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
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

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SubQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
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

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SubQuery orderByNonNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SubFieldMap['nonNullable']!,
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

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SubQuery orderByNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SubFieldMap['nullable']!,
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

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SubQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SubDocumentSnapshot extends FirestoreDocumentSnapshot<Sub> {
  SubDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Sub> snapshot;

  @override
  SubDocumentReference get reference {
    return SubDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Sub? data;
}

class SubQuerySnapshot
    extends FirestoreQuerySnapshot<Sub, SubQueryDocumentSnapshot> {
  SubQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SubQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Sub> snapshot,
  ) {
    final docs = snapshot.docs.map(SubQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SubDocumentSnapshot._,
      );
    }).toList();

    return SubQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SubDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SubDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SubDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Sub> snapshot;

  @override
  final List<SubQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SubDocumentSnapshot>> docChanges;
}

class SubQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Sub>
    implements SubDocumentSnapshot {
  SubQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Sub> snapshot;

  @override
  final Sub data;

  @override
  SubDocumentReference get reference {
    return SubDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AsCamelCaseCollectionReference
    implements
        AsCamelCaseQuery,
        FirestoreCollectionReference<AsCamelCase, AsCamelCaseQuerySnapshot> {
  factory AsCamelCaseCollectionReference(
    DocumentReference<Root> parent,
  ) = _$AsCamelCaseCollectionReference;

  static AsCamelCase fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return AsCamelCase.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    AsCamelCase value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<AsCamelCase> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  AsCamelCaseDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AsCamelCaseDocumentReference> add(AsCamelCase value);
}

class _$AsCamelCaseCollectionReference extends _$AsCamelCaseQuery
    implements AsCamelCaseCollectionReference {
  factory _$AsCamelCaseCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$AsCamelCaseCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('as-camel-case').withConverter(
            fromFirestore: AsCamelCaseCollectionReference.fromFirestore,
            toFirestore: AsCamelCaseCollectionReference.toFirestore,
          ),
    );
  }

  _$AsCamelCaseCollectionReference._(
    this.parent,
    CollectionReference<AsCamelCase> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AsCamelCase> get reference =>
      super.reference as CollectionReference<AsCamelCase>;

  @override
  AsCamelCaseDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AsCamelCaseDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AsCamelCaseDocumentReference> add(AsCamelCase value) {
    return reference
        .add(value)
        .then((ref) => AsCamelCaseDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AsCamelCaseCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AsCamelCaseDocumentReference extends FirestoreDocumentReference<
    AsCamelCase, AsCamelCaseDocumentSnapshot> {
  factory AsCamelCaseDocumentReference(
          DocumentReference<AsCamelCase> reference) =
      _$AsCamelCaseDocumentReference;

  DocumentReference<AsCamelCase> get reference;

  /// A reference to the [AsCamelCaseCollectionReference] containing this document.
  AsCamelCaseCollectionReference get parent {
    return _$AsCamelCaseCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AsCamelCaseDocumentSnapshot> snapshots();

  @override
  Future<AsCamelCaseDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$AsCamelCaseDocumentReference
    extends FirestoreDocumentReference<AsCamelCase, AsCamelCaseDocumentSnapshot>
    implements AsCamelCaseDocumentReference {
  _$AsCamelCaseDocumentReference(this.reference);

  @override
  final DocumentReference<AsCamelCase> reference;

  /// A reference to the [AsCamelCaseCollectionReference] containing this document.
  AsCamelCaseCollectionReference get parent {
    return _$AsCamelCaseCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AsCamelCaseDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AsCamelCaseDocumentSnapshot._);
  }

  @override
  Future<AsCamelCaseDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AsCamelCaseDocumentSnapshot._);
  }

  @override
  Future<AsCamelCaseDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AsCamelCaseDocumentSnapshot._);
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
        _$AsCamelCaseFieldMap['value']!:
            _$AsCamelCasePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$AsCamelCaseFieldMap['value']!: valueFieldValue,
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
        _$AsCamelCaseFieldMap['value']!:
            _$AsCamelCasePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$AsCamelCaseFieldMap['value']!: valueFieldValue,
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
        _$AsCamelCaseFieldMap['value']!:
            _$AsCamelCasePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$AsCamelCaseFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AsCamelCaseDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AsCamelCaseQuery
    implements QueryReference<AsCamelCase, AsCamelCaseQuerySnapshot> {
  @override
  AsCamelCaseQuery limit(int limit);

  @override
  AsCamelCaseQuery limitToLast(int limit);

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
  AsCamelCaseQuery whereFieldPath(
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

  AsCamelCaseQuery whereDocumentId({
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

  AsCamelCaseQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
  AsCamelCaseQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });

  AsCamelCaseQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });

  AsCamelCaseQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });
}

class _$AsCamelCaseQuery
    extends QueryReference<AsCamelCase, AsCamelCaseQuerySnapshot>
    implements AsCamelCaseQuery {
  _$AsCamelCaseQuery(
    this._collection, {
    required Query<AsCamelCase> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AsCamelCaseQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AsCamelCaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AsCamelCaseQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AsCamelCaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AsCamelCaseQuery limit(int limit) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AsCamelCaseQuery limitToLast(int limit) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AsCamelCaseQuery whereFieldPath(
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
    return _$AsCamelCaseQuery(
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
  AsCamelCaseQuery whereDocumentId({
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
    return _$AsCamelCaseQuery(
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
  AsCamelCaseQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
    bool? isNull,
  }) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AsCamelCaseFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AsCamelCasePerFieldToJson.value(isEqualTo as num)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AsCamelCasePerFieldToJson.value(isNotEqualTo as num)
            : null,
        isLessThan: isLessThan != null
            ? _$AsCamelCasePerFieldToJson.value(isLessThan as num)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AsCamelCasePerFieldToJson.value(isLessThanOrEqualTo as num)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AsCamelCasePerFieldToJson.value(isGreaterThan as num)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AsCamelCasePerFieldToJson.value(isGreaterThanOrEqualTo as num)
            : null,
        whereIn: whereIn?.map((e) => _$AsCamelCasePerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AsCamelCasePerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AsCamelCaseQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
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

    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AsCamelCaseQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
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

    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AsCamelCaseQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AsCamelCaseFieldMap['value']!, descending: descending);
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

    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AsCamelCaseQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AsCamelCaseDocumentSnapshot
    extends FirestoreDocumentSnapshot<AsCamelCase> {
  AsCamelCaseDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AsCamelCase> snapshot;

  @override
  AsCamelCaseDocumentReference get reference {
    return AsCamelCaseDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AsCamelCase? data;
}

class AsCamelCaseQuerySnapshot extends FirestoreQuerySnapshot<AsCamelCase,
    AsCamelCaseQueryDocumentSnapshot> {
  AsCamelCaseQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AsCamelCaseQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AsCamelCase> snapshot,
  ) {
    final docs = snapshot.docs.map(AsCamelCaseQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AsCamelCaseDocumentSnapshot._,
      );
    }).toList();

    return AsCamelCaseQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AsCamelCaseDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AsCamelCase> snapshot;

  @override
  final List<AsCamelCaseQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>> docChanges;
}

class AsCamelCaseQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AsCamelCase>
    implements AsCamelCaseDocumentSnapshot {
  AsCamelCaseQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AsCamelCase> snapshot;

  @override
  final AsCamelCase data;

  @override
  AsCamelCaseDocumentReference get reference {
    return AsCamelCaseDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CustomSubNameCollectionReference
    implements
        CustomSubNameQuery,
        FirestoreCollectionReference<CustomSubName,
            CustomSubNameQuerySnapshot> {
  factory CustomSubNameCollectionReference(
    DocumentReference<Root> parent,
  ) = _$CustomSubNameCollectionReference;

  static CustomSubName fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CustomSubName.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CustomSubName value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CustomSubName> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  CustomSubNameDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CustomSubNameDocumentReference> add(CustomSubName value);
}

class _$CustomSubNameCollectionReference extends _$CustomSubNameQuery
    implements CustomSubNameCollectionReference {
  factory _$CustomSubNameCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$CustomSubNameCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('custom-sub-name').withConverter(
            fromFirestore: CustomSubNameCollectionReference.fromFirestore,
            toFirestore: CustomSubNameCollectionReference.toFirestore,
          ),
    );
  }

  _$CustomSubNameCollectionReference._(
    this.parent,
    CollectionReference<CustomSubName> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<CustomSubName> get reference =>
      super.reference as CollectionReference<CustomSubName>;

  @override
  CustomSubNameDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CustomSubNameDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CustomSubNameDocumentReference> add(CustomSubName value) {
    return reference
        .add(value)
        .then((ref) => CustomSubNameDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomSubNameCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CustomSubNameDocumentReference
    extends FirestoreDocumentReference<CustomSubName,
        CustomSubNameDocumentSnapshot> {
  factory CustomSubNameDocumentReference(
          DocumentReference<CustomSubName> reference) =
      _$CustomSubNameDocumentReference;

  DocumentReference<CustomSubName> get reference;

  /// A reference to the [CustomSubNameCollectionReference] containing this document.
  CustomSubNameCollectionReference get parent {
    return _$CustomSubNameCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomSubNameDocumentSnapshot> snapshots();

  @override
  Future<CustomSubNameDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$CustomSubNameDocumentReference extends FirestoreDocumentReference<
    CustomSubName,
    CustomSubNameDocumentSnapshot> implements CustomSubNameDocumentReference {
  _$CustomSubNameDocumentReference(this.reference);

  @override
  final DocumentReference<CustomSubName> reference;

  /// A reference to the [CustomSubNameCollectionReference] containing this document.
  CustomSubNameCollectionReference get parent {
    return _$CustomSubNameCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomSubNameDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CustomSubNameDocumentSnapshot._);
  }

  @override
  Future<CustomSubNameDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CustomSubNameDocumentSnapshot._);
  }

  @override
  Future<CustomSubNameDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(CustomSubNameDocumentSnapshot._);
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
        _$CustomSubNameFieldMap['value']!:
            _$CustomSubNamePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomSubNameFieldMap['value']!: valueFieldValue,
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
        _$CustomSubNameFieldMap['value']!:
            _$CustomSubNamePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomSubNameFieldMap['value']!: valueFieldValue,
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
        _$CustomSubNameFieldMap['value']!:
            _$CustomSubNamePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomSubNameFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomSubNameDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CustomSubNameQuery
    implements QueryReference<CustomSubName, CustomSubNameQuerySnapshot> {
  @override
  CustomSubNameQuery limit(int limit);

  @override
  CustomSubNameQuery limitToLast(int limit);

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
  CustomSubNameQuery whereFieldPath(
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

  CustomSubNameQuery whereDocumentId({
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

  CustomSubNameQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
  CustomSubNameQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });

  CustomSubNameQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });

  CustomSubNameQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });
}

class _$CustomSubNameQuery
    extends QueryReference<CustomSubName, CustomSubNameQuerySnapshot>
    implements CustomSubNameQuery {
  _$CustomSubNameQuery(
    this._collection, {
    required Query<CustomSubName> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CustomSubNameQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(CustomSubNameQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CustomSubNameQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CustomSubNameQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CustomSubNameQuery limit(int limit) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CustomSubNameQuery limitToLast(int limit) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CustomSubNameQuery whereFieldPath(
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
    return _$CustomSubNameQuery(
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
  CustomSubNameQuery whereDocumentId({
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
    return _$CustomSubNameQuery(
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
  CustomSubNameQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
    bool? isNull,
  }) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomSubNameFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CustomSubNamePerFieldToJson.value(isEqualTo as num)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CustomSubNamePerFieldToJson.value(isNotEqualTo as num)
            : null,
        isLessThan: isLessThan != null
            ? _$CustomSubNamePerFieldToJson.value(isLessThan as num)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CustomSubNamePerFieldToJson.value(isLessThanOrEqualTo as num)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CustomSubNamePerFieldToJson.value(isGreaterThan as num)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CustomSubNamePerFieldToJson.value(isGreaterThanOrEqualTo as num)
            : null,
        whereIn: whereIn?.map((e) => _$CustomSubNamePerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$CustomSubNamePerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CustomSubNameQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
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

    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CustomSubNameQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
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

    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CustomSubNameQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CustomSubNameFieldMap['value']!, descending: descending);
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

    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomSubNameQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CustomSubNameDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomSubName> {
  CustomSubNameDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CustomSubName> snapshot;

  @override
  CustomSubNameDocumentReference get reference {
    return CustomSubNameDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CustomSubName? data;
}

class CustomSubNameQuerySnapshot extends FirestoreQuerySnapshot<CustomSubName,
    CustomSubNameQueryDocumentSnapshot> {
  CustomSubNameQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CustomSubNameQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CustomSubName> snapshot,
  ) {
    final docs =
        snapshot.docs.map(CustomSubNameQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CustomSubNameDocumentSnapshot._,
      );
    }).toList();

    return CustomSubNameQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CustomSubNameDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CustomSubNameDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CustomSubNameDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CustomSubName> snapshot;

  @override
  final List<CustomSubNameQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CustomSubNameDocumentSnapshot>> docChanges;
}

class CustomSubNameQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CustomSubName>
    implements CustomSubNameDocumentSnapshot {
  CustomSubNameQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CustomSubName> snapshot;

  @override
  final CustomSubName data;

  @override
  CustomSubNameDocumentReference get reference {
    return CustomSubNameDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ThisIsACustomPrefixCollectionReference
    implements
        ThisIsACustomPrefixQuery,
        FirestoreCollectionReference<CustomClassPrefix,
            ThisIsACustomPrefixQuerySnapshot> {
  factory ThisIsACustomPrefixCollectionReference(
    DocumentReference<Root> parent,
  ) = _$ThisIsACustomPrefixCollectionReference;

  static CustomClassPrefix fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CustomClassPrefix.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CustomClassPrefix value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CustomClassPrefix> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  ThisIsACustomPrefixDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ThisIsACustomPrefixDocumentReference> add(CustomClassPrefix value);
}

class _$ThisIsACustomPrefixCollectionReference
    extends _$ThisIsACustomPrefixQuery
    implements ThisIsACustomPrefixCollectionReference {
  factory _$ThisIsACustomPrefixCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$ThisIsACustomPrefixCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('custom-class-prefix').withConverter(
            fromFirestore: ThisIsACustomPrefixCollectionReference.fromFirestore,
            toFirestore: ThisIsACustomPrefixCollectionReference.toFirestore,
          ),
    );
  }

  _$ThisIsACustomPrefixCollectionReference._(
    this.parent,
    CollectionReference<CustomClassPrefix> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<CustomClassPrefix> get reference =>
      super.reference as CollectionReference<CustomClassPrefix>;

  @override
  ThisIsACustomPrefixDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ThisIsACustomPrefixDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ThisIsACustomPrefixDocumentReference> add(CustomClassPrefix value) {
    return reference
        .add(value)
        .then((ref) => ThisIsACustomPrefixDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ThisIsACustomPrefixCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ThisIsACustomPrefixDocumentReference
    extends FirestoreDocumentReference<CustomClassPrefix,
        ThisIsACustomPrefixDocumentSnapshot> {
  factory ThisIsACustomPrefixDocumentReference(
          DocumentReference<CustomClassPrefix> reference) =
      _$ThisIsACustomPrefixDocumentReference;

  DocumentReference<CustomClassPrefix> get reference;

  /// A reference to the [ThisIsACustomPrefixCollectionReference] containing this document.
  ThisIsACustomPrefixCollectionReference get parent {
    return _$ThisIsACustomPrefixCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ThisIsACustomPrefixDocumentSnapshot> snapshots();

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ThisIsACustomPrefixDocumentReference extends FirestoreDocumentReference<
        CustomClassPrefix, ThisIsACustomPrefixDocumentSnapshot>
    implements ThisIsACustomPrefixDocumentReference {
  _$ThisIsACustomPrefixDocumentReference(this.reference);

  @override
  final DocumentReference<CustomClassPrefix> reference;

  /// A reference to the [ThisIsACustomPrefixCollectionReference] containing this document.
  ThisIsACustomPrefixCollectionReference get parent {
    return _$ThisIsACustomPrefixCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ThisIsACustomPrefixDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ThisIsACustomPrefixDocumentSnapshot._);
  }

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ThisIsACustomPrefixDocumentSnapshot._);
  }

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(ThisIsACustomPrefixDocumentSnapshot._);
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
        _$CustomClassPrefixFieldMap['value']!:
            _$CustomClassPrefixPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomClassPrefixFieldMap['value']!: valueFieldValue,
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
        _$CustomClassPrefixFieldMap['value']!:
            _$CustomClassPrefixPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomClassPrefixFieldMap['value']!: valueFieldValue,
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
        _$CustomClassPrefixFieldMap['value']!:
            _$CustomClassPrefixPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomClassPrefixFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ThisIsACustomPrefixDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ThisIsACustomPrefixQuery
    implements
        QueryReference<CustomClassPrefix, ThisIsACustomPrefixQuerySnapshot> {
  @override
  ThisIsACustomPrefixQuery limit(int limit);

  @override
  ThisIsACustomPrefixQuery limitToLast(int limit);

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
  ThisIsACustomPrefixQuery whereFieldPath(
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

  ThisIsACustomPrefixQuery whereDocumentId({
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

  ThisIsACustomPrefixQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
  ThisIsACustomPrefixQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });

  ThisIsACustomPrefixQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });

  ThisIsACustomPrefixQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });
}

class _$ThisIsACustomPrefixQuery
    extends QueryReference<CustomClassPrefix, ThisIsACustomPrefixQuerySnapshot>
    implements ThisIsACustomPrefixQuery {
  _$ThisIsACustomPrefixQuery(
    this._collection, {
    required Query<CustomClassPrefix> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ThisIsACustomPrefixQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ThisIsACustomPrefixQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ThisIsACustomPrefixQuery limit(int limit) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery limitToLast(int limit) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery whereFieldPath(
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
    return _$ThisIsACustomPrefixQuery(
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
  ThisIsACustomPrefixQuery whereDocumentId({
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
    return _$ThisIsACustomPrefixQuery(
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
  ThisIsACustomPrefixQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
    bool? isNull,
  }) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomClassPrefixFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CustomClassPrefixPerFieldToJson.value(isEqualTo as num)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CustomClassPrefixPerFieldToJson.value(isNotEqualTo as num)
            : null,
        isLessThan: isLessThan != null
            ? _$CustomClassPrefixPerFieldToJson.value(isLessThan as num)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CustomClassPrefixPerFieldToJson
                .value(isLessThanOrEqualTo as num)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CustomClassPrefixPerFieldToJson.value(isGreaterThan as num)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CustomClassPrefixPerFieldToJson
                .value(isGreaterThanOrEqualTo as num)
            : null,
        whereIn:
            whereIn?.map((e) => _$CustomClassPrefixPerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$CustomClassPrefixPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
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

    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
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

    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CustomClassPrefixFieldMap['value']!, descending: descending);
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

    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ThisIsACustomPrefixQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ThisIsACustomPrefixDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomClassPrefix> {
  ThisIsACustomPrefixDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CustomClassPrefix> snapshot;

  @override
  ThisIsACustomPrefixDocumentReference get reference {
    return ThisIsACustomPrefixDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CustomClassPrefix? data;
}

class ThisIsACustomPrefixQuerySnapshot extends FirestoreQuerySnapshot<
    CustomClassPrefix, ThisIsACustomPrefixQueryDocumentSnapshot> {
  ThisIsACustomPrefixQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CustomClassPrefix> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ThisIsACustomPrefixQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ThisIsACustomPrefixDocumentSnapshot._,
      );
    }).toList();

    return ThisIsACustomPrefixQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ThisIsACustomPrefixDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CustomClassPrefix> snapshot;

  @override
  final List<ThisIsACustomPrefixQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>>
      docChanges;
}

class ThisIsACustomPrefixQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CustomClassPrefix>
    implements ThisIsACustomPrefixDocumentSnapshot {
  ThisIsACustomPrefixQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CustomClassPrefix> snapshot;

  @override
  final CustomClassPrefix data;

  @override
  ThisIsACustomPrefixDocumentReference get reference {
    return ThisIsACustomPrefixDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ExplicitPathCollectionReference
    implements
        ExplicitPathQuery,
        FirestoreCollectionReference<ExplicitPath, ExplicitPathQuerySnapshot> {
  factory ExplicitPathCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ExplicitPathCollectionReference;

  static ExplicitPath fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ExplicitPath.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ExplicitPath value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ExplicitPath> get reference;

  @override
  ExplicitPathDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ExplicitPathDocumentReference> add(ExplicitPath value);
}

class _$ExplicitPathCollectionReference extends _$ExplicitPathQuery
    implements ExplicitPathCollectionReference {
  factory _$ExplicitPathCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ExplicitPathCollectionReference._(
      firestore.collection('root/doc/path').withConverter(
            fromFirestore: ExplicitPathCollectionReference.fromFirestore,
            toFirestore: ExplicitPathCollectionReference.toFirestore,
          ),
    );
  }

  _$ExplicitPathCollectionReference._(
    CollectionReference<ExplicitPath> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ExplicitPath> get reference =>
      super.reference as CollectionReference<ExplicitPath>;

  @override
  ExplicitPathDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ExplicitPathDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ExplicitPathDocumentReference> add(ExplicitPath value) {
    return reference
        .add(value)
        .then((ref) => ExplicitPathDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitPathCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ExplicitPathDocumentReference extends FirestoreDocumentReference<
    ExplicitPath, ExplicitPathDocumentSnapshot> {
  factory ExplicitPathDocumentReference(
          DocumentReference<ExplicitPath> reference) =
      _$ExplicitPathDocumentReference;

  DocumentReference<ExplicitPath> get reference;

  /// A reference to the [ExplicitPathCollectionReference] containing this document.
  ExplicitPathCollectionReference get parent {
    return _$ExplicitPathCollectionReference(reference.firestore);
  }

  late final ExplicitSubPathCollectionReference sub =
      _$ExplicitSubPathCollectionReference(
    reference,
  );

  @override
  Stream<ExplicitPathDocumentSnapshot> snapshots();

  @override
  Future<ExplicitPathDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ExplicitPathDocumentReference extends FirestoreDocumentReference<
    ExplicitPath,
    ExplicitPathDocumentSnapshot> implements ExplicitPathDocumentReference {
  _$ExplicitPathDocumentReference(this.reference);

  @override
  final DocumentReference<ExplicitPath> reference;

  /// A reference to the [ExplicitPathCollectionReference] containing this document.
  ExplicitPathCollectionReference get parent {
    return _$ExplicitPathCollectionReference(reference.firestore);
  }

  late final ExplicitSubPathCollectionReference sub =
      _$ExplicitSubPathCollectionReference(
    reference,
  );

  @override
  Stream<ExplicitPathDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ExplicitPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitPathDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ExplicitPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitPathDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ExplicitPathDocumentSnapshot._);
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
        _$ExplicitPathFieldMap['value']!:
            _$ExplicitPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitPathFieldMap['value']!: valueFieldValue,
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
        _$ExplicitPathFieldMap['value']!:
            _$ExplicitPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitPathFieldMap['value']!: valueFieldValue,
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
        _$ExplicitPathFieldMap['value']!:
            _$ExplicitPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitPathFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ExplicitPathDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ExplicitPathQuery
    implements QueryReference<ExplicitPath, ExplicitPathQuerySnapshot> {
  @override
  ExplicitPathQuery limit(int limit);

  @override
  ExplicitPathQuery limitToLast(int limit);

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
  ExplicitPathQuery whereFieldPath(
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

  ExplicitPathQuery whereDocumentId({
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

  ExplicitPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
  ExplicitPathQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitPathQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitPathQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });
}

class _$ExplicitPathQuery
    extends QueryReference<ExplicitPath, ExplicitPathQuerySnapshot>
    implements ExplicitPathQuery {
  _$ExplicitPathQuery(
    this._collection, {
    required Query<ExplicitPath> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ExplicitPathQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ExplicitPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ExplicitPathQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ExplicitPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ExplicitPathQuery limit(int limit) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitPathQuery limitToLast(int limit) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitPathQuery whereFieldPath(
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
    return _$ExplicitPathQuery(
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
  ExplicitPathQuery whereDocumentId({
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
    return _$ExplicitPathQuery(
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
  ExplicitPathQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
    bool? isNull,
  }) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ExplicitPathFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ExplicitPathPerFieldToJson.value(isEqualTo as num)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ExplicitPathPerFieldToJson.value(isNotEqualTo as num)
            : null,
        isLessThan: isLessThan != null
            ? _$ExplicitPathPerFieldToJson.value(isLessThan as num)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ExplicitPathPerFieldToJson.value(isLessThanOrEqualTo as num)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ExplicitPathPerFieldToJson.value(isGreaterThan as num)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ExplicitPathPerFieldToJson.value(isGreaterThanOrEqualTo as num)
            : null,
        whereIn: whereIn?.map((e) => _$ExplicitPathPerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ExplicitPathPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitPathQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
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

    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ExplicitPathQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
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

    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ExplicitPathQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ExplicitPathFieldMap['value']!, descending: descending);
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

    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitPathQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ExplicitPathDocumentSnapshot
    extends FirestoreDocumentSnapshot<ExplicitPath> {
  ExplicitPathDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ExplicitPath> snapshot;

  @override
  ExplicitPathDocumentReference get reference {
    return ExplicitPathDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ExplicitPath? data;
}

class ExplicitPathQuerySnapshot extends FirestoreQuerySnapshot<ExplicitPath,
    ExplicitPathQueryDocumentSnapshot> {
  ExplicitPathQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ExplicitPathQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ExplicitPath> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ExplicitPathQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ExplicitPathDocumentSnapshot._,
      );
    }).toList();

    return ExplicitPathQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ExplicitPathDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ExplicitPathDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ExplicitPathDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ExplicitPath> snapshot;

  @override
  final List<ExplicitPathQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ExplicitPathDocumentSnapshot>> docChanges;
}

class ExplicitPathQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ExplicitPath>
    implements ExplicitPathDocumentSnapshot {
  ExplicitPathQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ExplicitPath> snapshot;

  @override
  final ExplicitPath data;

  @override
  ExplicitPathDocumentReference get reference {
    return ExplicitPathDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ExplicitSubPathCollectionReference
    implements
        ExplicitSubPathQuery,
        FirestoreCollectionReference<ExplicitSubPath,
            ExplicitSubPathQuerySnapshot> {
  factory ExplicitSubPathCollectionReference(
    DocumentReference<ExplicitPath> parent,
  ) = _$ExplicitSubPathCollectionReference;

  static ExplicitSubPath fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ExplicitSubPath.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ExplicitSubPath value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ExplicitSubPath> get reference;

  /// A reference to the containing [ExplicitPathDocumentReference] if this is a subcollection.
  ExplicitPathDocumentReference get parent;

  @override
  ExplicitSubPathDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ExplicitSubPathDocumentReference> add(ExplicitSubPath value);
}

class _$ExplicitSubPathCollectionReference extends _$ExplicitSubPathQuery
    implements ExplicitSubPathCollectionReference {
  factory _$ExplicitSubPathCollectionReference(
    DocumentReference<ExplicitPath> parent,
  ) {
    return _$ExplicitSubPathCollectionReference._(
      ExplicitPathDocumentReference(parent),
      parent.collection('sub').withConverter(
            fromFirestore: ExplicitSubPathCollectionReference.fromFirestore,
            toFirestore: ExplicitSubPathCollectionReference.toFirestore,
          ),
    );
  }

  _$ExplicitSubPathCollectionReference._(
    this.parent,
    CollectionReference<ExplicitSubPath> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ExplicitPathDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<ExplicitSubPath> get reference =>
      super.reference as CollectionReference<ExplicitSubPath>;

  @override
  ExplicitSubPathDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ExplicitSubPathDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ExplicitSubPathDocumentReference> add(ExplicitSubPath value) {
    return reference
        .add(value)
        .then((ref) => ExplicitSubPathDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitSubPathCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ExplicitSubPathDocumentReference
    extends FirestoreDocumentReference<ExplicitSubPath,
        ExplicitSubPathDocumentSnapshot> {
  factory ExplicitSubPathDocumentReference(
          DocumentReference<ExplicitSubPath> reference) =
      _$ExplicitSubPathDocumentReference;

  DocumentReference<ExplicitSubPath> get reference;

  /// A reference to the [ExplicitSubPathCollectionReference] containing this document.
  ExplicitSubPathCollectionReference get parent {
    return _$ExplicitSubPathCollectionReference(
      reference.parent.parent!.withConverter<ExplicitPath>(
        fromFirestore: ExplicitPathCollectionReference.fromFirestore,
        toFirestore: ExplicitPathCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExplicitSubPathDocumentSnapshot> snapshots();

  @override
  Future<ExplicitSubPathDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ExplicitSubPathDocumentReference extends FirestoreDocumentReference<
        ExplicitSubPath, ExplicitSubPathDocumentSnapshot>
    implements ExplicitSubPathDocumentReference {
  _$ExplicitSubPathDocumentReference(this.reference);

  @override
  final DocumentReference<ExplicitSubPath> reference;

  /// A reference to the [ExplicitSubPathCollectionReference] containing this document.
  ExplicitSubPathCollectionReference get parent {
    return _$ExplicitSubPathCollectionReference(
      reference.parent.parent!.withConverter<ExplicitPath>(
        fromFirestore: ExplicitPathCollectionReference.fromFirestore,
        toFirestore: ExplicitPathCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExplicitSubPathDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ExplicitSubPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitSubPathDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ExplicitSubPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitSubPathDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ExplicitSubPathDocumentSnapshot._);
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
        _$ExplicitSubPathFieldMap['value']!:
            _$ExplicitSubPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitSubPathFieldMap['value']!: valueFieldValue,
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
        _$ExplicitSubPathFieldMap['value']!:
            _$ExplicitSubPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitSubPathFieldMap['value']!: valueFieldValue,
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
        _$ExplicitSubPathFieldMap['value']!:
            _$ExplicitSubPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitSubPathFieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ExplicitSubPathDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ExplicitSubPathQuery
    implements QueryReference<ExplicitSubPath, ExplicitSubPathQuerySnapshot> {
  @override
  ExplicitSubPathQuery limit(int limit);

  @override
  ExplicitSubPathQuery limitToLast(int limit);

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
  ExplicitSubPathQuery whereFieldPath(
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

  ExplicitSubPathQuery whereDocumentId({
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

  ExplicitSubPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
  ExplicitSubPathQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitSubPathQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitSubPathQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });
}

class _$ExplicitSubPathQuery
    extends QueryReference<ExplicitSubPath, ExplicitSubPathQuerySnapshot>
    implements ExplicitSubPathQuery {
  _$ExplicitSubPathQuery(
    this._collection, {
    required Query<ExplicitSubPath> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ExplicitSubPathQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ExplicitSubPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ExplicitSubPathQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ExplicitSubPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ExplicitSubPathQuery limit(int limit) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery limitToLast(int limit) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery whereFieldPath(
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
    return _$ExplicitSubPathQuery(
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
  ExplicitSubPathQuery whereDocumentId({
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
    return _$ExplicitSubPathQuery(
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
  ExplicitSubPathQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<num>? whereIn,
    List<num>? whereNotIn,
    bool? isNull,
  }) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ExplicitSubPathFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ExplicitSubPathPerFieldToJson.value(isEqualTo as num)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ExplicitSubPathPerFieldToJson.value(isNotEqualTo as num)
            : null,
        isLessThan: isLessThan != null
            ? _$ExplicitSubPathPerFieldToJson.value(isLessThan as num)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ExplicitSubPathPerFieldToJson.value(isLessThanOrEqualTo as num)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ExplicitSubPathPerFieldToJson.value(isGreaterThan as num)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ExplicitSubPathPerFieldToJson
                .value(isGreaterThanOrEqualTo as num)
            : null,
        whereIn: whereIn?.map((e) => _$ExplicitSubPathPerFieldToJson.value(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ExplicitSubPathPerFieldToJson.value(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
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

    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
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

    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ExplicitSubPathFieldMap['value']!, descending: descending);
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

    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitSubPathQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ExplicitSubPathDocumentSnapshot
    extends FirestoreDocumentSnapshot<ExplicitSubPath> {
  ExplicitSubPathDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ExplicitSubPath> snapshot;

  @override
  ExplicitSubPathDocumentReference get reference {
    return ExplicitSubPathDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ExplicitSubPath? data;
}

class ExplicitSubPathQuerySnapshot extends FirestoreQuerySnapshot<
    ExplicitSubPath, ExplicitSubPathQueryDocumentSnapshot> {
  ExplicitSubPathQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ExplicitSubPathQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ExplicitSubPath> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ExplicitSubPathQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ExplicitSubPathDocumentSnapshot._,
      );
    }).toList();

    return ExplicitSubPathQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ExplicitSubPathDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ExplicitSubPath> snapshot;

  @override
  final List<ExplicitSubPathQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>>
      docChanges;
}

class ExplicitSubPathQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ExplicitSubPath>
    implements ExplicitSubPathDocumentSnapshot {
  ExplicitSubPathQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ExplicitSubPath> snapshot;

  @override
  final ExplicitSubPath data;

  @override
  ExplicitSubPathDocumentReference get reference {
    return ExplicitSubPathDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertMinValidation(MinValidation instance) {
  const Min(0).validate(instance.intNbr, 'intNbr');
  const Max(42).validate(instance.intNbr, 'intNbr');
  const Min(10).validate(instance.doubleNbr, 'doubleNbr');
  const Min(-10).validate(instance.numNbr, 'numNbr');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgnoredGetter _$IgnoredGetterFromJson(Map<String, dynamic> json) =>
    IgnoredGetter(
      json['value'] as int,
    );

const _$IgnoredGetterFieldMap = <String, String>{
  'value': 'value',
  'count3': 'count3',
};

// ignore: unused_element
abstract class _$IgnoredGetterPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
  // ignore: unused_element
  static Object? count3(int instance) => instance;
}

Map<String, dynamic> _$IgnoredGetterToJson(IgnoredGetter instance) =>
    <String, dynamic>{
      'value': instance.value,
      'count3': instance.count3,
    };

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      json['value'] as String,
    );

const _$ModelFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$ModelPerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'value': instance.value,
    };

Nested _$NestedFromJson(Map<String, dynamic> json) => Nested(
      value: json['value'] == null
          ? null
          : Nested.fromJson(json['value'] as Map<String, dynamic>),
      simple: json['simple'] as int?,
      valueList: (json['valueList'] as List<dynamic>?)
          ?.map((e) => Nested.fromJson(e as Map<String, dynamic>))
          .toList(),
      boolList:
          (json['boolList'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      stringList: (json['stringList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      numList:
          (json['numList'] as List<dynamic>?)?.map((e) => e as num).toList(),
      objectList: json['objectList'] as List<dynamic>?,
      dynamicList: json['dynamicList'] as List<dynamic>?,
      boolSet:
          (json['boolSet'] as List<dynamic>?)?.map((e) => e as bool).toSet(),
      enumValue: $enumDecode(_$TestEnumEnumMap, json['enumValue']),
      nullableEnumValue:
          $enumDecodeNullable(_$TestEnumEnumMap, json['nullableEnumValue']),
      enumList: (json['enumList'] as List<dynamic>)
          .map((e) => $enumDecode(_$TestEnumEnumMap, e))
          .toList(),
      nullableEnumList: (json['nullableEnumList'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TestEnumEnumMap, e))
          .toList(),
    );

const _$NestedFieldMap = <String, String>{
  'value': 'value',
  'simple': 'simple',
  'valueList': 'valueList',
  'boolList': 'boolList',
  'stringList': 'stringList',
  'numList': 'numList',
  'objectList': 'objectList',
  'dynamicList': 'dynamicList',
  'boolSet': 'boolSet',
  'enumValue': 'enumValue',
  'nullableEnumValue': 'nullableEnumValue',
  'enumList': 'enumList',
  'nullableEnumList': 'nullableEnumList',
};

// ignore: unused_element
abstract class _$NestedPerFieldToJson {
  // ignore: unused_element
  static Object? value(Nested? instance) => instance;
  // ignore: unused_element
  static Object? simple(int? instance) => instance;
  // ignore: unused_element
  static Object? valueList(List<Nested>? instance) => instance;
  // ignore: unused_element
  static Object? boolList(List<bool>? instance) => instance;
  // ignore: unused_element
  static Object? stringList(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? numList(List<num>? instance) => instance;
  // ignore: unused_element
  static Object? objectList(List<Object?>? instance) => instance;
  // ignore: unused_element
  static Object? dynamicList(List<dynamic>? instance) => instance;
  // ignore: unused_element
  static Object? boolSet(Set<bool>? instance) => instance?.toList();
  // ignore: unused_element
  static Object? enumValue(TestEnum instance) => _$TestEnumEnumMap[instance]!;
  // ignore: unused_element
  static Object? nullableEnumValue(TestEnum? instance) =>
      _$TestEnumEnumMap[instance];
  // ignore: unused_element
  static Object? enumList(List<TestEnum> instance) =>
      instance.map((e) => _$TestEnumEnumMap[e]!).toList();
  // ignore: unused_element
  static Object? nullableEnumList(List<TestEnum>? instance) =>
      instance?.map((e) => _$TestEnumEnumMap[e]!).toList();
}

Map<String, dynamic> _$NestedToJson(Nested instance) => <String, dynamic>{
      'value': instance.value,
      'simple': instance.simple,
      'valueList': instance.valueList,
      'boolList': instance.boolList,
      'stringList': instance.stringList,
      'numList': instance.numList,
      'objectList': instance.objectList,
      'dynamicList': instance.dynamicList,
      'boolSet': instance.boolSet?.toList(),
      'enumValue': _$TestEnumEnumMap[instance.enumValue]!,
      'nullableEnumValue': _$TestEnumEnumMap[instance.nullableEnumValue],
      'enumList': instance.enumList.map((e) => _$TestEnumEnumMap[e]!).toList(),
      'nullableEnumList':
          instance.nullableEnumList?.map((e) => _$TestEnumEnumMap[e]!).toList(),
    };

const _$TestEnumEnumMap = {
  TestEnum.one: 'one',
  TestEnum.two: 'two',
  TestEnum.three: 'three',
};

EmptyModel _$EmptyModelFromJson(Map<String, dynamic> json) => EmptyModel();

const _$EmptyModelFieldMap = <String, String>{};

// ignore: unused_element
abstract class _$EmptyModelPerFieldToJson {}

Map<String, dynamic> _$EmptyModelToJson(EmptyModel instance) =>
    <String, dynamic>{};

MinValidation _$MinValidationFromJson(Map<String, dynamic> json) =>
    MinValidation(
      json['intNbr'] as int,
      (json['doubleNbr'] as num).toDouble(),
      json['numNbr'] as num,
    );

const _$MinValidationFieldMap = <String, String>{
  'intNbr': 'intNbr',
  'doubleNbr': 'doubleNbr',
  'numNbr': 'numNbr',
};

// ignore: unused_element
abstract class _$MinValidationPerFieldToJson {
  // ignore: unused_element
  static Object? intNbr(int instance) => instance;
  // ignore: unused_element
  static Object? doubleNbr(double instance) => instance;
  // ignore: unused_element
  static Object? numNbr(num instance) => instance;
}

Map<String, dynamic> _$MinValidationToJson(MinValidation instance) =>
    <String, dynamic>{
      'intNbr': instance.intNbr,
      'doubleNbr': instance.doubleNbr,
      'numNbr': instance.numNbr,
    };

Root _$RootFromJson(Map<String, dynamic> json) => Root(
      json['nonNullable'] as String,
      json['nullable'] as int?,
    );

const _$RootFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

// ignore: unused_element
abstract class _$RootPerFieldToJson {
  // ignore: unused_element
  static Object? nonNullable(String instance) => instance;
  // ignore: unused_element
  static Object? nullable(int? instance) => instance;
}

Map<String, dynamic> _$RootToJson(Root instance) => <String, dynamic>{
      'nonNullable': instance.nonNullable,
      'nullable': instance.nullable,
    };

OptionalJson _$OptionalJsonFromJson(Map<String, dynamic> json) => OptionalJson(
      json['value'] as int,
    );

const _$OptionalJsonFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$OptionalJsonPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
}

Map<String, dynamic> _$OptionalJsonToJson(OptionalJson instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

MixedJson _$MixedJsonFromJson(Map<String, dynamic> json) => MixedJson(
      json['value'] as int,
    );

const _$MixedJsonFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$MixedJsonPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
}

Map<String, dynamic> _$MixedJsonToJson(MixedJson instance) => <String, dynamic>{
      'value': instance.value,
    };

Sub _$SubFromJson(Map<String, dynamic> json) => Sub(
      json['nonNullable'] as String,
      json['nullable'] as int?,
    );

const _$SubFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

// ignore: unused_element
abstract class _$SubPerFieldToJson {
  // ignore: unused_element
  static Object? nonNullable(String instance) => instance;
  // ignore: unused_element
  static Object? nullable(int? instance) => instance;
}

Map<String, dynamic> _$SubToJson(Sub instance) => <String, dynamic>{
      'nonNullable': instance.nonNullable,
      'nullable': instance.nullable,
    };

CustomSubName _$CustomSubNameFromJson(Map<String, dynamic> json) =>
    CustomSubName(
      json['value'] as num,
    );

const _$CustomSubNameFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$CustomSubNamePerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$CustomSubNameToJson(CustomSubName instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

AsCamelCase _$AsCamelCaseFromJson(Map<String, dynamic> json) => AsCamelCase(
      json['value'] as num,
    );

const _$AsCamelCaseFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$AsCamelCasePerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$AsCamelCaseToJson(AsCamelCase instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

CustomClassPrefix _$CustomClassPrefixFromJson(Map<String, dynamic> json) =>
    CustomClassPrefix(
      json['value'] as num,
    );

const _$CustomClassPrefixFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$CustomClassPrefixPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$CustomClassPrefixToJson(CustomClassPrefix instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

ExplicitPath _$ExplicitPathFromJson(Map<String, dynamic> json) => ExplicitPath(
      json['value'] as num,
    );

const _$ExplicitPathFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$ExplicitPathPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$ExplicitPathToJson(ExplicitPath instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

ExplicitSubPath _$ExplicitSubPathFromJson(Map<String, dynamic> json) =>
    ExplicitSubPath(
      json['value'] as num,
    );

const _$ExplicitSubPathFieldMap = <String, String>{
  'value': 'value',
};

// ignore: unused_element
abstract class _$ExplicitSubPathPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$ExplicitSubPathToJson(ExplicitSubPath instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
