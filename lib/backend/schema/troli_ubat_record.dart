import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TroliUbatRecord extends FirestoreRecord {
  TroliUbatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_penghantar" field.
  String? _namaPenghantar;
  String get namaPenghantar => _namaPenghantar ?? '';
  bool hasNamaPenghantar() => _namaPenghantar != null;

  // "troli_arrival_time" field.
  DateTime? _troliArrivalTime;
  DateTime? get troliArrivalTime => _troliArrivalTime;
  bool hasTroliArrivalTime() => _troliArrivalTime != null;

  // "troli_finish_time" field.
  DateTime? _troliFinishTime;
  DateTime? get troliFinishTime => _troliFinishTime;
  bool hasTroliFinishTime() => _troliFinishTime != null;

  // "troli_status" field.
  String? _troliStatus;
  String get troliStatus => _troliStatus ?? '';
  bool hasTroliStatus() => _troliStatus != null;

  // "fridge_item" field.
  bool? _fridgeItem;
  bool get fridgeItem => _fridgeItem ?? false;
  bool hasFridgeItem() => _fridgeItem != null;

  // "coolbox" field.
  bool? _coolbox;
  bool get coolbox => _coolbox ?? false;
  bool hasCoolbox() => _coolbox != null;

  // "dda_book" field.
  bool? _ddaBook;
  bool get ddaBook => _ddaBook ?? false;
  bool hasDdaBook() => _ddaBook != null;

  // "dda_patient_basis" field.
  bool? _ddaPatientBasis;
  bool get ddaPatientBasis => _ddaPatientBasis ?? false;
  bool hasDdaPatientBasis() => _ddaPatientBasis != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "record_date" field.
  String? _recordDate;
  String get recordDate => _recordDate ?? '';
  bool hasRecordDate() => _recordDate != null;

  void _initializeFields() {
    _namaPenghantar = snapshotData['nama_penghantar'] as String?;
    _troliArrivalTime = snapshotData['troli_arrival_time'] as DateTime?;
    _troliFinishTime = snapshotData['troli_finish_time'] as DateTime?;
    _troliStatus = snapshotData['troli_status'] as String?;
    _fridgeItem = snapshotData['fridge_item'] as bool?;
    _coolbox = snapshotData['coolbox'] as bool?;
    _ddaBook = snapshotData['dda_book'] as bool?;
    _ddaPatientBasis = snapshotData['dda_patient_basis'] as bool?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _recordDate = snapshotData['record_date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('troli_ubat');

  static Stream<TroliUbatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TroliUbatRecord.fromSnapshot(s));

  static Future<TroliUbatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TroliUbatRecord.fromSnapshot(s));

  static TroliUbatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TroliUbatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TroliUbatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TroliUbatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TroliUbatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TroliUbatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTroliUbatRecordData({
  String? namaPenghantar,
  DateTime? troliArrivalTime,
  DateTime? troliFinishTime,
  String? troliStatus,
  bool? fridgeItem,
  bool? coolbox,
  bool? ddaBook,
  bool? ddaPatientBasis,
  DocumentReference? locationRef,
  String? recordDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_penghantar': namaPenghantar,
      'troli_arrival_time': troliArrivalTime,
      'troli_finish_time': troliFinishTime,
      'troli_status': troliStatus,
      'fridge_item': fridgeItem,
      'coolbox': coolbox,
      'dda_book': ddaBook,
      'dda_patient_basis': ddaPatientBasis,
      'location_ref': locationRef,
      'record_date': recordDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TroliUbatRecordDocumentEquality implements Equality<TroliUbatRecord> {
  const TroliUbatRecordDocumentEquality();

  @override
  bool equals(TroliUbatRecord? e1, TroliUbatRecord? e2) {
    return e1?.namaPenghantar == e2?.namaPenghantar &&
        e1?.troliArrivalTime == e2?.troliArrivalTime &&
        e1?.troliFinishTime == e2?.troliFinishTime &&
        e1?.troliStatus == e2?.troliStatus &&
        e1?.fridgeItem == e2?.fridgeItem &&
        e1?.coolbox == e2?.coolbox &&
        e1?.ddaBook == e2?.ddaBook &&
        e1?.ddaPatientBasis == e2?.ddaPatientBasis &&
        e1?.locationRef == e2?.locationRef &&
        e1?.recordDate == e2?.recordDate;
  }

  @override
  int hash(TroliUbatRecord? e) => const ListEquality().hash([
        e?.namaPenghantar,
        e?.troliArrivalTime,
        e?.troliFinishTime,
        e?.troliStatus,
        e?.fridgeItem,
        e?.coolbox,
        e?.ddaBook,
        e?.ddaPatientBasis,
        e?.locationRef,
        e?.recordDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TroliUbatRecord;
}
