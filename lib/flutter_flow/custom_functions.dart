import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? calculateMinutes(
  DateTime? startTime,
  DateTime? endTime,
) {
  if (startTime == null || endTime == null) {
    return "---";
  }
  final difference = endTime.difference(startTime);
  return "${difference.inMinutes} min";
}

/// Filters and returns valid dates for chart X-axis
List<DateTime> getChartDates(
  List<DailyAveragesRecord> records,
  DateTime? selectedMonth,
) {
  try {
    DateTime referenceDate;
    bool isCurrentTime = false;

    // 1. Determine if we are looking at "Now" or a "Past Selection"
    if (selectedMonth == null) {
      referenceDate = DateTime.now();
      isCurrentTime = true;
    } else {
      referenceDate = selectedMonth;
      isCurrentTime = false;
    }

    DateTime startDate;
    DateTime endDate;

    // 2. Define Custom Cycle Logic
    // Logic: Cycle runs from the 3rd to the 2nd of the next month.

    bool showPreviousMonth = false;

    if (referenceDate.day <= 2) {
      // If it's the 1st or 2nd, definitely show previous cycle
      showPreviousMonth = true;
    } else if (isCurrentTime &&
        referenceDate.day == 3 &&
        referenceDate.hour < 20) {
      // EDGE CASE: It is the 3rd, but BEFORE 8 PM (20:00).
      // Data hasn't updated yet, so keep showing previous cycle to avoid empty screen.
      showPreviousMonth = true;
    }

    // 3. Set Start and End Dates based on the flag
    if (showPreviousMonth) {
      // Go back to previous month's cycle
      startDate = DateTime(referenceDate.year, referenceDate.month - 1, 3);
      endDate = DateTime(referenceDate.year, referenceDate.month, 2);
    } else {
      // Show current month's cycle
      startDate = DateTime(referenceDate.year, referenceDate.month, 3);
      endDate = DateTime(referenceDate.year, referenceDate.month + 1, 2);
    }

    // 4. Generate the list of dates for X-Axis
    List<DateTime> allDates = [];

    // Normalize time to 00:00:00
    DateTime current = DateTime(startDate.year, startDate.month, startDate.day);
    DateTime normalizedEndDate =
        DateTime(endDate.year, endDate.month, endDate.day);

    while (!current.isAfter(normalizedEndDate)) {
      allDates.add(current);
      current = current.add(Duration(days: 1));
    }

    return allDates;
  } catch (e) {
    print('Error in getChartDates: $e');
    return [];
  }
}

/// Filters and returns valid trolley times for chart Y-axis
List<double> getChartValues(
  List<DailyAveragesRecord> records,
  DateTime? selectedMonth,
) {
  try {
    DateTime referenceDate;
    bool isCurrentTime = false;

    // 1. Determine if looking at "Now" or a "Past Selection"
    if (selectedMonth == null) {
      referenceDate = DateTime.now();
      isCurrentTime = true;
    } else {
      referenceDate = selectedMonth;
      isCurrentTime = false;
    }

    DateTime startDate;
    DateTime endDate;

    // 2. Define Custom Cycle Logic (MUST MATCH X-AXIS LOGIC EXACTLY)
    bool showPreviousMonth = false;

    if (referenceDate.day <= 2) {
      showPreviousMonth = true;
    } else if (isCurrentTime &&
        referenceDate.day == 3 &&
        referenceDate.hour < 20) {
      // EDGE CASE: It is the 3rd, but BEFORE 8 PM.
      // Match the X-Axis logic to show previous month.
      showPreviousMonth = true;
    }

    if (showPreviousMonth) {
      startDate = DateTime(referenceDate.year, referenceDate.month - 1, 3);
      endDate = DateTime(referenceDate.year, referenceDate.month, 2);
    } else {
      startDate = DateTime(referenceDate.year, referenceDate.month, 3);
      endDate = DateTime(referenceDate.year, referenceDate.month + 1, 2);
    }

    // 3. Create a map of existing data for fast lookup
    Map<String, double> dataMap = {};

    for (var record in records) {
      if (record.date != null && record.averageTrolleyTime != null) {
        // Create key YYYY-MM-DD
        String dateKey = DateFormat('yyyy-MM-dd').format(record.date!);

        double value = record.averageTrolleyTime is int
            ? (record.averageTrolleyTime as int).toDouble()
            : (record.averageTrolleyTime as double);

        dataMap[dateKey] = value;
      }
    }

    // 4. Generate values
    List<double> allValues = [];
    DateTime current = DateTime(startDate.year, startDate.month, startDate.day);
    DateTime normalizedEndDate =
        DateTime(endDate.year, endDate.month, endDate.day);

    while (!current.isAfter(normalizedEndDate)) {
      String dateKey = DateFormat('yyyy-MM-dd').format(current);

      // Add data if exists, otherwise 0.0
      // Note: 0.0 represents "No Data" or "0 minutes".
      allValues.add(dataMap[dateKey] ?? 0.0);

      current = current.add(Duration(days: 1));
    }

    return allValues;
  } catch (e) {
    print('Error in getChartValues: $e');
    return [];
  }
}

