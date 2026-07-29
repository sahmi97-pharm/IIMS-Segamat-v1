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

Future<dynamic> calculateCutiUsage(
  String staffId,
  int? year,
) async {
  try {
    final functions = FirebaseFunctions.instance;

    // Create a Map that can hold both String and int values
    final Map<String, dynamic> data = {
      'staffId': staffId,
    };

    if (year != null) {
      data['year'] = year; // Now this works because we use Map<String, dynamic>
    }

    final result =
        await functions.httpsCallable('calculateCutiUsage').call(data);

    return result.data;
  } catch (e) {
    print('Error calculating cuti usage: $e');
    return {
      'success': false,
      'message': 'Error: ${e.toString()}',
    };
  }
}
