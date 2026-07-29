import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatisticArchiveRecord extends FirestoreRecord {
  StatisticArchiveRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data_completed" field.
  DateTime? _dataCompleted;
  DateTime? get dataCompleted => _dataCompleted;
  bool hasDataCompleted() => _dataCompleted != null;

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "task_type" field.
  String? _taskType;
  String get taskType => _taskType ?? '';
  bool hasTaskType() => _taskType != null;

  // "trolley_arrival_time" field.
  DateTime? _trolleyArrivalTime;
  DateTime? get trolleyArrivalTime => _trolleyArrivalTime;
  bool hasTrolleyArrivalTime() => _trolleyArrivalTime != null;

  // "trolley_finished_time" field.
  DateTime? _trolleyFinishedTime;
  DateTime? get trolleyFinishedTime => _trolleyFinishedTime;
  bool hasTrolleyFinishedTime() => _trolleyFinishedTime != null;

  // "trolley_fridge_item" field.
  bool? _trolleyFridgeItem;
  bool get trolleyFridgeItem => _trolleyFridgeItem ?? false;
  bool hasTrolleyFridgeItem() => _trolleyFridgeItem != null;

  // "trolley_DD_patient_basis" field.
  bool? _trolleyDDPatientBasis;
  bool get trolleyDDPatientBasis => _trolleyDDPatientBasis ?? false;
  bool hasTrolleyDDPatientBasis() => _trolleyDDPatientBasis != null;

  // "fs_med" field.
  bool? _fsMed;
  bool get fsMed => _fsMed ?? false;
  bool hasFsMed() => _fsMed != null;

  // "fs_med_fridge_item" field.
  bool? _fsMedFridgeItem;
  bool get fsMedFridgeItem => _fsMedFridgeItem ?? false;
  bool hasFsMedFridgeItem() => _fsMedFridgeItem != null;

  // "fs_ivdrip" field.
  bool? _fsIvdrip;
  bool get fsIvdrip => _fsIvdrip ?? false;
  bool hasFsIvdrip() => _fsIvdrip != null;

  // "fs_dd" field.
  bool? _fsDd;
  bool get fsDd => _fsDd ?? false;
  bool hasFsDd() => _fsDd != null;

  // "staff_name_reg" field.
  String? _staffNameReg;
  String get staffNameReg => _staffNameReg ?? '';
  bool hasStaffNameReg() => _staffNameReg != null;

  void _initializeFields() {
    _dataCompleted = snapshotData['data_completed'] as DateTime?;
    _locationName = snapshotData['location_name'] as String?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _taskType = snapshotData['task_type'] as String?;
    _trolleyArrivalTime = snapshotData['trolley_arrival_time'] as DateTime?;
    _trolleyFinishedTime = snapshotData['trolley_finished_time'] as DateTime?;
    _trolleyFridgeItem = snapshotData['trolley_fridge_item'] as bool?;
    _trolleyDDPatientBasis = snapshotData['trolley_DD_patient_basis'] as bool?;
    _fsMed = snapshotData['fs_med'] as bool?;
    _fsMedFridgeItem = snapshotData['fs_med_fridge_item'] as bool?;
    _fsIvdrip = snapshotData['fs_ivdrip'] as bool?;
    _fsDd = snapshotData['fs_dd'] as bool?;
    _staffNameReg = snapshotData['staff_name_reg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('statistic_archive');

  static Stream<StatisticArchiveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatisticArchiveRecord.fromSnapshot(s));

  static Future<StatisticArchiveRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StatisticArchiveRecord.fromSnapshot(s));

  static StatisticArchiveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StatisticArchiveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatisticArchiveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatisticArchiveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatisticArchiveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatisticArchiveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatisticArchiveRecordData({
  DateTime? dataCompleted,
  String? locationName,
  DocumentReference? locationRef,
  String? taskType,
  DateTime? trolleyArrivalTime,
  DateTime? trolleyFinishedTime,
  bool? trolleyFridgeItem,
  bool? trolleyDDPatientBasis,
  bool? fsMed,
  bool? fsMedFridgeItem,
  bool? fsIvdrip,
  bool? fsDd,
  String? staffNameReg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data_completed': dataCompleted,
      'location_name': locationName,
      'location_ref': locationRef,
      'task_type': taskType,
      'trolley_arrival_time': trolleyArrivalTime,
      'trolley_finished_time': trolleyFinishedTime,
      'trolley_fridge_item': trolleyFridgeItem,
      'trolley_DD_patient_basis': trolleyDDPatientBasis,
      'fs_med': fsMed,
      'fs_med_fridge_item': fsMedFridgeItem,
      'fs_ivdrip': fsIvdrip,
      'fs_dd': fsDd,
      'staff_name_reg': staffNameReg,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatisticArchiveRecordDocumentEquality
    implements Equality<StatisticArchiveRecord> {
  const StatisticArchiveRecordDocumentEquality();

  @override
  bool equals(StatisticArchiveRecord? e1, StatisticArchiveRecord? e2) {
    return e1?.dataCompleted == e2?.dataCompleted &&
        e1?.locationName == e2?.locationName &&
        e1?.locationRef == e2?.locationRef &&
        e1?.taskType == e2?.taskType &&
        e1?.trolleyArrivalTime == e2?.trolleyArrivalTime &&
        e1?.trolleyFinishedTime == e2?.trolleyFinishedTime &&
        e1?.trolleyFridgeItem == e2?.trolleyFridgeItem &&
        e1?.trolleyDDPatientBasis == e2?.trolleyDDPatientBasis &&
        e1?.fsMed == e2?.fsMed &&
        e1?.fsMedFridgeItem == e2?.fsMedFridgeItem &&
        e1?.fsIvdrip == e2?.fsIvdrip &&
        e1?.fsDd == e2?.fsDd &&
        e1?.staffNameReg == e2?.staffNameReg;
  }

  @override
  int hash(StatisticArchiveRecord? e) => const ListEquality().hash([
        e?.dataCompleted,
        e?.locationName,
        e?.locationRef,
        e?.taskType,
        e?.trolleyArrivalTime,
        e?.trolleyFinishedTime,
        e?.trolleyFridgeItem,
        e?.trolleyDDPatientBasis,
        e?.fsMed,
        e?.fsMedFridgeItem,
        e?.fsIvdrip,
        e?.fsDd,
        e?.staffNameReg
      ]);

  @override
  bool isValidKey(Object? o) => o is StatisticArchiveRecord;
}
