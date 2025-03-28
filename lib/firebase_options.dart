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
    apiKey: 'AIzaSyA1NMU8VGDsfwYdQ1gdsBenUHUGxD4ou8U',
    appId: '1:426404494062:web:7c3ef6c006e67c93b2d1ff',
    messagingSenderId: '426404494062',
    projectId: 'task-manager-app-b6d82',
    authDomain: 'task-manager-app-b6d82.firebaseapp.com',
    storageBucket: 'task-manager-app-b6d82.firebasestorage.app',
    measurementId: 'G-7GZGV1F38M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrs7CfuPX60VtklI5i_m3Wc9mHbpvW4Fg',
    appId: '1:426404494062:android:e68d21392eeb0076b2d1ff',
    messagingSenderId: '426404494062',
    projectId: 'task-manager-app-b6d82',
    storageBucket: 'task-manager-app-b6d82.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxeaqsVlpMc_hPIUiJLxb7G3oie0ICjO0',
    appId: '1:426404494062:ios:9fd6f8215d9eec61b2d1ff',
    messagingSenderId: '426404494062',
    projectId: 'task-manager-app-b6d82',
    storageBucket: 'task-manager-app-b6d82.firebasestorage.app',
    androidClientId: '426404494062-h903ktg40aqqos3520avkfghst7978og.apps.googleusercontent.com',
    iosClientId: '426404494062-lksru07tqgtnc5tmrcm2lf3urhmam4dj.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskmanager.taskManagerApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxeaqsVlpMc_hPIUiJLxb7G3oie0ICjO0',
    appId: '1:426404494062:ios:9fd6f8215d9eec61b2d1ff',
    messagingSenderId: '426404494062',
    projectId: 'task-manager-app-b6d82',
    storageBucket: 'task-manager-app-b6d82.firebasestorage.app',
    androidClientId: '426404494062-h903ktg40aqqos3520avkfghst7978og.apps.googleusercontent.com',
    iosClientId: '426404494062-lksru07tqgtnc5tmrcm2lf3urhmam4dj.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskmanager.taskManagerApp',
  );

}