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
    apiKey: 'AIzaSyAaWu-l6Lsv77qgMt-LmyRzokbpzGr1QEU',
    appId: '1:667846746873:web:3fb06a43ef8d4a70acf828',
    messagingSenderId: '667846746873',
    projectId: 'mustache-hub---prod',
    authDomain: 'mustache-hub---prod.firebaseapp.com',
    storageBucket: 'mustache-hub---prod.appspot.com',
    measurementId: 'G-E55QTKS460',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAi16vDNebhnckeXddhCoppVLgrxkBeNp0',
    appId: '1:667846746873:android:cb1cfa890c23a1aaacf828',
    messagingSenderId: '667846746873',
    projectId: 'mustache-hub---prod',
    storageBucket: 'mustache-hub---prod.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcqikagrAqZPoaEAS_B-lWqPC8cvtMmF0',
    appId: '1:667846746873:ios:c957e21d6863b221acf828',
    messagingSenderId: '667846746873',
    projectId: 'mustache-hub---prod',
    storageBucket: 'mustache-hub---prod.appspot.com',
    iosBundleId: 'com.hub.mustache.mustachehub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcqikagrAqZPoaEAS_B-lWqPC8cvtMmF0',
    appId: '1:667846746873:ios:9065a31af0c97036acf828',
    messagingSenderId: '667846746873',
    projectId: 'mustache-hub---prod',
    storageBucket: 'mustache-hub---prod.appspot.com',
    iosBundleId: 'com.hub.mustache.mustachehub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAaWu-l6Lsv77qgMt-LmyRzokbpzGr1QEU',
    appId: '1:667846746873:web:dcff0319c53220deacf828',
    messagingSenderId: '667846746873',
    projectId: 'mustache-hub---prod',
    authDomain: 'mustache-hub---prod.firebaseapp.com',
    storageBucket: 'mustache-hub---prod.appspot.com',
    measurementId: 'G-FL224V6QT9',
  );
}