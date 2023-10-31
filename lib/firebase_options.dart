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
    apiKey: 'AIzaSyDsxjJdsox_BsN-3SErOzx3DI45nmHQwqc',
    appId: '1:586901821142:web:a1543e0967ff66b1745b77',
    messagingSenderId: '586901821142',
    projectId: 'alsaqar-566d3',
    authDomain: 'alsaqar-566d3.firebaseapp.com',
    storageBucket: 'alsaqar-566d3.appspot.com',
    measurementId: 'G-H6QB139GBE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_CcdI0d7tHIp47n0IIBIvwscwIKY3Ciw',
    appId: '1:586901821142:android:fac102ed1513fcfa745b77',
    messagingSenderId: '586901821142',
    projectId: 'alsaqar-566d3',
    storageBucket: 'alsaqar-566d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTkLvqTMbqFwEQwa-tL29yC9FrNbvjXzk',
    appId: '1:586901821142:ios:841968fc38fae7f8745b77',
    messagingSenderId: '586901821142',
    projectId: 'alsaqar-566d3',
    storageBucket: 'alsaqar-566d3.appspot.com',
    iosBundleId: 'com.elmarakby.elsaqr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTkLvqTMbqFwEQwa-tL29yC9FrNbvjXzk',
    appId: '1:586901821142:ios:5387df0324040e88745b77',
    messagingSenderId: '586901821142',
    projectId: 'alsaqar-566d3',
    storageBucket: 'alsaqar-566d3.appspot.com',
    iosBundleId: 'com.example.alsagrApp.RunnerTests',
  );
}
