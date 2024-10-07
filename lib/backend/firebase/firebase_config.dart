import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_irrBaqNc770GEcGN5rbrCprNUuCvRds",
            authDomain: "nacto-care-vvg7qk.firebaseapp.com",
            projectId: "nacto-care-vvg7qk",
            storageBucket: "nacto-care-vvg7qk.appspot.com",
            messagingSenderId: "863938532922",
            appId: "1:863938532922:web:a4fc63a68c65ff8ef6c703"));
  } else {
    await Firebase.initializeApp();
  }
}
