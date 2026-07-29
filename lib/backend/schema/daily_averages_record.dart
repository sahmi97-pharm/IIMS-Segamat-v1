import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyAveragesRecord extends FirestoreRecord {
  DailyAveragesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "last_update" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  // "average_trolley_time" field.
  double? _averageTrolleyTime;
  double get averageTrolleyTime => _averageTrolleyTime ?? 0.0;
  bool hasAverageTrolleyTime() => _averageTrolleyTime != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _lastUpdate = snapshotData['last_update'] as DateTime?;
    _averageTrolleyTime =
        castToType<double>(snapshotData['average_trolley_time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_averages');

  static Stream<DailyAveragesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyAveragesRecord.fromSnapshot(s));

  static Future<DailyAveragesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyAveragesRecord.fromSnapshot(s));

  static DailyAveragesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyAveragesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyAveragesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyAveragesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyAveragesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyAveragesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyAveragesRecordData({
  DateTime? date,
  DateTime? lastUpdate,
  double? averageTrolleyTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'last_update': lastUpdate,
      'average_trolley_time': averageTrolleyTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyAveragesRecordDocumentEquality
    implements Equality<DailyAveragesRecord> {
  const DailyAveragesRecordDocumentEquality();

  @override
  bool equals(DailyAveragesRecord? e1, DailyAveragesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.lastUpdate == e2?.lastUpdate &&
        e1?.averageTrolleyTime == e2?.averageTrolleyTime;
  }

  @override
  int hash(DailyAveragesRecord? e) => const ListEquality()
      .hash([e?.date, e?.lastUpdate, e?.averageTrolleyTime]);

  @override
  bool isValidKey(Object? o) => o is DailyAveragesRecord;
}
