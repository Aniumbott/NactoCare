import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDxiXxFgRQq91AoURrT-dS0EH8ZSw19aCc",
            authDomain: "nacto-care-m6uz7e.firebaseapp.com",
            projectId: "nacto-care-m6uz7e",
            storageBucket: "nacto-care-m6uz7e.appspot.com",
            messagingSenderId: "1024769652823",
            appId: "1:1024769652823:web:9baab93bc6225f5bbf4b12"));
  } else {
    await Firebase.initializeApp();
  }
}
