// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void setupFirestoreMocks() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Mock Platform Interface
  final platform = FirebasePlatform.instance;
  if (platform is! MockFirebasePlatform) {
    // Register Mock if not already registered
    FirebasePlatform.instance = MockFirebasePlatform();
  }
}

class MockFirebasePlatform extends FirebasePlatform {
  @override
  bool get isAutomaticDataCollectionEnabled => true;

  @override
  Future<FirebaseAppPlatform> initializeApp({
    String? name,
    FirebaseOptions? options,
  }) async {
    return MockFirebaseAppPlatform();
  }

  @override
  FirebaseAppPlatform app([String name = defaultFirebaseAppName]) {
    return MockFirebaseAppPlatform();
  }
}

class MockFirebaseAppPlatform extends FirebaseAppPlatform {
  MockFirebaseAppPlatform()
      : super(
            defaultFirebaseAppName,
            const FirebaseOptions(
              apiKey: 'mock-api-key',
              appId: 'mock-app-id',
              messagingSenderId: 'mock-sender-id',
              projectId: 'mock-project-id',
            ));

  @override
  String get name => defaultFirebaseAppName;

  @override
  FirebaseOptions get options => const FirebaseOptions(
        apiKey: 'mock-api-key',
        appId: 'mock-app-id',
        messagingSenderId: 'mock-sender-id',
        projectId: 'mock-project-id',
      );
}
