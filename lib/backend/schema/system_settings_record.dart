import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SystemSettingsRecord extends FirestoreRecord {
  SystemSettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "calendarViewDays" field.
  int? _calendarViewDays;
  int get calendarViewDays => _calendarViewDays ?? 0;
  bool hasCalendarViewDays() => _calendarViewDays != null;

  // "autoApprovePergerakan" field.
  bool? _autoApprovePergerakan;
  bool get autoApprovePergerakan => _autoApprovePergerakan ?? false;
  bool hasAutoApprovePergerakan() => _autoApprovePergerakan != null;

  // "autoApproveOff" field.
  bool? _autoApproveOff;
  bool get autoApproveOff => _autoApproveOff ?? false;
  bool hasAutoApproveOff() => _autoApproveOff != null;

  // "autoGeneratePNCForNightShift" field.
  bool? _autoGeneratePNCForNightShift;
  bool get autoGeneratePNCForNightShift =>
      _autoGeneratePNCForNightShift ?? false;
  bool hasAutoGeneratePNCForNightShift() =>
      _autoGeneratePNCForNightShift != null;

  // "requireApprovalForCuti" field.
  bool? _requireApprovalForCuti;
  bool get requireApprovalForCuti => _requireApprovalForCuti ?? false;
  bool hasRequireApprovalForCuti() => _requireApprovalForCuti != null;

  // "maxPendingApplications" field.
  int? _maxPendingApplications;
  int get maxPendingApplications => _maxPendingApplications ?? 0;
  bool hasMaxPendingApplications() => _maxPendingApplications != null;

  // "maxStaffCount" field.
  int? _maxStaffCount;
  int get maxStaffCount => _maxStaffCount ?? 0;
  bool hasMaxStaffCount() => _maxStaffCount != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _calendarViewDays = castToType<int>(snapshotData['calendarViewDays']);
    _autoApprovePergerakan = snapshotData['autoApprovePergerakan'] as bool?;
    _autoApproveOff = snapshotData['autoApproveOff'] as bool?;
    _autoGeneratePNCForNightShift =
        snapshotData['autoGeneratePNCForNightShift'] as bool?;
    _requireApprovalForCuti = snapshotData['requireApprovalForCuti'] as bool?;
    _maxPendingApplications =
        castToType<int>(snapshotData['maxPendingApplications']);
    _maxStaffCount = castToType<int>(snapshotData['maxStaffCount']);
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('system_settings');

  static Stream<SystemSettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SystemSettingsRecord.fromSnapshot(s));

  static Future<SystemSettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SystemSettingsRecord.fromSnapshot(s));

  static SystemSettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SystemSettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SystemSettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SystemSettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SystemSettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SystemSettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSystemSettingsRecordData({
  int? calendarViewDays,
  bool? autoApprovePergerakan,
  bool? autoApproveOff,
  bool? autoGeneratePNCForNightShift,
  bool? requireApprovalForCuti,
  int? maxPendingApplications,
  int? maxStaffCount,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'calendarViewDays': calendarViewDays,
      'autoApprovePergerakan': autoApprovePergerakan,
      'autoApproveOff': autoApproveOff,
      'autoGeneratePNCForNightShift': autoGeneratePNCForNightShift,
      'requireApprovalForCuti': requireApprovalForCuti,
      'maxPendingApplications': maxPendingApplications,
      'maxStaffCount': maxStaffCount,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SystemSettingsRecordDocumentEquality
    implements Equality<SystemSettingsRecord> {
  const SystemSettingsRecordDocumentEquality();

  @override
  bool equals(SystemSettingsRecord? e1, SystemSettingsRecord? e2) {
    return e1?.calendarViewDays == e2?.calendarViewDays &&
        e1?.autoApprovePergerakan == e2?.autoApprovePergerakan &&
        e1?.autoApproveOff == e2?.autoApproveOff &&
        e1?.autoGeneratePNCForNightShift == e2?.autoGeneratePNCForNightShift &&
        e1?.requireApprovalForCuti == e2?.requireApprovalForCuti &&
        e1?.maxPendingApplications == e2?.maxPendingApplications &&
        e1?.maxStaffCount == e2?.maxStaffCount &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(SystemSettingsRecord? e) => const ListEquality().hash([
        e?.calendarViewDays,
        e?.autoApprovePergerakan,
        e?.autoApproveOff,
        e?.autoGeneratePNCForNightShift,
        e?.requireApprovalForCuti,
        e?.maxPendingApplications,
        e?.maxStaffCount,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is SystemSettingsRecord;
}