DateTime? getMonthStartDate(DateTime? selectedDate) {
  try {
    // 1. Setup Reference Date
    DateTime date = selectedDate ?? DateTime.now();
    bool isCurrentTime = (selectedDate == null);

    // 2. Define Custom Cycle Logic (Matches your Chart Logic)
    // Cycle starts on the 3rd.
    bool usePreviousCycle = false;

    if (date.day <= 2) {
      // If it's the 1st or 2nd, belong to previous month's cycle
      usePreviousCycle = true;
    } else if (isCurrentTime && date.day == 3 && date.hour < 20) {
      // If it's the 3rd but before 8 PM, stay on previous cycle
      usePreviousCycle = true;
    }

    // 3. Return the 3rd of the calculated month
    if (usePreviousCycle) {
      // Example: It is Jan 1st. Return Dec 3rd.
      return DateTime(date.year, date.month - 1, 3);
    } else {
      // Example: It is Jan 5th. Return Jan 3rd.
      return DateTime(date.year, date.month, 3);
    }
  } catch (e) {
    return DateTime.now(); // Fallback
  }
}

DateTime? getMonthEndDate(DateTime? selectedDate) {
  try {
    // 1. Setup Reference Date
    DateTime date = selectedDate ?? DateTime.now();
    bool isCurrentTime = (selectedDate == null);

    // 2. Define Custom Cycle Logic
    bool usePreviousCycle = false;

    if (date.day <= 2) {
      usePreviousCycle = true;
    } else if (isCurrentTime && date.day == 3 && date.hour < 20) {
      usePreviousCycle = true;
    }

    // 3. Return the 2nd of the calculated END month (End of Day)
    if (usePreviousCycle) {
      // Example: It is Jan 1st. Cycle is Dec 3 - Jan 2.
      // Return Jan 2nd at 23:59:59
      return DateTime(date.year, date.month, 2, 23, 59, 59);
    } else {
      // Example: It is Jan 5th. Cycle is Jan 3 - Feb 2.
      // Return Feb 2nd at 23:59:59
      return DateTime(date.year, date.month + 1, 2, 23, 59, 59);
    }
  } catch (e) {
    return DateTime.now();
  }
}

String? getDisplayMonthName(DateTime? selectedDate) {
// 1. Setup Reference Date
  DateTime referenceDate = selectedDate ?? DateTime.now();

  // Check if we are using "Now" (Live View) to apply the 8 PM rule
  bool isCurrentTime = (selectedDate == null);

  // 2. Logic to determine if we show Previous Month
  bool showPreviousMonth = false;

  if (referenceDate.day <= 2) {
    // 1st or 2nd always belongs to previous month cycle
    showPreviousMonth = true;
  } else if (isCurrentTime &&
      referenceDate.day == 3 &&
      referenceDate.hour < 20) {
    // It is the 3rd, but BEFORE 8 PM. Data hasn't reset yet.
    // Show previous month name.
    showPreviousMonth = true;
  }

  // 3. Calculate the Display Date
  DateTime displayDate;
  if (showPreviousMonth) {
    // Subtract 1 month (Dart handles year rollover automatically, e.g., Month 0 becomes Dec)
    displayDate = DateTime(referenceDate.year, referenceDate.month - 1);
  } else {
    displayDate = referenceDate;
  }

  // 4. Return formatted string (e.g., "Jan 2024")
  return DateFormat('MMM yyyy').format(displayDate);
}

DateTime? getEndOfDay(DateTime? date) {
  DateTime selectedDate = date ?? DateTime.now();
  return DateTime(
      selectedDate.year, selectedDate.month, selectedDate.day, 23, 59, 59, 999);
}

DateTime? getStartOfDay(DateTime? date) {
  DateTime selectedDate = date ?? DateTime.now();
  return DateTime(
      selectedDate.year, selectedDate.month, selectedDate.day, 0, 0, 0);
}

/// Calculate cumulative average for the month
double? calculateMonthlyAverage(List<DailyAveragesRecord>? dailyAverages) {
  // Check if list is null or empty
  if (dailyAverages == null || dailyAverages.isEmpty) {
    return null;
  }

  double sum = 0;
  int count = 0;

  // Loop through all daily records
  for (var record in dailyAverages) {
    if (record.averageTrolleyTime != null) {
      sum += record.averageTrolleyTime!;
      count++;
    }
  }

  // Calculate average
  return count > 0 ? sum / count : null;
}

List<BorangListRecord> searchBorang(
  List<BorangListRecord> fullList,
  String searchString,
) {
// If search is empty, return the whole list
  if (searchString == null || searchString.isEmpty) {
    return fullList;
  }

  // Filter list by checking if gpName contains search string (case insensitive)
  return fullList
      .where((record) =>
          record.borangTitle.toLowerCase().contains(searchString.toLowerCase()))
      .toList();
}

