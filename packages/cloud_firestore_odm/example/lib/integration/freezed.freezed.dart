// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Person {
  String get firstName;
  @JsonKey(name: 'LAST_NAME')
  String get lastName;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int? get ignored;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonCopyWith<Person> get copyWith =>
      _$PersonCopyWithImpl<Person>(this as Person, _$identity);

  /// Serializes this Person to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Person &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.ignored, ignored) || other.ignored == ignored));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, ignored);

  @override
  String toString() {
    return 'Person(firstName: $firstName, lastName: $lastName, ignored: $ignored)';
  }
}

/// @nodoc
abstract mixin class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) _then) =
      _$PersonCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      @JsonKey(name: 'LAST_NAME') String lastName,
      @JsonKey(includeFromJson: false, includeToJson: false) int? ignored});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._self, this._then);

  final Person _self;
  final $Res Function(Person) _then;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? ignored = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      ignored: freezed == ignored
          ? _self.ignored
          : ignored // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Person implements Person {
  _Person(
      {required this.firstName,
      @JsonKey(name: 'LAST_NAME') required this.lastName,
      @JsonKey(includeFromJson: false, includeToJson: false) this.ignored});
  factory _Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  final String firstName;
  @override
  @JsonKey(name: 'LAST_NAME')
  final String lastName;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final int? ignored;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonCopyWith<_Person> get copyWith =>
      __$PersonCopyWithImpl<_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Person &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.ignored, ignored) || other.ignored == ignored));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, ignored);

  @override
  String toString() {
    return 'Person(firstName: $firstName, lastName: $lastName, ignored: $ignored)';
  }
}

/// @nodoc
abstract mixin class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) _then) =
      __$PersonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      @JsonKey(name: 'LAST_NAME') String lastName,
      @JsonKey(includeFromJson: false, includeToJson: false) int? ignored});
}

/// @nodoc
class __$PersonCopyWithImpl<$Res> implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(this._self, this._then);

  final _Person _self;
  final $Res Function(_Person) _then;

  /// Create a copy of Person
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? ignored = freezed,
  }) {
    return _then(_Person(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      ignored: freezed == ignored
          ? _self.ignored
          : ignored // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

PublicRedirected _$PublicRedirectedFromJson(Map<String, dynamic> json) {
  return PublicRedirected2.fromJson(json);
}

/// @nodoc
mixin _$PublicRedirected {
  String get value;

  /// Create a copy of PublicRedirected
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PublicRedirectedCopyWith<PublicRedirected> get copyWith =>
      _$PublicRedirectedCopyWithImpl<PublicRedirected>(
          this as PublicRedirected, _$identity);

  /// Serializes this PublicRedirected to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PublicRedirected &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'PublicRedirected(value: $value)';
  }
}

/// @nodoc
abstract mixin class $PublicRedirectedCopyWith<$Res> {
  factory $PublicRedirectedCopyWith(
          PublicRedirected value, $Res Function(PublicRedirected) _then) =
      _$PublicRedirectedCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PublicRedirectedCopyWithImpl<$Res>
    implements $PublicRedirectedCopyWith<$Res> {
  _$PublicRedirectedCopyWithImpl(this._self, this._then);

  final PublicRedirected _self;
  final $Res Function(PublicRedirected) _then;

  /// Create a copy of PublicRedirected
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PublicRedirected2 implements PublicRedirected {
  PublicRedirected2({required this.value});
  factory PublicRedirected2.fromJson(Map<String, dynamic> json) =>
      _$PublicRedirected2FromJson(json);

  @override
  final String value;

  /// Create a copy of PublicRedirected
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PublicRedirected2CopyWith<PublicRedirected2> get copyWith =>
      _$PublicRedirected2CopyWithImpl<PublicRedirected2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PublicRedirected2ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PublicRedirected2 &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'PublicRedirected(value: $value)';
  }
}

/// @nodoc
abstract mixin class $PublicRedirected2CopyWith<$Res>
    implements $PublicRedirectedCopyWith<$Res> {
  factory $PublicRedirected2CopyWith(
          PublicRedirected2 value, $Res Function(PublicRedirected2) _then) =
      _$PublicRedirected2CopyWithImpl;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PublicRedirected2CopyWithImpl<$Res>
    implements $PublicRedirected2CopyWith<$Res> {
  _$PublicRedirected2CopyWithImpl(this._self, this._then);

  final PublicRedirected2 _self;
  final $Res Function(PublicRedirected2) _then;

  /// Create a copy of PublicRedirected
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(PublicRedirected2(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
