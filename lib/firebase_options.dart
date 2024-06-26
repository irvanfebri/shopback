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
    apiKey: 'AIzaSyBm_ER1yBE2OeKumLHwhG2sUN2ehozxzM8',
    appId: '1:1001113750373:web:f81ded949224ae1ca9ef8c',
    messagingSenderId: '1001113750373',
    projectId: 'shop-87f2f',
    authDomain: 'shop-87f2f.firebaseapp.com',
    storageBucket: 'shop-87f2f.appspot.com',
    measurementId: 'G-VNMFW699PT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBeifEs0uUdvOROHCsiZxA5RGxRsNoG6TY',
    appId: '1:1001113750373:android:4f7b00ce37aca9d4a9ef8c',
    messagingSenderId: '1001113750373',
    projectId: 'shop-87f2f',
    storageBucket: 'shop-87f2f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPMAMLy-K_6XvmPo2k7v5-jCcfgz4v4cA',
    appId: '1:1001113750373:ios:0b1dd90cb4c62d19a9ef8c',
    messagingSenderId: '1001113750373',
    projectId: 'shop-87f2f',
    storageBucket: 'shop-87f2f.appspot.com',
    iosBundleId: 'com.example.flutterShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPMAMLy-K_6XvmPo2k7v5-jCcfgz4v4cA',
    appId: '1:1001113750373:ios:0b1dd90cb4c62d19a9ef8c',
    messagingSenderId: '1001113750373',
    projectId: 'shop-87f2f',
    storageBucket: 'shop-87f2f.appspot.com',
    iosBundleId: 'com.example.flutterShop',
  );
}
