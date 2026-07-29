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

Future<dynamic> processApproval(
  String applicationId,
  String action,
  String? reason,
) async {
  try {
    final functions = FirebaseFunctions.instance;

    // Changed to Map<String, dynamic>
    final Map<String, dynamic> data = {
      'applicationId': applicationId,
      'action': action,
    };

    if (reason != null) {
      data['reason'] = reason;
    }

    final result = await functions.httpsCallable('processApproval').call(data);

    return result.data;
  } catch (e) {
    print('Error processing approval: $e');
    return {
      'success': false,
      'message': 'Error: ${e.toString()}',
    };
  }
}
