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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBb_Tukr2exqY_R4RhtcBOiafB5BCujZ8g',
    appId: '1:864410975584:web:22c7f1e64690833db8f205',
    messagingSenderId: '864410975584',
    projectId: 'mobile-hotel-526d5',
    authDomain: 'mobile-hotel-526d5.firebaseapp.com',
    storageBucket: 'mobile-hotel-526d5.firebasestorage.app',
    measurementId: 'G-M7ZV1JGSRT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuTS2USNEIgUPITwLvS8v7abG236597jg',
    appId: '1:864410975584:android:e54147cbc9b5bce5b8f205',
    messagingSenderId: '864410975584',
    projectId: 'mobile-hotel-526d5',
    storageBucket: 'mobile-hotel-526d5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1rB7q3JyNqtccKOwmY5KfKS2ZrgeFVUI',
    appId: '1:864410975584:ios:3654608a4adf2165b8f205',
    messagingSenderId: '864410975584',
    projectId: 'mobile-hotel-526d5',
    storageBucket: 'mobile-hotel-526d5.firebasestorage.app',
    iosBundleId: 'com.gr15.hotelApp',
  );
}
