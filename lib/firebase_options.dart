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
    apiKey: 'AIzaSyAQgBW6sYLORrIBZgVyJFhoxv1H50qxLsI',
    appId: '1:629357982047:web:89f1e1c49cd721ffc706ea',
    messagingSenderId: '629357982047',
    projectId: 'login-f8b91',
    authDomain: 'login-f8b91.firebaseapp.com',
    storageBucket: 'login-f8b91.firebasestorage.app',
    measurementId: 'G-D3L994J9TQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCByYkUEU46UA-IKP-X3gMkxzQKc8_DMwA',
    appId: '1:629357982047:android:bb03471b28c0ca53c706ea',
    messagingSenderId: '629357982047',
    projectId: 'login-f8b91',
    storageBucket: 'login-f8b91.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBudJgP4RFE6rg6qL4QeFwG5rvkHoxq6lQ',
    appId: '1:629357982047:ios:8984ab12685cd6dec706ea',
    messagingSenderId: '629357982047',
    projectId: 'login-f8b91',
    storageBucket: 'login-f8b91.firebasestorage.app',
    iosBundleId: 'com.example.ahmed',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBudJgP4RFE6rg6qL4QeFwG5rvkHoxq6lQ',
    appId: '1:629357982047:ios:8984ab12685cd6dec706ea',
    messagingSenderId: '629357982047',
    projectId: 'login-f8b91',
    storageBucket: 'login-f8b91.firebasestorage.app',
    iosBundleId: 'com.example.ahmed',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAQgBW6sYLORrIBZgVyJFhoxv1H50qxLsI',
    appId: '1:629357982047:web:d16fffe87cba0438c706ea',
    messagingSenderId: '629357982047',
    projectId: 'login-f8b91',
    authDomain: 'login-f8b91.firebaseapp.com',
    storageBucket: 'login-f8b91.firebasestorage.app',
    measurementId: 'G-B49HS3VWM3',
  );
}
