import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyDOxWSv6dUw-GrO8vVBrWvEWkNvHdcFpJ0',
    appId: '1:907753815196:web:b36c4a62dc423c64c4c159',
    messagingSenderId: '907753815196',
    projectId: 'movies-67bd2',
    authDomain: 'movies-67bd2.firebaseapp.com',
    storageBucket: 'movies-67bd2.appspot.com',
    measurementId: 'G-05NJSSSPW4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYUpGcjh9h0P-J_bhYPA4s0lS5l20eRpM',
    appId: '1:907753815196:android:22e9fbc9444732eec4c159',
    messagingSenderId: '907753815196',
    projectId: 'movies-67bd2',
    storageBucket: 'movies-67bd2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdFMV2vC-r9L6ZGEglLkJ-UCQAeBxUsqk',
    appId: '1:907753815196:ios:3d09601c3101267ac4c159',
    messagingSenderId: '907753815196',
    projectId: 'movies-67bd2',
    storageBucket: 'movies-67bd2.appspot.com',
    iosBundleId: 'com.example.movies',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdFMV2vC-r9L6ZGEglLkJ-UCQAeBxUsqk',
    appId: '1:907753815196:ios:e56ea84b4d9326cac4c159',
    messagingSenderId: '907753815196',
    projectId: 'movies-67bd2',
    storageBucket: 'movies-67bd2.appspot.com',
    iosBundleId: 'com.example.movies.RunnerTests',
  );
}