List<IpdRujukanRecord> searchMyIPDRujukan(
  List<IpdRujukanRecord> fullList,
  String searchString,
) {
// If search is empty, return the whole list
  if (searchString == null || searchString.isEmpty) {
    return fullList;
  }

  // Filter list by checking if title contains search string (case insensitive)
  return fullList
      .where((record) =>
          record.title.toLowerCase().contains(searchString.toLowerCase()))
      .toList();
}

List<GarisPanduanListRecord> searchGarisPanduan(
  List<GarisPanduanListRecord> fullList,
  String searchString,
) {
// If search is empty, return the whole list
  if (searchString == null || searchString.isEmpty) {
    return fullList;
  }

  // Filter list by checking if gpName contains search string (case insensitive)
  return fullList
      .where((record) =>
          record.gpName.toLowerCase().contains(searchString.toLowerCase()))
      .toList();
}

List<MemoJabatanRecord> searchMemo(
  List<MemoJabatanRecord> fullList,
  String searchString,
) {
  //
  if (searchString == null || searchString.isEmpty) {
    return fullList;
  }
  return fullList
      .where((record) =>
          record.memoTitle.toLowerCase().contains(searchString.toLowerCase()))
      .toList();
}

List<LocationsRecord> sortWardsToTop(
  List<LocationsRecord> allWards,
  List<String> selectedNames,
) {
  List<LocationsRecord> sortedList = List.from(allWards);
  sortedList.sort((a, b) {
    bool aSelected = selectedNames.contains(a.name);
    bool bSelected = selectedNames.contains(b.name);
    if (aSelected && !bSelected) return -1;
    if (!aSelected && bSelected) return 1;
    return a.name.compareTo(b.name);
  });
  return sortedList;
}

Color getStatusColor(String status) {
  if (status == 'Pending') {
    return const Color(0xFFFFCC3F); // Yellow
  } else if (status == 'Complete') {
    return const Color(0xFF18BAAD); // Teal
  } else {
    return const Color(0xFFAAA7AD); // Gray for 'N/A' or anything else
  }
}

String getSafeTopicName(String? wardName) {
  if (wardName == null || wardName.isEmpty) {
    return 'default_topic';
  }
  // This removes EVERYTHING except basic letters, numbers, and underscores
  // It ensures the name matches your Cloud Function's regex perfectly.
  return wardName
      .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_') // Replace special chars with _
      .replaceAll(RegExp(r'_+'), '_') // Clean up double underscores
      .toLowerCase();
}

bool? isWithin3Hours(DateTime? registrationTime) {
// If there is no timestamp saved yet, don't show the box
  if (registrationTime == null) {
    return false;
  }

  final now = DateTime.now();

  // Calculate the difference in minutes
  final differenceInMinutes = now.difference(registrationTime).inMinutes;

  // 180 minutes = 3 hours.
  // We return true if the time passed is between 0 and 179 minutes.
  return differenceInMinutes >= 0 && differenceInMinutes < 180;
}

List<String> getBottomOptions(
  bool? hasTroliUbat,
  bool? hasUbatTambahan,
) {
// This is the line that was missing! It creates the empty list.
  List<String> options = [];

// 1. Follow database record for Troli Ubat
  if (hasTroliUbat == true) {
    options.add('Troli Ubat');
  }

  // 2. Floor Stock (FS) is ALWAYS available for every location
  options.addAll(['FS Ubat', 'FS IV Drip', 'FS DD']);

  // 3. Follow database record for Ubat Tambahan
  if (hasUbatTambahan == true) {
    options.add('Ubat Tambahan');
  }

  return options;
}

DocumentReference? getSharedTrolleyRef(
  bool isSharing,
  String? dropdownId,
) {
  // If the toggle is ON and the dropdown is not empty
  if (isSharing == true && dropdownId != null && dropdownId.isNotEmpty) {
    // Combine the collection name with the dropdown text to make a true Reference
    return FirebaseFirestore.instance
        .collection('locations_new')
        .doc(dropdownId);
  }

  // If the toggle is OFF, return null (leaves the database field blank)
  return null;
}

String getShiftDate(DateTime currentTime) {
// If the time is before 8:00 AM, count it as yesterday's shift
  if (currentTime.hour < 8) {
    currentTime = currentTime.subtract(Duration(days: 1));
  }

  // Format the output as YYYY-MM-DD (e.g., "2026-06-29")
  String year = currentTime.year.toString();
  String month = currentTime.month.toString().padLeft(2, '0');
  String day = currentTime.day.toString().padLeft(2, '0');

  return '$year-$month-$day';
}

String getDefaultPerkaraOption(
  bool? hasTroliUbat,
  bool? hasUbatTambahan,
) {
  final options = getBottomOptions(hasTroliUbat, hasUbatTambahan);
  return options.first;
}
