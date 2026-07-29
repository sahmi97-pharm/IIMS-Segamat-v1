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

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'dart:js_interop' as js_interop;
import 'package:web/web.dart' as web;

/// Exports filtered CSV data in the specified table format
/// Returns true on success, throws Exception on error
Future<bool> exportFilteredCSV(
  DateTime? exportStartDate,
  DateTime? exportEndDate,
  bool exportIncludeFridge,
  bool exportIncludeDD,
) async {
  try {
    // 1. Get Firestore instance
    FirebaseFirestore db = FirebaseFirestore.instance;

    // 2. Build the base query
    Query query =
        db.collection('statistic_archive').where('type', isEqualTo: 'Ward');

    // 3. Add date filters safely with proper ordering
    DateTime start = exportStartDate ?? DateTime(1900);
    DateTime end = exportEndDate ?? DateTime.now();

    query = query
        .where('date', isGreaterThanOrEqualTo: start)
        .where('date', isLessThanOrEqualTo: end)
        .orderBy('date', descending: false);

    // 4. Run the query (Firestore max limit is 10,000)
    final QuerySnapshot snapshot = await query.limit(10000).get();

    // 5. Validate we have data
    if (snapshot.docs.isEmpty) {
      throw Exception('No data found for the selected date range.\n'
          'Start: ${DateFormat('yyyy-MM-dd').format(start)}\n'
          'End: ${DateFormat('yyyy-MM-dd').format(end)}');
    }

    // 6. Group data by location and date
    Map<String, Map<String, Map<String, dynamic>>> groupedData = {};

    for (final DocumentSnapshot doc in snapshot.docs) {
      final data = doc.data() as Map<String, dynamic>?;
      if (data == null) continue;

      String location = getValue(data, 'location_name');
      String dateStr = '';

      if (data['date'] != null) {
        try {
          final date = (data['date'] as Timestamp).toDate().toLocal();
          dateStr = DateFormat('yyyy-MM-dd').format(date);
        } catch (e) {
          dateStr = 'Invalid Date';
        }
      }

      if (location.isEmpty || dateStr.isEmpty) continue;

      // Initialize nested maps if they don't exist
      if (!groupedData.containsKey(location)) {
        groupedData[location] = {};
      }
      if (!groupedData[location]!.containsKey(dateStr)) {
        groupedData[location]![dateStr] = data;
      }
    }

    // 7. Build CSV structure
    List<List<String>> rows = [];

    // Get all unique dates and sort them
    Set<String> allDates = {};
    groupedData.forEach((location, dates) {
      allDates.addAll(dates.keys);
    });
    List<String> sortedDates = allDates.toList()..sort();

    // 8. Calculate number of columns per date
    int columnsPerDate = 3; // Arrival Time, Finish Time, Time Taken
    if (exportIncludeFridge) columnsPerDate++;
    if (exportIncludeDD) columnsPerDate++;

    // 9. Build first header row with dates
    List<String> headerRow1 = ['', '']; // First two columns are empty
    for (String date in sortedDates) {
      headerRow1.add(date);
      // Add empty cells for other columns under this date
      for (int i = 1; i < columnsPerDate; i++) {
        headerRow1.add('');
      }
    }
    rows.add(headerRow1);

    // 10. Build second header row with column names
    List<String> headerRow2 = ['', 'Arrival Time'];
    for (int i = 0; i < sortedDates.length; i++) {
      headerRow2.add('Finish Time');
      headerRow2.add('Time Taken');
      if (exportIncludeFridge) {
        headerRow2.add('Fridge Item (Yes/No)');
      }
      if (exportIncludeDD) {
        headerRow2.add('DD Patient Basis (Yes/No)');
      }
    }
    rows.add(headerRow2);

    // 11. Get all unique locations and sort them
    List<String> locations = groupedData.keys.toList()..sort();

    // 12. Date/time formatters
    final timeFormat = DateFormat('HH:mm');

    // 13. Build data rows for each location
    for (String location in locations) {
      List<String> row = [location];

      for (String date in sortedDates) {
        if (groupedData[location]!.containsKey(date)) {
          final data = groupedData[location]![date]!;

          // Arrival Time
          String arrivalTime = '';
          if (data['trolley_arrival_time'] != null) {
            try {
              final arrival = (data['trolley_arrival_time'] as Timestamp)
                  .toDate()
                  .toLocal();
              arrivalTime = timeFormat.format(arrival);
            } catch (e) {
              arrivalTime = '';
            }
          }
          row.add(arrivalTime);

          // Finish Time
          String finishTime = '';
          if (data['trolley_finished_time'] != null) {
            try {
              final finish = (data['trolley_finished_time'] as Timestamp)
                  .toDate()
                  .toLocal();
              finishTime = timeFormat.format(finish);
            } catch (e) {
              finishTime = '';
            }
          }
          row.add(finishTime);

          // Time Taken
          String timeTaken = getValue(data, 'trolley_time_taken_min');
          row.add(timeTaken);

          // Fridge Item (Yes/No)
          if (exportIncludeFridge) {
            String fridgeItem = getValue(data, 'trolley_fridge_item');
            row.add(_convertToYesNo(fridgeItem));
          }

          // DD Patient Basis (Yes/No)
          if (exportIncludeDD) {
            String ddPatient = getValue(data, 'trolley_DD_patient_basis');
            row.add(_convertToYesNo(ddPatient));
          }
        } else {
          // Empty cells for dates without data for this location
          for (int i = 0; i < columnsPerDate; i++) {
            row.add('');
          }
        }
      }

      rows.add(row);
    }

    // 14. Convert to CSV string with UTF-8 BOM for Excel compatibility
    String csv = '\uFEFF' +
        rows.map((row) => row.map(_escapeCSVValue).join(',')).join('\n');

    // 15. Platform-specific download/share
    String filename =
        'ward_statistics_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.csv';

    if (kIsWeb) {
      _downloadForWeb(csv, filename);
    } else {
      await _shareForMobile(csv, filename);
    }

    print(
        '✓ Successfully exported ${snapshot.docs.length} records to $filename');
    return true;
  } on FirebaseException catch (e) {
    print('Firestore error: ${e.code} - ${e.message}');
    throw Exception('Database error: ${e.message}');
  } catch (e) {
    print('Error exporting CSV: $e');
    rethrow;
  }
}

