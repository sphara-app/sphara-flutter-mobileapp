import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBB_s6uTKcBQorDIJcqLSqaU5iXjM7gO_8",
            authDomain: "sphara-flutter-firebase.firebaseapp.com",
            projectId: "sphara-flutter-firebase",
            storageBucket: "sphara-flutter-firebase.appspot.com",
            messagingSenderId: "1083035074953",
            appId: "1:1083035074953:web:b53a28c78a1344e47d2158"));
  } else {
    await Firebase.initializeApp();
  }
}
