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

import 'package:cloud_functions/cloud_functions.dart';

Future<dynamic> getDailyMovements(
  List<String> dates, // List of date strings ["2024-12-24", "2024-12-25"]
) async {
  try {
    final functions = FirebaseFunctions.instance;

    final Map<String, dynamic> data = {
      'dates': dates,
    };

    final result =
        await functions.httpsCallable('getDailyMovements').call(data);

    return result.data;
  } catch (e) {
    print('Error getting daily movements: $e');
    return {
      'success': false,
      'message': 'Error: ${e.toString()}',
    };
  }
}
