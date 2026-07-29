import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FloorStockIvdripRecord extends FirestoreRecord {
  FloorStockIvdripRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fsivdrip_status" field.
  String? _fsivdripStatus;
  String get fsivdripStatus => _fsivdripStatus ?? '';
  bool hasFsivdripStatus() => _fsivdripStatus != null;

  // "fsivdrip_phis" field.
  bool? _fsivdripPhis;
  bool get fsivdripPhis => _fsivdripPhis ?? false;
  bool hasFsivdripPhis() => _fsivdripPhis != null;

  // "fsivdrip_phis_exp" field.
  String? _fsivdripPhisExp;
  String get fsivdripPhisExp => _fsivdripPhisExp ?? '';
  bool hasFsivdripPhisExp() => _fsivdripPhisExp != null;

  // "fsivdrip_phis_comp" field.
  bool? _fsivdripPhisComp;
  bool get fsivdripPhisComp => _fsivdripPhisComp ?? false;
  bool hasFsivdripPhisComp() => _fsivdripPhisComp != null;

  // "fsivdrip_item" field.
  int? _fsivdripItem;
  int get fsivdripItem => _fsivdripItem ?? 0;
  bool hasFsivdripItem() => _fsivdripItem != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "record_date" field.
  String? _recordDate;
  String get recordDate => _recordDate ?? '';
  bool hasRecordDate() => _recordDate != null;

  void _initializeFields() {
    _fsivdripStatus = snapshotData['fsivdrip_status'] as String?;
    _fsivdripPhis = snapshotData['fsivdrip_phis'] as bool?;
    _fsivdripPhisExp = snapshotData['fsivdrip_phis_exp'] as String?;
    _fsivdripPhisComp = snapshotData['fsivdrip_phis_comp'] as bool?;
    _fsivdripItem = castToType<int>(snapshotData['fsivdrip_item']);
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _recordDate = snapshotData['record_date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('floor_stock_ivdrip');

  static Stream<FloorStockIvdripRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FloorStockIvdripRecord.fromSnapshot(s));

  static Future<FloorStockIvdripRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FloorStockIvdripRecord.fromSnapshot(s));

  static FloorStockIvdripRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FloorStockIvdripRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FloorStockIvdripRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FloorStockIvdripRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FloorStockIvdripRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FloorStockIvdripRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFloorStockIvdripRecordData({
  String? fsivdripStatus,
  bool? fsivdripPhis,
  String? fsivdripPhisExp,
  bool? fsivdripPhisComp,
  int? fsivdripItem,
  DocumentReference? locationRef,
  String? recordDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fsivdrip_status': fsivdripStatus,
      'fsivdrip_phis': fsivdripPhis,
      'fsivdrip_phis_exp': fsivdripPhisExp,
      'fsivdrip_phis_comp': fsivdripPhisComp,
      'fsivdrip_item': fsivdripItem,
      'location_ref': locationRef,
      'record_date': recordDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FloorStockIvdripRecordDocumentEquality
    implements Equality<FloorStockIvdripRecord> {
  const FloorStockIvdripRecordDocumentEquality();

  @override
  bool equals(FloorStockIvdripRecord? e1, FloorStockIvdripRecord? e2) {
    return e1?.fsivdripStatus == e2?.fsivdripStatus &&
        e1?.fsivdripPhis == e2?.fsivdripPhis &&
        e1?.fsivdripPhisExp == e2?.fsivdripPhisExp &&
        e1?.fsivdripPhisComp == e2?.fsivdripPhisComp &&
        e1?.fsivdripItem == e2?.fsivdripItem &&
        e1?.locationRef == e2?.locationRef &&
        e1?.recordDate == e2?.recordDate;
  }

  @override
  int hash(FloorStockIvdripRecord? e) => const ListEquality().hash([
        e?.fsivdripStatus,
        e?.fsivdripPhis,
        e?.fsivdripPhisExp,
        e?.fsivdripPhisComp,
        e?.fsivdripItem,
        e?.locationRef,
        e?.recordDate
      ]);

  @override
  bool isValidKey(Object? o) => o is FloorStockIvdripRecord;
}
