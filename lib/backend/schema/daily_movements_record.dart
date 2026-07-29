import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyMovementsRecord extends FirestoreRecord {
  DailyMovementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "dayOfWeek" field.
  String? _dayOfWeek;
  String get dayOfWeek => _dayOfWeek ?? '';
  bool hasDayOfWeek() => _dayOfWeek != null;

  // "movements" field.
  List<MovementsStruct>? _movements;
  List<MovementsStruct> get movements => _movements ?? const [];
  bool hasMovements() => _movements != null;

  // "totalStaff" field.
  int? _totalStaff;
  int get totalStaff => _totalStaff ?? 0;
  bool hasTotalStaff() => _totalStaff != null;

  // "onDuty" field.
  int? _onDuty;
  int get onDuty => _onDuty ?? 0;
  bool hasOnDuty() => _onDuty != null;

  // "onCuti" field.
  int? _onCuti;
  int get onCuti => _onCuti ?? 0;
  bool hasOnCuti() => _onCuti != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _date = snapshotData['date'] as String?;
    _dayOfWeek = snapshotData['dayOfWeek'] as String?;
    _movements = getStructList(
      snapshotData['movements'],
      MovementsStruct.fromMap,
    );
    _totalStaff = castToType<int>(snapshotData['totalStaff']);
    _onDuty = castToType<int>(snapshotData['onDuty']);
    _onCuti = castToType<int>(snapshotData['onCuti']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_movements');

  static Stream<DailyMovementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyMovementsRecord.fromSnapshot(s));

  static Future<DailyMovementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyMovementsRecord.fromSnapshot(s));

  static DailyMovementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyMovementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyMovementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyMovementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyMovementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyMovementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyMovementsRecordData({
  String? date,
  String? dayOfWeek,
  int? totalStaff,
  int? onDuty,
  int? onCuti,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'dayOfWeek': dayOfWeek,
      'totalStaff': totalStaff,
      'onDuty': onDuty,
      'onCuti': onCuti,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyMovementsRecordDocumentEquality
    implements Equality<DailyMovementsRecord> {
  const DailyMovementsRecordDocumentEquality();

  @override
  bool equals(DailyMovementsRecord? e1, DailyMovementsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.dayOfWeek == e2?.dayOfWeek &&
        listEquality.equals(e1?.movements, e2?.movements) &&
        e1?.totalStaff == e2?.totalStaff &&
        e1?.onDuty == e2?.onDuty &&
        e1?.onCuti == e2?.onCuti &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(DailyMovementsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.dayOfWeek,
        e?.movements,
        e?.totalStaff,
        e?.onDuty,
        e?.onCuti,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is DailyMovementsRecord;
}
