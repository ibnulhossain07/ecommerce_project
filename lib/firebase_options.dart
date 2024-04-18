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
    apiKey: 'AIzaSyCvcLgNdoeBLvebr9kKzRx4rhL_E13ujUA',
    appId: '1:482237288729:web:057472ad94768411ff7588',
    messagingSenderId: '482237288729',
    projectId: 'ecommerce-888be',
    authDomain: 'ecommerce-888be.firebaseapp.com',
    storageBucket: 'ecommerce-888be.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnISNQ1pfANeY0zSN9UsVZMOXVsQf0pB0',
    appId: '1:482237288729:android:579e529719d36f06ff7588',
    messagingSenderId: '482237288729',
    projectId: 'ecommerce-888be',
    storageBucket: 'ecommerce-888be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkZytufKuN0Ou9sdIKrSCKFEI6arnES_A',
    appId: '1:482237288729:ios:f420a9f875172b9dff7588',
    messagingSenderId: '482237288729',
    projectId: 'ecommerce-888be',
    storageBucket: 'ecommerce-888be.appspot.com',
    iosBundleId: 'com.example.ecommerceProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkZytufKuN0Ou9sdIKrSCKFEI6arnES_A',
    appId: '1:482237288729:ios:f420a9f875172b9dff7588',
    messagingSenderId: '482237288729',
    projectId: 'ecommerce-888be',
    storageBucket: 'ecommerce-888be.appspot.com',
    iosBundleId: 'com.example.ecommerceProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCvcLgNdoeBLvebr9kKzRx4rhL_E13ujUA',
    appId: '1:482237288729:web:97722a659bf2ac7fff7588',
    messagingSenderId: '482237288729',
    projectId: 'ecommerce-888be',
    authDomain: 'ecommerce-888be.firebaseapp.com',
    storageBucket: 'ecommerce-888be.appspot.com',
  );
}
