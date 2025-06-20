// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCftfjYaHuKoxPVTYYOrPR9vz3rtEJlrOs',
    appId: '1:61586713606:web:c4e7e2ca1de4431b936787',
    messagingSenderId: '61586713606',
    projectId: 'quizeapp-49cf6',
    authDomain: 'quizeapp-49cf6.firebaseapp.com',
    storageBucket: 'quizeapp-49cf6.firebasestorage.app',
    measurementId: 'G-SLZ70P9D3H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4gKoB4El7GU5sowgLrUs0NY2zJsxQF9E',
    appId: '1:61586713606:android:7d25cf52c7805438936787',
    messagingSenderId: '61586713606',
    projectId: 'quizeapp-49cf6',
    storageBucket: 'quizeapp-49cf6.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCftfjYaHuKoxPVTYYOrPR9vz3rtEJlrOs',
    appId: '1:61586713606:web:0b114ef02ab88ce4936787',
    messagingSenderId: '61586713606',
    projectId: 'quizeapp-49cf6',
    authDomain: 'quizeapp-49cf6.firebaseapp.com',
    storageBucket: 'quizeapp-49cf6.firebasestorage.app',
    measurementId: 'G-M1C61GKFG3',
  );
}
