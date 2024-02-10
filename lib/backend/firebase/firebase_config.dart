import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCD3--S2rM65mPy84_Q96PHRQDeUfClKC4",
            authDomain: "resmap-io.firebaseapp.com",
            projectId: "resmap-io",
            storageBucket: "resmap-io.appspot.com",
            messagingSenderId: "3054771132",
            appId: "1:3054771132:web:baa3fbdf7ecf5f4b69e9b9",
            measurementId: "G-D2ZN02DQ6W"));
  } else {
    await Firebase.initializeApp();
  }
}
