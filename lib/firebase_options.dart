import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// [AppFirebaseOptions] for use with your Firebase apps (web, android & iOS)
/// Differentiated by flavors / environment (dev & prod)
///
/// How to get the value:
/// [apiKey] from google cloud credentials, differentiated by platform
/// [appId], [messagingSenderId], [projectId], [authDomain], [databaseURL],
/// [storageBucket], [measurementId] from firebase configurations

class AppFirebaseOptions {
  final String env;

  const AppFirebaseOptions(this.env);

  FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return iOS;
      default:
        throw UnsupportedError(
            'AppFirebaseOptions have not been configured for ${defaultTargetPlatform.name}');
    }
  }

  FirebaseOptions get web {
    switch (env) {
      case 'dev':
        return const FirebaseOptions(
          apiKey: "AIzaSyDoVrD7hZaoIc9iD_4u5of3Qkz1FCxEXm8",
          appId: "1:920680503230:web:5d4a92e42e45c046ef4bef",
          messagingSenderId: "920680503230",
          projectId: "untukmu-94dfd",
          authDomain: "untukmu-94dfd.firebaseapp.com",
          // databaseURL:
          //     "https://untukmu-94dfd-default-rtdb.asia-southeast1.firebasedatabase.app",
          storageBucket: "untukmu-94dfd.appspot.com",
          measurementId: "G-C8TC075NSC",
        );
      case 'prod':
        return const FirebaseOptions(
          apiKey: "AIzaSyAnbMLPNjZxPXmTSU0HW6S7bYu2LFU53CI",
          appId: "1:1018404036495:web:35cf4aab4555984e5bb5fa",
          messagingSenderId: "1018404036495",
          projectId: "gothic-avenue-371112",
          authDomain: "gothic-avenue-371112.firebaseapp.com",
          storageBucket: "gothic-avenue-371112.appspot.com",
          measurementId: "G-5B9FK5WHJX",
        );
      default:
        throw UnsupportedError(
            'AppFirebaseOptions web have not been configured for this environment');
    }
  }

  FirebaseOptions get android {
    switch (env) {
      case 'dev':
        return const FirebaseOptions(
          apiKey: "AIzaSyBRj28i7q0_UFCevuNfgsiihvPzwjFQsD4",
          appId: "1:920680503230:android:0434e71e20f2f1c7ef4bef",
          messagingSenderId: "920680503230",
          projectId: "untukmu-94dfd",
          storageBucket: 'untukmu-94dfd.appspot.com',
        );
      case 'prod':
        return const FirebaseOptions(
          apiKey: "AIzaSyCLfcilYWZjiWVt29zlvV3b3J8zzjgbnxY",
          appId: "1:1018404036495:android:aaef7f4d5e9ae4515bb5fa",
          messagingSenderId: "1018404036495",
          projectId: "gothic-avenue-371112",
          storageBucket: 'gothic-avenue-371112.appspot.com',
        );
      default:
        throw UnsupportedError(
            'AppFirebaseOptions web have not been configured for this environment');
    }
  }

  FirebaseOptions get iOS {
    switch (env) {
      case 'dev':
        return const FirebaseOptions(
          apiKey: "AIzaSyAyLPC4THSdvv6UR3h3hsTngx_7UE7o3QY",
          appId: "1:920680503230:ios:93bbfdd21cc879e2ef4bef",
          messagingSenderId: "920680503230",
          projectId: "untukmu-94dfd",
          // databaseURL:
          //     'https://untukmu-94dfd-default-rtdb.asia-southeast1.firebasedatabase.app/',
          storageBucket: 'untukmu-94dfd.appspot.com',
        );
      case 'prod':
        return const FirebaseOptions(
          apiKey: "AIzaSyAIqDuk_xBzT08q9Wr4ahy0QtKhktJk774",
          appId: "1:1018404036495:ios:4e50d04d690209965bb5fa",
          messagingSenderId: "1018404036495",
          projectId: "gothic-avenue-371112",
          storageBucket: 'gothic-avenue-371112.appspot.com',
        );
      default:
        throw UnsupportedError(
            'AppFirebaseOptions web have not been configured for this environment');
    }
  }
}
