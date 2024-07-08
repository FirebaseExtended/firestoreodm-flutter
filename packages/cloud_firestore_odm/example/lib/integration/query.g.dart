// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'query.dart';

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
abstract class DurationQueryCollectionReference
    implements
        DurationQueryQuery,
        FirestoreCollectionReference<DurationQuery,
            DurationQueryQuerySnapshot> {
  factory DurationQueryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$DurationQueryCollectionReference;

  static DurationQuery fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$DurationQueryFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    DurationQuery value,
    SetOptions? options,
  ) {
    return _$DurationQueryToJson(value);
  }

  @override
  CollectionReference<DurationQuery> get reference;

  @override
  DurationQueryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<DurationQueryDocumentReference> add(DurationQuery value);
}

class _$DurationQueryCollectionReference extends _$DurationQueryQuery
    implements DurationQueryCollectionReference {
  factory _$DurationQueryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$DurationQueryCollectionReference._(
      firestore.collection('firestore-example-app/42/duration').withConverter(
            fromFirestore: DurationQueryCollectionReference.fromFirestore,
            toFirestore: DurationQueryCollectionReference.toFirestore,
          ),
    );
  }

  _$DurationQueryCollectionReference._(
    CollectionReference<DurationQuery> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<DurationQuery> get reference =>
      super.reference as CollectionReference<DurationQuery>;

  @override
  DurationQueryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return DurationQueryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<DurationQueryDocumentReference> add(DurationQuery value) {
    return reference
        .add(value)
        .then((ref) => DurationQueryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$DurationQueryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class DurationQueryDocumentReference
    extends FirestoreDocumentReference<DurationQuery,
        DurationQueryDocumentSnapshot> {
  factory DurationQueryDocumentReference(
          DocumentReference<DurationQuery> reference) =
      _$DurationQueryDocumentReference;

  DocumentReference<DurationQuery> get reference;

  /// A reference to the [DurationQueryCollectionReference] containing this document.
  DurationQueryCollectionReference get parent {
    return _$DurationQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DurationQueryDocumentSnapshot> snapshots();

  @override
  Future<DurationQueryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Duration duration,
    FieldValue durationFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Duration duration,
    FieldValue durationFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    Duration duration,
    FieldValue durationFieldValue,
  });
}

class _$DurationQueryDocumentReference extends FirestoreDocumentReference<
    DurationQuery,
    DurationQueryDocumentSnapshot> implements DurationQueryDocumentReference {
  _$DurationQueryDocumentReference(this.reference);

  @override
  final DocumentReference<DurationQuery> reference;

  /// A reference to the [DurationQueryCollectionReference] containing this document.
  DurationQueryCollectionReference get parent {
    return _$DurationQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DurationQueryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(DurationQueryDocumentSnapshot._);
  }

  @override
  Future<DurationQueryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(DurationQueryDocumentSnapshot._);
  }

  @override
  Future<DurationQueryDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(DurationQueryDocumentSnapshot._);
  }

  Future<void> update({
    Object? duration = _sentinel,
    FieldValue? durationFieldValue,
  }) async {
    assert(
      duration == _sentinel || durationFieldValue == null,
      "Cannot specify both duration and durationFieldValue",
    );
    final json = {
      if (duration != _sentinel)
        _$DurationQueryFieldMap['duration']!:
            _$DurationQueryPerFieldToJson.duration(duration as Duration),
      if (durationFieldValue != null)
        _$DurationQueryFieldMap['duration']!: durationFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? duration = _sentinel,
    FieldValue? durationFieldValue,
  }) {
    assert(
      duration == _sentinel || durationFieldValue == null,
      "Cannot specify both duration and durationFieldValue",
    );
    final json = {
      if (duration != _sentinel)
        _$DurationQueryFieldMap['duration']!:
            _$DurationQueryPerFieldToJson.duration(duration as Duration),
      if (durationFieldValue != null)
        _$DurationQueryFieldMap['duration']!: durationFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? duration = _sentinel,
    FieldValue? durationFieldValue,
  }) {
    assert(
      duration == _sentinel || durationFieldValue == null,
      "Cannot specify both duration and durationFieldValue",
    );
    final json = {
      if (duration != _sentinel)
        _$DurationQueryFieldMap['duration']!:
            _$DurationQueryPerFieldToJson.duration(duration as Duration),
      if (durationFieldValue != null)
        _$DurationQueryFieldMap['duration']!: durationFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is DurationQueryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class DurationQueryQuery
    implements QueryReference<DurationQuery, DurationQueryQuerySnapshot> {
  @override
  DurationQueryQuery limit(int limit);

  @override
  DurationQueryQuery limitToLast(int limit);

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
  DurationQueryQuery whereFieldPath(
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

  DurationQueryQuery whereDocumentId({
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

  DurationQueryQuery whereDuration({
    Duration? isEqualTo,
    Duration? isNotEqualTo,
    Duration? isLessThan,
    Duration? isLessThanOrEqualTo,
    Duration? isGreaterThan,
    Duration? isGreaterThanOrEqualTo,
    List<Duration>? whereIn,
    List<Duration>? whereNotIn,
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
  DurationQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
  });

  DurationQueryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
  });

  DurationQueryQuery orderByDuration({
    bool descending = false,
    Duration startAt,
    Duration startAfter,
    Duration endAt,
    Duration endBefore,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
  });
}

class _$DurationQueryQuery
    extends QueryReference<DurationQuery, DurationQueryQuerySnapshot>
    implements DurationQueryQuery {
  _$DurationQueryQuery(
    this._collection, {
    required Query<DurationQuery> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<DurationQueryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(DurationQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<DurationQueryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(DurationQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  DurationQueryQuery limit(int limit) {
    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DurationQueryQuery limitToLast(int limit) {
    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DurationQueryQuery whereFieldPath(
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
    return _$DurationQueryQuery(
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
  DurationQueryQuery whereDocumentId({
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
    return _$DurationQueryQuery(
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
  DurationQueryQuery whereDuration({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Duration>? whereIn,
    List<Duration>? whereNotIn,
    bool? isNull,
  }) {
    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DurationQueryFieldMap['duration']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$DurationQueryPerFieldToJson.duration(isEqualTo as Duration)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$DurationQueryPerFieldToJson.duration(isNotEqualTo as Duration)
            : null,
        isLessThan: isLessThan != null
            ? _$DurationQueryPerFieldToJson.duration(isLessThan as Duration)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$DurationQueryPerFieldToJson
                .duration(isLessThanOrEqualTo as Duration)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$DurationQueryPerFieldToJson.duration(isGreaterThan as Duration)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$DurationQueryPerFieldToJson
                .duration(isGreaterThanOrEqualTo as Duration)
            : null,
        whereIn: whereIn?.map((e) => _$DurationQueryPerFieldToJson.duration(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$DurationQueryPerFieldToJson.duration(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DurationQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
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

    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DurationQueryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
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

    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DurationQueryQuery orderByDuration({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DurationQueryDocumentSnapshot? startAtDocument,
    DurationQueryDocumentSnapshot? endAtDocument,
    DurationQueryDocumentSnapshot? endBeforeDocument,
    DurationQueryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DurationQueryFieldMap['duration']!, descending: descending);
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

    return _$DurationQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$DurationQueryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class DurationQueryDocumentSnapshot
    extends FirestoreDocumentSnapshot<DurationQuery> {
  DurationQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<DurationQuery> snapshot;

  @override
  DurationQueryDocumentReference get reference {
    return DurationQueryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final DurationQuery? data;
}

class DurationQueryQuerySnapshot extends FirestoreQuerySnapshot<DurationQuery,
    DurationQueryQueryDocumentSnapshot> {
  DurationQueryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory DurationQueryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<DurationQuery> snapshot,
  ) {
    final docs =
        snapshot.docs.map(DurationQueryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        DurationQueryDocumentSnapshot._,
      );
    }).toList();

    return DurationQueryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<DurationQueryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    DurationQueryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<DurationQueryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<DurationQuery> snapshot;

  @override
  final List<DurationQueryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<DurationQueryDocumentSnapshot>> docChanges;
}

class DurationQueryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<DurationQuery>
    implements DurationQueryDocumentSnapshot {
  DurationQueryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<DurationQuery> snapshot;

  @override
  final DurationQuery data;

  @override
  DurationQueryDocumentReference get reference {
    return DurationQueryDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class DateTimeQueryCollectionReference
    implements
        DateTimeQueryQuery,
        FirestoreCollectionReference<DateTimeQuery,
            DateTimeQueryQuerySnapshot> {
  factory DateTimeQueryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$DateTimeQueryCollectionReference;

  static DateTimeQuery fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$DateTimeQueryFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    DateTimeQuery value,
    SetOptions? options,
  ) {
    return _$DateTimeQueryToJson(value);
  }

  @override
  CollectionReference<DateTimeQuery> get reference;

  @override
  DateTimeQueryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<DateTimeQueryDocumentReference> add(DateTimeQuery value);
}

class _$DateTimeQueryCollectionReference extends _$DateTimeQueryQuery
    implements DateTimeQueryCollectionReference {
  factory _$DateTimeQueryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$DateTimeQueryCollectionReference._(
      firestore.collection('firestore-example-app/42/date-time').withConverter(
            fromFirestore: DateTimeQueryCollectionReference.fromFirestore,
            toFirestore: DateTimeQueryCollectionReference.toFirestore,
          ),
    );
  }

  _$DateTimeQueryCollectionReference._(
    CollectionReference<DateTimeQuery> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<DateTimeQuery> get reference =>
      super.reference as CollectionReference<DateTimeQuery>;

  @override
  DateTimeQueryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return DateTimeQueryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<DateTimeQueryDocumentReference> add(DateTimeQuery value) {
    return reference
        .add(value)
        .then((ref) => DateTimeQueryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$DateTimeQueryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class DateTimeQueryDocumentReference
    extends FirestoreDocumentReference<DateTimeQuery,
        DateTimeQueryDocumentSnapshot> {
  factory DateTimeQueryDocumentReference(
          DocumentReference<DateTimeQuery> reference) =
      _$DateTimeQueryDocumentReference;

  DocumentReference<DateTimeQuery> get reference;

  /// A reference to the [DateTimeQueryCollectionReference] containing this document.
  DateTimeQueryCollectionReference get parent {
    return _$DateTimeQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DateTimeQueryDocumentSnapshot> snapshots();

  @override
  Future<DateTimeQueryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    DateTime time,
    FieldValue timeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    DateTime time,
    FieldValue timeFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    DateTime time,
    FieldValue timeFieldValue,
  });
}

class _$DateTimeQueryDocumentReference extends FirestoreDocumentReference<
    DateTimeQuery,
    DateTimeQueryDocumentSnapshot> implements DateTimeQueryDocumentReference {
  _$DateTimeQueryDocumentReference(this.reference);

  @override
  final DocumentReference<DateTimeQuery> reference;

  /// A reference to the [DateTimeQueryCollectionReference] containing this document.
  DateTimeQueryCollectionReference get parent {
    return _$DateTimeQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DateTimeQueryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(DateTimeQueryDocumentSnapshot._);
  }

  @override
  Future<DateTimeQueryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(DateTimeQueryDocumentSnapshot._);
  }

  @override
  Future<DateTimeQueryDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(DateTimeQueryDocumentSnapshot._);
  }

  Future<void> update({
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) async {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$DateTimeQueryFieldMap['time']!:
            _$DateTimeQueryPerFieldToJson.time(time as DateTime),
      if (timeFieldValue != null)
        _$DateTimeQueryFieldMap['time']!: timeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$DateTimeQueryFieldMap['time']!:
            _$DateTimeQueryPerFieldToJson.time(time as DateTime),
      if (timeFieldValue != null)
        _$DateTimeQueryFieldMap['time']!: timeFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$DateTimeQueryFieldMap['time']!:
            _$DateTimeQueryPerFieldToJson.time(time as DateTime),
      if (timeFieldValue != null)
        _$DateTimeQueryFieldMap['time']!: timeFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is DateTimeQueryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class DateTimeQueryQuery
    implements QueryReference<DateTimeQuery, DateTimeQueryQuerySnapshot> {
  @override
  DateTimeQueryQuery limit(int limit);

  @override
  DateTimeQueryQuery limitToLast(int limit);

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
  DateTimeQueryQuery whereFieldPath(
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

  DateTimeQueryQuery whereDocumentId({
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

  DateTimeQueryQuery whereTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
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
  DateTimeQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
  });

  DateTimeQueryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
  });

  DateTimeQueryQuery orderByTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
  });
}

class _$DateTimeQueryQuery
    extends QueryReference<DateTimeQuery, DateTimeQueryQuerySnapshot>
    implements DateTimeQueryQuery {
  _$DateTimeQueryQuery(
    this._collection, {
    required Query<DateTimeQuery> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<DateTimeQueryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(DateTimeQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<DateTimeQueryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(DateTimeQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  DateTimeQueryQuery limit(int limit) {
    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DateTimeQueryQuery limitToLast(int limit) {
    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DateTimeQueryQuery whereFieldPath(
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
    return _$DateTimeQueryQuery(
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
  DateTimeQueryQuery whereDocumentId({
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
    return _$DateTimeQueryQuery(
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
  DateTimeQueryQuery whereTime({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DateTimeQueryFieldMap['time']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$DateTimeQueryPerFieldToJson.time(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$DateTimeQueryPerFieldToJson.time(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$DateTimeQueryPerFieldToJson.time(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$DateTimeQueryPerFieldToJson
                .time(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$DateTimeQueryPerFieldToJson.time(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$DateTimeQueryPerFieldToJson
                .time(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$DateTimeQueryPerFieldToJson.time(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$DateTimeQueryPerFieldToJson.time(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DateTimeQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
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

    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DateTimeQueryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
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

    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DateTimeQueryQuery orderByTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DateTimeQueryDocumentSnapshot? startAtDocument,
    DateTimeQueryDocumentSnapshot? endAtDocument,
    DateTimeQueryDocumentSnapshot? endBeforeDocument,
    DateTimeQueryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DateTimeQueryFieldMap['time']!, descending: descending);
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

    return _$DateTimeQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$DateTimeQueryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class DateTimeQueryDocumentSnapshot
    extends FirestoreDocumentSnapshot<DateTimeQuery> {
  DateTimeQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<DateTimeQuery> snapshot;

  @override
  DateTimeQueryDocumentReference get reference {
    return DateTimeQueryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final DateTimeQuery? data;
}

class DateTimeQueryQuerySnapshot extends FirestoreQuerySnapshot<DateTimeQuery,
    DateTimeQueryQueryDocumentSnapshot> {
  DateTimeQueryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory DateTimeQueryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<DateTimeQuery> snapshot,
  ) {
    final docs =
        snapshot.docs.map(DateTimeQueryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        DateTimeQueryDocumentSnapshot._,
      );
    }).toList();

    return DateTimeQueryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<DateTimeQueryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    DateTimeQueryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<DateTimeQueryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<DateTimeQuery> snapshot;

  @override
  final List<DateTimeQueryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<DateTimeQueryDocumentSnapshot>> docChanges;
}

class DateTimeQueryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<DateTimeQuery>
    implements DateTimeQueryDocumentSnapshot {
  DateTimeQueryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<DateTimeQuery> snapshot;

  @override
  final DateTimeQuery data;

  @override
  DateTimeQueryDocumentReference get reference {
    return DateTimeQueryDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TimestampQueryCollectionReference
    implements
        TimestampQueryQuery,
        FirestoreCollectionReference<TimestampQuery,
            TimestampQueryQuerySnapshot> {
  factory TimestampQueryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TimestampQueryCollectionReference;

  static TimestampQuery fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$TimestampQueryFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    TimestampQuery value,
    SetOptions? options,
  ) {
    return _$TimestampQueryToJson(value);
  }

  @override
  CollectionReference<TimestampQuery> get reference;

  @override
  TimestampQueryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TimestampQueryDocumentReference> add(TimestampQuery value);
}

class _$TimestampQueryCollectionReference extends _$TimestampQueryQuery
    implements TimestampQueryCollectionReference {
  factory _$TimestampQueryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TimestampQueryCollectionReference._(
      firestore
          .collection('firestore-example-app/42/timestamp-time')
          .withConverter(
            fromFirestore: TimestampQueryCollectionReference.fromFirestore,
            toFirestore: TimestampQueryCollectionReference.toFirestore,
          ),
    );
  }

  _$TimestampQueryCollectionReference._(
    CollectionReference<TimestampQuery> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<TimestampQuery> get reference =>
      super.reference as CollectionReference<TimestampQuery>;

  @override
  TimestampQueryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TimestampQueryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TimestampQueryDocumentReference> add(TimestampQuery value) {
    return reference
        .add(value)
        .then((ref) => TimestampQueryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TimestampQueryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TimestampQueryDocumentReference
    extends FirestoreDocumentReference<TimestampQuery,
        TimestampQueryDocumentSnapshot> {
  factory TimestampQueryDocumentReference(
          DocumentReference<TimestampQuery> reference) =
      _$TimestampQueryDocumentReference;

  DocumentReference<TimestampQuery> get reference;

  /// A reference to the [TimestampQueryCollectionReference] containing this document.
  TimestampQueryCollectionReference get parent {
    return _$TimestampQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<TimestampQueryDocumentSnapshot> snapshots();

  @override
  Future<TimestampQueryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Timestamp time,
    FieldValue timeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Timestamp time,
    FieldValue timeFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    Timestamp time,
    FieldValue timeFieldValue,
  });
}

class _$TimestampQueryDocumentReference extends FirestoreDocumentReference<
    TimestampQuery,
    TimestampQueryDocumentSnapshot> implements TimestampQueryDocumentReference {
  _$TimestampQueryDocumentReference(this.reference);

  @override
  final DocumentReference<TimestampQuery> reference;

  /// A reference to the [TimestampQueryCollectionReference] containing this document.
  TimestampQueryCollectionReference get parent {
    return _$TimestampQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<TimestampQueryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TimestampQueryDocumentSnapshot._);
  }

  @override
  Future<TimestampQueryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TimestampQueryDocumentSnapshot._);
  }

  @override
  Future<TimestampQueryDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(TimestampQueryDocumentSnapshot._);
  }

  Future<void> update({
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) async {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$TimestampQueryFieldMap['time']!:
            _$TimestampQueryPerFieldToJson.time(time as Timestamp),
      if (timeFieldValue != null)
        _$TimestampQueryFieldMap['time']!: timeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$TimestampQueryFieldMap['time']!:
            _$TimestampQueryPerFieldToJson.time(time as Timestamp),
      if (timeFieldValue != null)
        _$TimestampQueryFieldMap['time']!: timeFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? time = _sentinel,
    FieldValue? timeFieldValue,
  }) {
    assert(
      time == _sentinel || timeFieldValue == null,
      "Cannot specify both time and timeFieldValue",
    );
    final json = {
      if (time != _sentinel)
        _$TimestampQueryFieldMap['time']!:
            _$TimestampQueryPerFieldToJson.time(time as Timestamp),
      if (timeFieldValue != null)
        _$TimestampQueryFieldMap['time']!: timeFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TimestampQueryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TimestampQueryQuery
    implements QueryReference<TimestampQuery, TimestampQueryQuerySnapshot> {
  @override
  TimestampQueryQuery limit(int limit);

  @override
  TimestampQueryQuery limitToLast(int limit);

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
  TimestampQueryQuery whereFieldPath(
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

  TimestampQueryQuery whereDocumentId({
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

  TimestampQueryQuery whereTime({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
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
  TimestampQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
  });

  TimestampQueryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
  });

  TimestampQueryQuery orderByTime({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
  });
}

class _$TimestampQueryQuery
    extends QueryReference<TimestampQuery, TimestampQueryQuerySnapshot>
    implements TimestampQueryQuery {
  _$TimestampQueryQuery(
    this._collection, {
    required Query<TimestampQuery> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TimestampQueryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(TimestampQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TimestampQueryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(TimestampQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TimestampQueryQuery limit(int limit) {
    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TimestampQueryQuery limitToLast(int limit) {
    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TimestampQueryQuery whereFieldPath(
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
    return _$TimestampQueryQuery(
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
  TimestampQueryQuery whereDocumentId({
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
    return _$TimestampQueryQuery(
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
  TimestampQueryQuery whereTime({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
    bool? isNull,
  }) {
    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimestampQueryFieldMap['time']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TimestampQueryPerFieldToJson.time(isEqualTo as Timestamp)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TimestampQueryPerFieldToJson.time(isNotEqualTo as Timestamp)
            : null,
        isLessThan: isLessThan != null
            ? _$TimestampQueryPerFieldToJson.time(isLessThan as Timestamp)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TimestampQueryPerFieldToJson
                .time(isLessThanOrEqualTo as Timestamp)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TimestampQueryPerFieldToJson.time(isGreaterThan as Timestamp)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TimestampQueryPerFieldToJson
                .time(isGreaterThanOrEqualTo as Timestamp)
            : null,
        whereIn: whereIn?.map((e) => _$TimestampQueryPerFieldToJson.time(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TimestampQueryPerFieldToJson.time(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TimestampQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
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

    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TimestampQueryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
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

    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TimestampQueryQuery orderByTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimestampQueryDocumentSnapshot? startAtDocument,
    TimestampQueryDocumentSnapshot? endAtDocument,
    TimestampQueryDocumentSnapshot? endBeforeDocument,
    TimestampQueryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TimestampQueryFieldMap['time']!, descending: descending);
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

    return _$TimestampQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TimestampQueryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TimestampQueryDocumentSnapshot
    extends FirestoreDocumentSnapshot<TimestampQuery> {
  TimestampQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<TimestampQuery> snapshot;

  @override
  TimestampQueryDocumentReference get reference {
    return TimestampQueryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final TimestampQuery? data;
}

class TimestampQueryQuerySnapshot extends FirestoreQuerySnapshot<TimestampQuery,
    TimestampQueryQueryDocumentSnapshot> {
  TimestampQueryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TimestampQueryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<TimestampQuery> snapshot,
  ) {
    final docs =
        snapshot.docs.map(TimestampQueryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TimestampQueryDocumentSnapshot._,
      );
    }).toList();

    return TimestampQueryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TimestampQueryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TimestampQueryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TimestampQueryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<TimestampQuery> snapshot;

  @override
  final List<TimestampQueryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TimestampQueryDocumentSnapshot>>
      docChanges;
}

class TimestampQueryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<TimestampQuery>
    implements TimestampQueryDocumentSnapshot {
  TimestampQueryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<TimestampQuery> snapshot;

  @override
  final TimestampQuery data;

  @override
  TimestampQueryDocumentReference get reference {
    return TimestampQueryDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class GeoPointQueryCollectionReference
    implements
        GeoPointQueryQuery,
        FirestoreCollectionReference<GeoPointQuery,
            GeoPointQueryQuerySnapshot> {
  factory GeoPointQueryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$GeoPointQueryCollectionReference;

  static GeoPointQuery fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$GeoPointQueryFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    GeoPointQuery value,
    SetOptions? options,
  ) {
    return _$GeoPointQueryToJson(value);
  }

  @override
  CollectionReference<GeoPointQuery> get reference;

  @override
  GeoPointQueryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<GeoPointQueryDocumentReference> add(GeoPointQuery value);
}

class _$GeoPointQueryCollectionReference extends _$GeoPointQueryQuery
    implements GeoPointQueryCollectionReference {
  factory _$GeoPointQueryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$GeoPointQueryCollectionReference._(
      firestore
          .collection('firestore-example-app/42/geopoint-time')
          .withConverter(
            fromFirestore: GeoPointQueryCollectionReference.fromFirestore,
            toFirestore: GeoPointQueryCollectionReference.toFirestore,
          ),
    );
  }

  _$GeoPointQueryCollectionReference._(
    CollectionReference<GeoPointQuery> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<GeoPointQuery> get reference =>
      super.reference as CollectionReference<GeoPointQuery>;

  @override
  GeoPointQueryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return GeoPointQueryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<GeoPointQueryDocumentReference> add(GeoPointQuery value) {
    return reference
        .add(value)
        .then((ref) => GeoPointQueryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$GeoPointQueryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class GeoPointQueryDocumentReference
    extends FirestoreDocumentReference<GeoPointQuery,
        GeoPointQueryDocumentSnapshot> {
  factory GeoPointQueryDocumentReference(
          DocumentReference<GeoPointQuery> reference) =
      _$GeoPointQueryDocumentReference;

  DocumentReference<GeoPointQuery> get reference;

  /// A reference to the [GeoPointQueryCollectionReference] containing this document.
  GeoPointQueryCollectionReference get parent {
    return _$GeoPointQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<GeoPointQueryDocumentSnapshot> snapshots();

  @override
  Future<GeoPointQueryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    GeoPoint point,
    FieldValue pointFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    GeoPoint point,
    FieldValue pointFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    GeoPoint point,
    FieldValue pointFieldValue,
  });
}

class _$GeoPointQueryDocumentReference extends FirestoreDocumentReference<
    GeoPointQuery,
    GeoPointQueryDocumentSnapshot> implements GeoPointQueryDocumentReference {
  _$GeoPointQueryDocumentReference(this.reference);

  @override
  final DocumentReference<GeoPointQuery> reference;

  /// A reference to the [GeoPointQueryCollectionReference] containing this document.
  GeoPointQueryCollectionReference get parent {
    return _$GeoPointQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<GeoPointQueryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(GeoPointQueryDocumentSnapshot._);
  }

  @override
  Future<GeoPointQueryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(GeoPointQueryDocumentSnapshot._);
  }

  @override
  Future<GeoPointQueryDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(GeoPointQueryDocumentSnapshot._);
  }

  Future<void> update({
    Object? point = _sentinel,
    FieldValue? pointFieldValue,
  }) async {
    assert(
      point == _sentinel || pointFieldValue == null,
      "Cannot specify both point and pointFieldValue",
    );
    final json = {
      if (point != _sentinel)
        _$GeoPointQueryFieldMap['point']!:
            _$GeoPointQueryPerFieldToJson.point(point as GeoPoint),
      if (pointFieldValue != null)
        _$GeoPointQueryFieldMap['point']!: pointFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? point = _sentinel,
    FieldValue? pointFieldValue,
  }) {
    assert(
      point == _sentinel || pointFieldValue == null,
      "Cannot specify both point and pointFieldValue",
    );
    final json = {
      if (point != _sentinel)
        _$GeoPointQueryFieldMap['point']!:
            _$GeoPointQueryPerFieldToJson.point(point as GeoPoint),
      if (pointFieldValue != null)
        _$GeoPointQueryFieldMap['point']!: pointFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? point = _sentinel,
    FieldValue? pointFieldValue,
  }) {
    assert(
      point == _sentinel || pointFieldValue == null,
      "Cannot specify both point and pointFieldValue",
    );
    final json = {
      if (point != _sentinel)
        _$GeoPointQueryFieldMap['point']!:
            _$GeoPointQueryPerFieldToJson.point(point as GeoPoint),
      if (pointFieldValue != null)
        _$GeoPointQueryFieldMap['point']!: pointFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is GeoPointQueryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class GeoPointQueryQuery
    implements QueryReference<GeoPointQuery, GeoPointQueryQuerySnapshot> {
  @override
  GeoPointQueryQuery limit(int limit);

  @override
  GeoPointQueryQuery limitToLast(int limit);

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
  GeoPointQueryQuery whereFieldPath(
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

  GeoPointQueryQuery whereDocumentId({
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

  GeoPointQueryQuery wherePoint({
    GeoPoint? isEqualTo,
    GeoPoint? isNotEqualTo,
    GeoPoint? isLessThan,
    GeoPoint? isLessThanOrEqualTo,
    GeoPoint? isGreaterThan,
    GeoPoint? isGreaterThanOrEqualTo,
    List<GeoPoint>? whereIn,
    List<GeoPoint>? whereNotIn,
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
  GeoPointQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
  });

  GeoPointQueryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
  });

  GeoPointQueryQuery orderByPoint({
    bool descending = false,
    GeoPoint startAt,
    GeoPoint startAfter,
    GeoPoint endAt,
    GeoPoint endBefore,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
  });
}

class _$GeoPointQueryQuery
    extends QueryReference<GeoPointQuery, GeoPointQueryQuerySnapshot>
    implements GeoPointQueryQuery {
  _$GeoPointQueryQuery(
    this._collection, {
    required Query<GeoPointQuery> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<GeoPointQueryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(GeoPointQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<GeoPointQueryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(GeoPointQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  GeoPointQueryQuery limit(int limit) {
    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GeoPointQueryQuery limitToLast(int limit) {
    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GeoPointQueryQuery whereFieldPath(
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
    return _$GeoPointQueryQuery(
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
  GeoPointQueryQuery whereDocumentId({
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
    return _$GeoPointQueryQuery(
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
  GeoPointQueryQuery wherePoint({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<GeoPoint>? whereIn,
    List<GeoPoint>? whereNotIn,
    bool? isNull,
  }) {
    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GeoPointQueryFieldMap['point']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GeoPointQueryPerFieldToJson.point(isEqualTo as GeoPoint)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GeoPointQueryPerFieldToJson.point(isNotEqualTo as GeoPoint)
            : null,
        isLessThan: isLessThan != null
            ? _$GeoPointQueryPerFieldToJson.point(isLessThan as GeoPoint)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GeoPointQueryPerFieldToJson
                .point(isLessThanOrEqualTo as GeoPoint)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GeoPointQueryPerFieldToJson.point(isGreaterThan as GeoPoint)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GeoPointQueryPerFieldToJson
                .point(isGreaterThanOrEqualTo as GeoPoint)
            : null,
        whereIn: whereIn?.map((e) => _$GeoPointQueryPerFieldToJson.point(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GeoPointQueryPerFieldToJson.point(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GeoPointQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
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

    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GeoPointQueryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
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

    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GeoPointQueryQuery orderByPoint({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GeoPointQueryDocumentSnapshot? startAtDocument,
    GeoPointQueryDocumentSnapshot? endAtDocument,
    GeoPointQueryDocumentSnapshot? endBeforeDocument,
    GeoPointQueryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GeoPointQueryFieldMap['point']!, descending: descending);
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

    return _$GeoPointQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$GeoPointQueryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class GeoPointQueryDocumentSnapshot
    extends FirestoreDocumentSnapshot<GeoPointQuery> {
  GeoPointQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<GeoPointQuery> snapshot;

  @override
  GeoPointQueryDocumentReference get reference {
    return GeoPointQueryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final GeoPointQuery? data;
}

class GeoPointQueryQuerySnapshot extends FirestoreQuerySnapshot<GeoPointQuery,
    GeoPointQueryQueryDocumentSnapshot> {
  GeoPointQueryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory GeoPointQueryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<GeoPointQuery> snapshot,
  ) {
    final docs =
        snapshot.docs.map(GeoPointQueryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        GeoPointQueryDocumentSnapshot._,
      );
    }).toList();

    return GeoPointQueryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<GeoPointQueryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    GeoPointQueryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<GeoPointQueryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<GeoPointQuery> snapshot;

  @override
  final List<GeoPointQueryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<GeoPointQueryDocumentSnapshot>> docChanges;
}

class GeoPointQueryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<GeoPointQuery>
    implements GeoPointQueryDocumentSnapshot {
  GeoPointQueryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<GeoPointQuery> snapshot;

  @override
  final GeoPointQuery data;

  @override
  GeoPointQueryDocumentReference get reference {
    return GeoPointQueryDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class DocumentReferenceQueryCollectionReference
    implements
        DocumentReferenceQueryQuery,
        FirestoreCollectionReference<DocumentReferenceQuery,
            DocumentReferenceQueryQuerySnapshot> {
  factory DocumentReferenceQueryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$DocumentReferenceQueryCollectionReference;

  static DocumentReferenceQuery fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$DocumentReferenceQueryFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    DocumentReferenceQuery value,
    SetOptions? options,
  ) {
    return _$DocumentReferenceQueryToJson(value);
  }

  @override
  CollectionReference<DocumentReferenceQuery> get reference;

  @override
  DocumentReferenceQueryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<DocumentReferenceQueryDocumentReference> add(
      DocumentReferenceQuery value);
}

class _$DocumentReferenceQueryCollectionReference
    extends _$DocumentReferenceQueryQuery
    implements DocumentReferenceQueryCollectionReference {
  factory _$DocumentReferenceQueryCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$DocumentReferenceQueryCollectionReference._(
      firestore.collection('firestore-example-app/42/doc-ref').withConverter(
            fromFirestore:
                DocumentReferenceQueryCollectionReference.fromFirestore,
            toFirestore: DocumentReferenceQueryCollectionReference.toFirestore,
          ),
    );
  }

  _$DocumentReferenceQueryCollectionReference._(
    CollectionReference<DocumentReferenceQuery> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<DocumentReferenceQuery> get reference =>
      super.reference as CollectionReference<DocumentReferenceQuery>;

  @override
  DocumentReferenceQueryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return DocumentReferenceQueryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<DocumentReferenceQueryDocumentReference> add(
      DocumentReferenceQuery value) {
    return reference
        .add(value)
        .then((ref) => DocumentReferenceQueryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$DocumentReferenceQueryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class DocumentReferenceQueryDocumentReference
    extends FirestoreDocumentReference<DocumentReferenceQuery,
        DocumentReferenceQueryDocumentSnapshot> {
  factory DocumentReferenceQueryDocumentReference(
          DocumentReference<DocumentReferenceQuery> reference) =
      _$DocumentReferenceQueryDocumentReference;

  DocumentReference<DocumentReferenceQuery> get reference;

  /// A reference to the [DocumentReferenceQueryCollectionReference] containing this document.
  DocumentReferenceQueryCollectionReference get parent {
    return _$DocumentReferenceQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DocumentReferenceQueryDocumentSnapshot> snapshots();

  @override
  Future<DocumentReferenceQueryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    DocumentReference<Map<String, dynamic>> ref,
    FieldValue refFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    DocumentReference<Map<String, dynamic>> ref,
    FieldValue refFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    DocumentReference<Map<String, dynamic>> ref,
    FieldValue refFieldValue,
  });
}

class _$DocumentReferenceQueryDocumentReference
    extends FirestoreDocumentReference<DocumentReferenceQuery,
        DocumentReferenceQueryDocumentSnapshot>
    implements DocumentReferenceQueryDocumentReference {
  _$DocumentReferenceQueryDocumentReference(this.reference);

  @override
  final DocumentReference<DocumentReferenceQuery> reference;

  /// A reference to the [DocumentReferenceQueryCollectionReference] containing this document.
  DocumentReferenceQueryCollectionReference get parent {
    return _$DocumentReferenceQueryCollectionReference(reference.firestore);
  }

  @override
  Stream<DocumentReferenceQueryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(DocumentReferenceQueryDocumentSnapshot._);
  }

  @override
  Future<DocumentReferenceQueryDocumentSnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(DocumentReferenceQueryDocumentSnapshot._);
  }

  @override
  Future<DocumentReferenceQueryDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(DocumentReferenceQueryDocumentSnapshot._);
  }

  Future<void> update({
    Object? ref = _sentinel,
    FieldValue? refFieldValue,
  }) async {
    assert(
      ref == _sentinel || refFieldValue == null,
      "Cannot specify both ref and refFieldValue",
    );
    final json = {
      if (ref != _sentinel)
        _$DocumentReferenceQueryFieldMap['ref']!:
            _$DocumentReferenceQueryPerFieldToJson
                .ref(ref as DocumentReference<Map<String, dynamic>>),
      if (refFieldValue != null)
        _$DocumentReferenceQueryFieldMap['ref']!: refFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? ref = _sentinel,
    FieldValue? refFieldValue,
  }) {
    assert(
      ref == _sentinel || refFieldValue == null,
      "Cannot specify both ref and refFieldValue",
    );
    final json = {
      if (ref != _sentinel)
        _$DocumentReferenceQueryFieldMap['ref']!:
            _$DocumentReferenceQueryPerFieldToJson
                .ref(ref as DocumentReference<Map<String, dynamic>>),
      if (refFieldValue != null)
        _$DocumentReferenceQueryFieldMap['ref']!: refFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? ref = _sentinel,
    FieldValue? refFieldValue,
  }) {
    assert(
      ref == _sentinel || refFieldValue == null,
      "Cannot specify both ref and refFieldValue",
    );
    final json = {
      if (ref != _sentinel)
        _$DocumentReferenceQueryFieldMap['ref']!:
            _$DocumentReferenceQueryPerFieldToJson
                .ref(ref as DocumentReference<Map<String, dynamic>>),
      if (refFieldValue != null)
        _$DocumentReferenceQueryFieldMap['ref']!: refFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is DocumentReferenceQueryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class DocumentReferenceQueryQuery
    implements
        QueryReference<DocumentReferenceQuery,
            DocumentReferenceQueryQuerySnapshot> {
  @override
  DocumentReferenceQueryQuery limit(int limit);

  @override
  DocumentReferenceQueryQuery limitToLast(int limit);

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
  DocumentReferenceQueryQuery whereFieldPath(
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

  DocumentReferenceQueryQuery whereDocumentId({
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

  DocumentReferenceQueryQuery whereRef({
    DocumentReference<Map<String, dynamic>>? isEqualTo,
    DocumentReference<Map<String, dynamic>>? isNotEqualTo,
    DocumentReference<Map<String, dynamic>>? isLessThan,
    DocumentReference<Map<String, dynamic>>? isLessThanOrEqualTo,
    DocumentReference<Map<String, dynamic>>? isGreaterThan,
    DocumentReference<Map<String, dynamic>>? isGreaterThanOrEqualTo,
    List<DocumentReference<Map<String, dynamic>>>? whereIn,
    List<DocumentReference<Map<String, dynamic>>>? whereNotIn,
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
  DocumentReferenceQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
  });

  DocumentReferenceQueryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
  });

  DocumentReferenceQueryQuery orderByRef({
    bool descending = false,
    DocumentReference<Map<String, dynamic>> startAt,
    DocumentReference<Map<String, dynamic>> startAfter,
    DocumentReference<Map<String, dynamic>> endAt,
    DocumentReference<Map<String, dynamic>> endBefore,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
  });
}

class _$DocumentReferenceQueryQuery extends QueryReference<
        DocumentReferenceQuery, DocumentReferenceQueryQuerySnapshot>
    implements DocumentReferenceQueryQuery {
  _$DocumentReferenceQueryQuery(
    this._collection, {
    required Query<DocumentReferenceQuery> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<DocumentReferenceQueryQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(DocumentReferenceQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<DocumentReferenceQueryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(DocumentReferenceQueryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  DocumentReferenceQueryQuery limit(int limit) {
    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DocumentReferenceQueryQuery limitToLast(int limit) {
    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DocumentReferenceQueryQuery whereFieldPath(
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
    return _$DocumentReferenceQueryQuery(
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
  DocumentReferenceQueryQuery whereDocumentId({
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
    return _$DocumentReferenceQueryQuery(
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
  DocumentReferenceQueryQuery whereRef({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DocumentReference<Map<String, dynamic>>>? whereIn,
    List<DocumentReference<Map<String, dynamic>>>? whereNotIn,
    bool? isNull,
  }) {
    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DocumentReferenceQueryFieldMap['ref']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$DocumentReferenceQueryPerFieldToJson
                .ref(isEqualTo as DocumentReference<Map<String, dynamic>>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$DocumentReferenceQueryPerFieldToJson
                .ref(isNotEqualTo as DocumentReference<Map<String, dynamic>>)
            : null,
        isLessThan: isLessThan != null
            ? _$DocumentReferenceQueryPerFieldToJson
                .ref(isLessThan as DocumentReference<Map<String, dynamic>>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$DocumentReferenceQueryPerFieldToJson.ref(
                isLessThanOrEqualTo as DocumentReference<Map<String, dynamic>>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$DocumentReferenceQueryPerFieldToJson
                .ref(isGreaterThan as DocumentReference<Map<String, dynamic>>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$DocumentReferenceQueryPerFieldToJson.ref(isGreaterThanOrEqualTo
                as DocumentReference<Map<String, dynamic>>)
            : null,
        whereIn:
            whereIn?.map((e) => _$DocumentReferenceQueryPerFieldToJson.ref(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$DocumentReferenceQueryPerFieldToJson.ref(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DocumentReferenceQueryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
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

    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DocumentReferenceQueryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
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

    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  DocumentReferenceQueryQuery orderByRef({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DocumentReferenceQueryDocumentSnapshot? startAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endAtDocument,
    DocumentReferenceQueryDocumentSnapshot? endBeforeDocument,
    DocumentReferenceQueryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$DocumentReferenceQueryFieldMap['ref']!,
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

    return _$DocumentReferenceQueryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$DocumentReferenceQueryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class DocumentReferenceQueryDocumentSnapshot
    extends FirestoreDocumentSnapshot<DocumentReferenceQuery> {
  DocumentReferenceQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final DocumentSnapshot<DocumentReferenceQuery> snapshot;

  @override
  DocumentReferenceQueryDocumentReference get reference {
    return DocumentReferenceQueryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final DocumentReferenceQuery? data;
}

class DocumentReferenceQueryQuerySnapshot extends FirestoreQuerySnapshot<
    DocumentReferenceQuery, DocumentReferenceQueryQueryDocumentSnapshot> {
  DocumentReferenceQueryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory DocumentReferenceQueryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<DocumentReferenceQuery> snapshot,
  ) {
    final docs = snapshot.docs
        .map(DocumentReferenceQueryQueryDocumentSnapshot._)
        .toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        DocumentReferenceQueryDocumentSnapshot._,
      );
    }).toList();

    return DocumentReferenceQueryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<DocumentReferenceQueryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    DocumentReferenceQueryDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<DocumentReferenceQueryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<DocumentReferenceQuery> snapshot;

  @override
  final List<DocumentReferenceQueryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<DocumentReferenceQueryDocumentSnapshot>>
      docChanges;
}

class DocumentReferenceQueryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<DocumentReferenceQuery>
    implements DocumentReferenceQueryDocumentSnapshot {
  DocumentReferenceQueryQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<DocumentReferenceQuery> snapshot;

  @override
  final DocumentReferenceQuery data;

  @override
  DocumentReferenceQueryDocumentReference get reference {
    return DocumentReferenceQueryDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DurationQuery _$DurationQueryFromJson(Map<String, dynamic> json) =>
    DurationQuery(
      Duration(microseconds: json['duration'] as int),
    );

const _$DurationQueryFieldMap = <String, String>{
  'duration': 'duration',
};

// ignore: unused_element
abstract class _$DurationQueryPerFieldToJson {
  // ignore: unused_element
  static Object? duration(Duration instance) => instance.inMicroseconds;
}

Map<String, dynamic> _$DurationQueryToJson(DurationQuery instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
    };

DateTimeQuery _$DateTimeQueryFromJson(Map<String, dynamic> json) =>
    DateTimeQuery(
      const FirestoreDateTimeConverter().fromJson(json['time'] as Timestamp),
    );

const _$DateTimeQueryFieldMap = <String, String>{
  'time': 'time',
};

// ignore: unused_element
abstract class _$DateTimeQueryPerFieldToJson {
  // ignore: unused_element
  static Object? time(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$DateTimeQueryToJson(DateTimeQuery instance) =>
    <String, dynamic>{
      'time': const FirestoreDateTimeConverter().toJson(instance.time),
    };

TimestampQuery _$TimestampQueryFromJson(Map<String, dynamic> json) =>
    TimestampQuery(
      const FirestoreTimestampConverter().fromJson(json['time'] as Timestamp),
    );

const _$TimestampQueryFieldMap = <String, String>{
  'time': 'time',
};

// ignore: unused_element
abstract class _$TimestampQueryPerFieldToJson {
  // ignore: unused_element
  static Object? time(Timestamp instance) =>
      const FirestoreTimestampConverter().toJson(instance);
}

Map<String, dynamic> _$TimestampQueryToJson(TimestampQuery instance) =>
    <String, dynamic>{
      'time': const FirestoreTimestampConverter().toJson(instance.time),
    };

GeoPointQuery _$GeoPointQueryFromJson(Map<String, dynamic> json) =>
    GeoPointQuery(
      const FirestoreGeoPointConverter().fromJson(json['point'] as GeoPoint),
    );

const _$GeoPointQueryFieldMap = <String, String>{
  'point': 'point',
};

// ignore: unused_element
abstract class _$GeoPointQueryPerFieldToJson {
  // ignore: unused_element
  static Object? point(GeoPoint instance) =>
      const FirestoreGeoPointConverter().toJson(instance);
}

Map<String, dynamic> _$GeoPointQueryToJson(GeoPointQuery instance) =>
    <String, dynamic>{
      'point': const FirestoreGeoPointConverter().toJson(instance.point),
    };

DocumentReferenceQuery _$DocumentReferenceQueryFromJson(
        Map<String, dynamic> json) =>
    DocumentReferenceQuery(
      const FirestoreDocumentReferenceConverter()
          .fromJson(json['ref'] as DocumentReference<Map<String, dynamic>>),
    );

const _$DocumentReferenceQueryFieldMap = <String, String>{
  'ref': 'ref',
};

// ignore: unused_element
abstract class _$DocumentReferenceQueryPerFieldToJson {
  // ignore: unused_element
  static Object? ref(DocumentReference<Map<String, dynamic>> instance) =>
      const FirestoreDocumentReferenceConverter().toJson(instance);
}

Map<String, dynamic> _$DocumentReferenceQueryToJson(
        DocumentReferenceQuery instance) =>
    <String, dynamic>{
      'ref': const FirestoreDocumentReferenceConverter().toJson(instance.ref),
    };
