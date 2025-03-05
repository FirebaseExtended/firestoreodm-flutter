// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore_odm_generator_integration_test/freezed.dart';
import 'package:cloud_firestore_odm_generator_integration_test/simple.dart';
import 'package:flutter_test/flutter_test.dart';

import 'setup_firestore_mock.dart';

void main() {
  setUpAll(setupFirestoreMocks);

  test('can specify @Collection on the model itself', () {
    expect(
      ModelCollectionReference().path,
      'root',
    );
  });

  group('orderBy', () {
    testWidgets('applies `descending`', (tester) async {
      expect(
        rootRef.orderByNullable(descending: true),
        rootRef.orderByNullable(descending: true),
      );
      expect(
        rootRef.orderByNullable(descending: true),
        isNot(rootRef.orderByNullable()),
      );
      expect(
        rootRef.orderByNullable(),
        rootRef.orderByNullable(),
      );
    });
  });

  group('doc', () {
    test('asserts that the path does not point to a separate collection',
        () async {
      rootRef.doc('42');

      expect(
        () => rootRef.doc('42/123'),
        throwsAssertionError,
      );
      expect(
        () => rootRef.doc('42/123/456'),
        throwsAssertionError,
      );
    });
  });

  /// test freezed mixed mode classes
  group('freezed mixed mode classes', () {
    test('test freezed simple classes', () {
      final simpleFreezed = SimpleFreezed(a: 42);
      expect(simpleFreezed.toJson(), {'a': 42});

      final simpleFreezedFromJson = SimpleFreezed.fromJson({'a': 42});
      expect(simpleFreezedFromJson.a, 42);
    });

    test('test freezed factory classes', () {
      final publicRedirected = PublicRedirected(value: 'test');
      expect(publicRedirected.toJson(), {'value': 'test'});

      final publicRedirectedFromJson =
          PublicRedirected.fromJson({'value': 'test'});
      expect(publicRedirectedFromJson.value, 'test');
    });
  });
}
