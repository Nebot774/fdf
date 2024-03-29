// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD8nhO7iP8AN8j-KW_2koq5b2Hp8zH9Qz0',
    appId: '1:37152482960:web:8b3f2429766336893a9a15',
    messagingSenderId: '37152482960',
    projectId: 'probandoque--funciona-firebase',
    authDomain: 'probandoque--funciona-firebase.firebaseapp.com',
    storageBucket: 'probandoque--funciona-firebase.appspot.com',
    measurementId: 'G-F0THEKBE7K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI9BbjnJpKddOGxv53ffYt7PL1dQwX1Cw',
    appId: '1:37152482960:android:2dda274fb16ba8873a9a15',
    messagingSenderId: '37152482960',
    projectId: 'probandoque--funciona-firebase',
    storageBucket: 'probandoque--funciona-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAffKMk-epspJ8-IlV1TwqT3lgt7OKFR_Y',
    appId: '1:37152482960:ios:3740325c1c7e8a623a9a15',
    messagingSenderId: '37152482960',
    projectId: 'probandoque--funciona-firebase',
    storageBucket: 'probandoque--funciona-firebase.appspot.com',
    iosBundleId: 'com.example.sprint',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAffKMk-epspJ8-IlV1TwqT3lgt7OKFR_Y',
    appId: '1:37152482960:ios:4ef2655b0e4247693a9a15',
    messagingSenderId: '37152482960',
    projectId: 'probandoque--funciona-firebase',
    storageBucket: 'probandoque--funciona-firebase.appspot.com',
    iosBundleId: 'com.example.sprint.RunnerTests',
  );
}
