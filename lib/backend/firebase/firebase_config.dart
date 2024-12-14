import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCNRcCxOLR2Qgqg3aDG2cBIYSVQbGIXFfY",
            authDomain: "pcostestsystem.firebaseapp.com",
            projectId: "pcostestsystem",
            storageBucket: "pcostestsystem.appspot.com",
            messagingSenderId: "310225592015",
            appId: "1:310225592015:web:e14955772976d17dcde1ba",
            measurementId: "G-YYQ4VZ3BMF"));
  } else {
    await Firebase.initializeApp();
  }
}
