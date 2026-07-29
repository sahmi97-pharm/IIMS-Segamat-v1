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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'dart:html' as html;

Future exportMemoLog(
  DateTime? startDate,
  DateTime? endDate,
  String? category,
) async {
  // 1. Query Firestore
  Query<Map<String, dynamic>> query =
      FirebaseFirestore.instance.collection('memos');

  // Filter by Date Range
  query = query
      .where('created_at', isGreaterThanOrEqualTo: startDate)
      .where('created_at', isLessThanOrEqualTo: endDate)
      .orderBy('created_at', descending: true);

  // Filter by Category (Only if a specific one is chosen)
  if (category != null && category != 'All' && category != '') {
    query = query.where('category', isEqualTo: category);
  }

  // Execute Query
  QuerySnapshot querySnapshot = await query.get();

  // 2. Prepare CSV Data
  List<List<dynamic>> rows = [];

  // Add Header Row
  rows.add([
    "Date",
    "Time",
    "Title",
    "Category",
    "Status",
    "Reader Name",
    "Incomplete Reason",
    "Content"
  ]);

  // Loop through documents
  for (var doc in querySnapshot.docs) {
    final data = doc.data() as Map<String, dynamic>;

    // Safely format the date
    DateTime? created = (data['created_at'] as Timestamp?)?.toDate();
    String dateStr =
        created != null ? DateFormat('dd/MM/yyyy').format(created) : '-';
    String timeStr =
        created != null ? DateFormat('HH:mm').format(created) : '-';

    rows.add([
      dateStr,
      timeStr,
      data['title'] ?? '',
      data['category'] ?? '',
      data['status'] ?? '',
      data['reader_name'] ?? '',
      data['incomplete_reason'] ?? '',
      data['content'] ?? '', // Content last in case it's long
    ]);
  }

  // 3. Convert to CSV String manually
  String csvData = _convertToCsv(rows);

  // 4. Download File (Web Implementation)
  final bytes = utf8.encode(csvData);
  final blob = html.Blob([bytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.document.createElement('a') as html.AnchorElement
    ..href = url
    ..style.display = 'none'
    ..download =
        'Memo_Log_${DateFormat('yyyyMMdd').format(DateTime.now())}.csv';

  html.document.body!.children.add(anchor);
  anchor.click();
  html.document.body!.children.remove(anchor);
  html.Url.revokeObjectUrl(url);
}

// Helper function to convert rows to CSV format
String _convertToCsv(List<List<dynamic>> rows) {
  return rows.map((row) {
    return row.map((cell) {
      String cellStr = cell.toString();
      // Escape quotes and wrap in quotes if contains comma, quote, or newline
      if (cellStr.contains(',') ||
          cellStr.contains('"') ||
          cellStr.contains('\n')) {
        cellStr = cellStr.replaceAll('"', '""');
        return '"$cellStr"';
      }
      return cellStr;
    }).join(',');
  }).join('\n');
}
