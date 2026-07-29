import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC0gKydleHIZANM1OMdTKxEoil9hW-MEOE",
            authDomain: "rxlink-d54ee.firebaseapp.com",
            projectId: "rxlink-d54ee",
            storageBucket: "rxlink-d54ee.firebasestorage.app",
            messagingSenderId: "672505210579",
            appId: "1:672505210579:web:9d23498fbcc06b1b841626",
            measurementId: "G-V80Y38H56Q"));
  } else {
    await Firebase.initializeApp();
  }
}
