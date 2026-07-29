// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

const String _vapidKey =
    "BL73L7LmNeGw23M4Kjf5ojW6orLmkDh7tuZxxTeA5LSypkVKw4J8Vqt1OeQRID8x7QPtGRiFhxZrQFdQTZX70Nc";

Future<String?> getBrowserToken() async {
  if (!kIsWeb) return "NOT_WEB_PLATFORM";

  try {
    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    switch (settings.authorizationStatus) {
      case AuthorizationStatus.authorized:
        final token = await messaging.getToken(vapidKey: _vapidKey);
        return token ?? "TOKEN_NULL";

      case AuthorizationStatus.provisional:
        return "PROVISIONAL_PERMISSION";

      case AuthorizationStatus.denied:
        return "PERMISSION_DENIED";

      case AuthorizationStatus.notDetermined:
      default:
        return "NO_PERMISSION";
    }
  } catch (e) {
    // Replace with your preferred logger in production
    debugPrint("Error getting FCM token: $e");
    return "ERROR_${e.toString()}";
  }
}
