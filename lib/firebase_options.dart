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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyC4UOGYCfbmSUWeHlJDxUs_A92-qYITGxk',
    appId: '1:628425060073:web:3b6ec8dd562657cd240a78',
    messagingSenderId: '628425060073',
    projectId: 'catv2-afbce',
    authDomain: 'catv2-afbce.firebaseapp.com',
    databaseURL: 'https://catv2-afbce-default-rtdb.firebaseio.com',
    storageBucket: 'catv2-afbce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBE6c0aB4lAiZaaRLFJB5i9BmNwcumDK1M',
    appId: '1:628425060073:android:625f595ea9de0e9d240a78',
    messagingSenderId: '628425060073',
    projectId: 'catv2-afbce',
    databaseURL: 'https://catv2-afbce-default-rtdb.firebaseio.com',
    storageBucket: 'catv2-afbce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPuhOAVKJipJIwoGlq7hdQVWW5SZIrjE8',
    appId: '1:628425060073:ios:0f17416778c4fc2f240a78',
    messagingSenderId: '628425060073',
    projectId: 'catv2-afbce',
    databaseURL: 'https://catv2-afbce-default-rtdb.firebaseio.com',
    storageBucket: 'catv2-afbce.appspot.com',
    iosBundleId: 'com.example.prueba2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPuhOAVKJipJIwoGlq7hdQVWW5SZIrjE8',
    appId: '1:628425060073:ios:0f17416778c4fc2f240a78',
    messagingSenderId: '628425060073',
    projectId: 'catv2-afbce',
    databaseURL: 'https://catv2-afbce-default-rtdb.firebaseio.com',
    storageBucket: 'catv2-afbce.appspot.com',
    iosBundleId: 'com.example.prueba2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC4UOGYCfbmSUWeHlJDxUs_A92-qYITGxk',
    appId: '1:628425060073:web:3cf9a59ef5c1d0cb240a78',
    messagingSenderId: '628425060073',
    projectId: 'catv2-afbce',
    authDomain: 'catv2-afbce.firebaseapp.com',
    databaseURL: 'https://catv2-afbce-default-rtdb.firebaseio.com',
    storageBucket: 'catv2-afbce.appspot.com',
  );

}