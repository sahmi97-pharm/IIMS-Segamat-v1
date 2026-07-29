import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FloorStockDdaRecord extends FirestoreRecord {
  FloorStockDdaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fsdd_status" field.
  String? _fsddStatus;
  String get fsddStatus => _fsddStatus ?? '';
  bool hasFsddStatus() => _fsddStatus != null;

  // "fsdd_rb" field.
  bool? _fsddRb;
  bool get fsddRb => _fsddRb ?? false;
  bool hasFsddRb() => _fsddRb != null;

  // "fsdd_rb_exp" field.
  String? _fsddRbExp;
  String get fsddRbExp => _fsddRbExp ?? '';
  bool hasFsddRbExp() => _fsddRbExp != null;

  // "fsdd_rb_comp" field.
  bool? _fsddRbComp;
  bool get fsddRbComp => _fsddRbComp ?? false;
  bool hasFsddRbComp() => _fsddRbComp != null;

  // "fsdd_phis" field.
  bool? _fsddPhis;
  bool get fsddPhis => _fsddPhis ?? false;
  bool hasFsddPhis() => _fsddPhis != null;

  // "fsdd_phis_exp" field.
  String? _fsddPhisExp;
  String get fsddPhisExp => _fsddPhisExp ?? '';
  bool hasFsddPhisExp() => _fsddPhisExp != null;

  // "fsdd_phis_comp" field.
  bool? _fsddPhisComp;
  bool get fsddPhisComp => _fsddPhisComp ?? false;
  bool hasFsddPhisComp() => _fsddPhisComp != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "record_date" field.
  String? _recordDate;
  String get recordDate => _recordDate ?? '';
  bool hasRecordDate() => _recordDate != null;

  void _initializeFields() {
    _fsddStatus = snapshotData['fsdd_status'] as String?;
    _fsddRb = snapshotData['fsdd_rb'] as bool?;
    _fsddRbExp = snapshotData['fsdd_rb_exp'] as String?;
    _fsddRbComp = snapshotData['fsdd_rb_comp'] as bool?;
    _fsddPhis = snapshotData['fsdd_phis'] as bool?;
    _fsddPhisExp = snapshotData['fsdd_phis_exp'] as String?;
    _fsddPhisComp = snapshotData['fsdd_phis_comp'] as bool?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _recordDate = snapshotData['record_date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('floor_stock_dda');

  static Stream<FloorStockDdaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FloorStockDdaRecord.fromSnapshot(s));

  static Future<FloorStockDdaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FloorStockDdaRecord.fromSnapshot(s));

  static FloorStockDdaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FloorStockDdaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FloorStockDdaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FloorStockDdaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FloorStockDdaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FloorStockDdaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFloorStockDdaRecordData({
  String? fsddStatus,
  bool? fsddRb,
  String? fsddRbExp,
  bool? fsddRbComp,
  bool? fsddPhis,
  String? fsddPhisExp,
  bool? fsddPhisComp,
  DocumentReference? locationRef,
  String? recordDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fsdd_status': fsddStatus,
      'fsdd_rb': fsddRb,
      'fsdd_rb_exp': fsddRbExp,
      'fsdd_rb_comp': fsddRbComp,
      'fsdd_phis': fsddPhis,
      'fsdd_phis_exp': fsddPhisExp,
      'fsdd_phis_comp': fsddPhisComp,
      'location_ref': locationRef,
      'record_date': recordDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FloorStockDdaRecordDocumentEquality
    implements Equality<FloorStockDdaRecord> {
  const FloorStockDdaRecordDocumentEquality();

  @override
  bool equals(FloorStockDdaRecord? e1, FloorStockDdaRecord? e2) {
    return e1?.fsddStatus == e2?.fsddStatus &&
        e1?.fsddRb == e2?.fsddRb &&
        e1?.fsddRbExp == e2?.fsddRbExp &&
        e1?.fsddRbComp == e2?.fsddRbComp &&
        e1?.fsddPhis == e2?.fsddPhis &&
        e1?.fsddPhisExp == e2?.fsddPhisExp &&
        e1?.fsddPhisComp == e2?.fsddPhisComp &&
        e1?.locationRef == e2?.locationRef &&
        e1?.recordDate == e2?.recordDate;
  }

  @override
  int hash(FloorStockDdaRecord? e) => const ListEquality().hash([
        e?.fsddStatus,
        e?.fsddRb,
        e?.fsddRbExp,
        e?.fsddRbComp,
        e?.fsddPhis,
        e?.fsddPhisExp,
        e?.fsddPhisComp,
        e?.locationRef,
        e?.recordDate
      ]);

  @override
  bool isValidKey(Object? o) => o is FloorStockDdaRecord;
}
