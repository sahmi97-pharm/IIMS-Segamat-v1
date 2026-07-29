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

Future<dynamic> applyMovement(
  String staffId,
  String applicationType,
  String? movementType,
  String? movementDetails,
  String? cutiType,
  String? applicationDate,
  String? startDate,
  String? endDate,
  String? startTime,
  String? endTime,
) async {
  try {
    final functions = FirebaseFunctions.instance;

    // Changed to Map<String, dynamic>
    final Map<String, dynamic> data = {
      'staffId': staffId,
      'applicationType': applicationType,
    };

    // Add optional fields if provided
    if (movementType != null) data['movementType'] = movementType;
    if (movementDetails != null) data['movementDetails'] = movementDetails;
    if (cutiType != null) data['cutiType'] = cutiType;
    if (applicationDate != null) data['applicationDate'] = applicationDate;
    if (startDate != null) data['startDate'] = startDate;
    if (endDate != null) data['endDate'] = endDate;
    if (startTime != null) data['startTime'] = startTime;
    if (endTime != null) data['endTime'] = endTime;

    // Call Cloud Function
    final result =
        await functions.httpsCallable('createMovementApplication').call(data);

    return result.data;
  } catch (e) {
    print('Error applying movement: $e');
    return {
      'success': false,
      'message': 'Error: ${e.toString()}',
    };
  }
}
