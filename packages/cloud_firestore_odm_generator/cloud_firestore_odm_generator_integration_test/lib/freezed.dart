// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';
part 'freezed.g.dart';

@Collection<Person>('freezed-test')
@freezed
abstract class Person with _$Person {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Person({
    required String firstName,
    @JsonKey(name: 'LAST_NAME') required String lastName,
    @JsonKey(includeFromJson: false, includeToJson: false) int? ignored,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}

final personRef = PersonCollectionReference();

@Collection<PublicRedirected>('freezed-test')
@freezed
abstract class PublicRedirected with _$PublicRedirected {
  factory PublicRedirected({required String value}) = PublicRedirected2;

  factory PublicRedirected.fromJson(Map<String, Object?> json) =>
      _$PublicRedirectedFromJson(json);
}

/// Freezed 3.x mixed mode
///
/// Simple classes
@Collection<SimpleFreezed>('freezed-test')
@freezed
@JsonSerializable()
class SimpleFreezed with _$SimpleFreezed {
  SimpleFreezed({required this.a});
  final int a;

  factory SimpleFreezed.fromJson(Map<String, Object?> json) =>
      _$SimpleFreezedFromJson(json);
  Map<String, Object?> toJson() => _$SimpleFreezedToJson(this);
}