/// Safely retrieves a value from the data map
String getValue(Map<String, dynamic> data, String key) {
  return data.containsKey(key) && data[key] != null ? data[key].toString() : '';
}

/// Converts various value formats to Yes/No
String _convertToYesNo(String value) {
  if (value.isEmpty) return 'No';

  String lower = value.toLowerCase().trim();

  // Check for boolean-like values
  if (lower == 'true' || lower == '1' || lower == 'yes' || lower == 'y') {
    return 'Yes';
  } else if (lower == 'false' ||
      lower == '0' ||
      lower == 'no' ||
      lower == 'n') {
    return 'No';
  }

  // If it's a non-empty string that's not explicitly false, consider it Yes
  return value.isNotEmpty ? 'Yes' : 'No';
}

/// Escapes CSV values according to RFC 4180 standard
String _escapeCSVValue(String value) {
  if (value.isEmpty) return value;

  // If value contains comma, quote, newline, or carriage return, wrap in quotes
  if (value.contains(',') ||
      value.contains('"') ||
      value.contains('\n') ||
      value.contains('\r')) {
    // Escape existing quotes by doubling them
    return '"${value.replaceAll('"', '""')}"';
  }

  return value;
}

/// Downloads CSV file in web browsers using package:web (WASM-compatible)
void _downloadForWeb(String csv, String filename) {
  try {
    final bytes = utf8.encode(csv);
    final blob = web.Blob(
        [bytes.toJS].toJS, web.BlobPropertyBag(type: 'text/csv;charset=utf-8'));
    final url = web.URL.createObjectURL(blob);

    final anchor = web.document.createElement('a') as web.HTMLAnchorElement
      ..href = url
      ..download = filename
      ..style.display = 'none';

    web.document.body!.appendChild(anchor);
    anchor.click();

    // Cleanup
    web.document.body!.removeChild(anchor);
    web.URL.revokeObjectURL(url);

    print('✓ CSV downloaded successfully');
  } catch (e) {
    print('Error downloading CSV on web: $e');
    rethrow;
  }
}

/// Shares CSV file on mobile platforms (iOS/Android)
Future<void> _shareForMobile(String csv, String filename) async {
  try {
    // Get temporary directory
    final directory = await getTemporaryDirectory();
    final path = '${directory.path}/$filename';

    // Write CSV to file with UTF-8 encoding
    final file = File(path);
    await file.writeAsString(csv, encoding: utf8);

    // Share the file
    await Share.shareXFiles(
      [XFile(path)],
      subject: 'Ward Statistics Report',
      text: 'Exported ${filename}',
    );

    // Optional: Clean up temp file after sharing
    Future.delayed(Duration(seconds: 5), () {
      if (file.existsSync()) {
        file.deleteSync();
      }
    });

    print('✓ CSV shared successfully');
  } catch (e) {
    print('Error sharing CSV on mobile: $e');
    rethrow;
  }
}
