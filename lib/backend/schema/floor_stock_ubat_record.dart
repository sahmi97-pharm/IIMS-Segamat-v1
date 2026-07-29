import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FloorStockUbatRecord extends FirestoreRecord {
  FloorStockUbatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fs_ubat_status" field.
  String? _fsUbatStatus;
  String get fsUbatStatus => _fsUbatStatus ?? '';
  bool hasFsUbatStatus() => _fsUbatStatus != null;

  // "fs_ubat_fridge_item" field.
  bool? _fsUbatFridgeItem;
  bool get fsUbatFridgeItem => _fsUbatFridgeItem ?? false;
  bool hasFsUbatFridgeItem() => _fsUbatFridgeItem != null;

  // "fs_ubat_coolbox" field.
  bool? _fsUbatCoolbox;
  bool get fsUbatCoolbox => _fsUbatCoolbox ?? false;
  bool hasFsUbatCoolbox() => _fsUbatCoolbox != null;

  // "fsu_botol_sampul_eb" field.
  bool? _fsuBotolSampulEb;
  bool get fsuBotolSampulEb => _fsuBotolSampulEb ?? false;
  bool hasFsuBotolSampulEb() => _fsuBotolSampulEb != null;

  // "fsu_botol_sampul_eb_exp" field.
  String? _fsuBotolSampulEbExp;
  String get fsuBotolSampulEbExp => _fsuBotolSampulEbExp ?? '';
  bool hasFsuBotolSampulEbExp() => _fsuBotolSampulEbExp != null;

  // "fsu_rb" field.
  bool? _fsuRb;
  bool get fsuRb => _fsuRb ?? false;
  bool hasFsuRb() => _fsuRb != null;

  // "fsu_rb_exp" field.
  String? _fsuRbExp;
  String get fsuRbExp => _fsuRbExp ?? '';
  bool hasFsuRbExp() => _fsuRbExp != null;

  // "fsu_phis" field.
  bool? _fsuPhis;
  bool get fsuPhis => _fsuPhis ?? false;
  bool hasFsuPhis() => _fsuPhis != null;

  // "fsu_phis_exp" field.
  String? _fsuPhisExp;
  String get fsuPhisExp => _fsuPhisExp ?? '';
  bool hasFsuPhisExp() => _fsuPhisExp != null;

  // "fsu_item" field.
  int? _fsuItem;
  int get fsuItem => _fsuItem ?? 0;
  bool hasFsuItem() => _fsuItem != null;

  // "fsu_botol_sampul_eb_comp" field.
  bool? _fsuBotolSampulEbComp;
  bool get fsuBotolSampulEbComp => _fsuBotolSampulEbComp ?? false;
  bool hasFsuBotolSampulEbComp() => _fsuBotolSampulEbComp != null;

  // "fsu_rb_comp" field.
  bool? _fsuRbComp;
  bool get fsuRbComp => _fsuRbComp ?? false;
  bool hasFsuRbComp() => _fsuRbComp != null;

  // "fsu_phis_comp" field.
  bool? _fsuPhisComp;
  bool get fsuPhisComp => _fsuPhisComp ?? false;
  bool hasFsuPhisComp() => _fsuPhisComp != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "record_date" field.
  String? _recordDate;
  String get recordDate => _recordDate ?? '';
  bool hasRecordDate() => _recordDate != null;

  void _initializeFields() {
    _fsUbatStatus = snapshotData['fs_ubat_status'] as String?;
    _fsUbatFridgeItem = snapshotData['fs_ubat_fridge_item'] as bool?;
    _fsUbatCoolbox = snapshotData['fs_ubat_coolbox'] as bool?;
    _fsuBotolSampulEb = snapshotData['fsu_botol_sampul_eb'] as bool?;
    _fsuBotolSampulEbExp = snapshotData['fsu_botol_sampul_eb_exp'] as String?;
    _fsuRb = snapshotData['fsu_rb'] as bool?;
    _fsuRbExp = snapshotData['fsu_rb_exp'] as String?;
    _fsuPhis = snapshotData['fsu_phis'] as bool?;
    _fsuPhisExp = snapshotData['fsu_phis_exp'] as String?;
    _fsuItem = castToType<int>(snapshotData['fsu_item']);
    _fsuBotolSampulEbComp = snapshotData['fsu_botol_sampul_eb_comp'] as bool?;
    _fsuRbComp = snapshotData['fsu_rb_comp'] as bool?;
    _fsuPhisComp = snapshotData['fsu_phis_comp'] as bool?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _recordDate = snapshotData['record_date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('floor_stock_ubat');

  static Stream<FloorStockUbatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FloorStockUbatRecord.fromSnapshot(s));

  static Future<FloorStockUbatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FloorStockUbatRecord.fromSnapshot(s));

  static FloorStockUbatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FloorStockUbatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FloorStockUbatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FloorStockUbatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FloorStockUbatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FloorStockUbatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFloorStockUbatRecordData({
  String? fsUbatStatus,
  bool? fsUbatFridgeItem,
  bool? fsUbatCoolbox,
  bool? fsuBotolSampulEb,
  String? fsuBotolSampulEbExp,
  bool? fsuRb,
  String? fsuRbExp,
  bool? fsuPhis,
  String? fsuPhisExp,
  int? fsuItem,
  bool? fsuBotolSampulEbComp,
  bool? fsuRbComp,
  bool? fsuPhisComp,
  DocumentReference? locationRef,
  String? recordDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fs_ubat_status': fsUbatStatus,
      'fs_ubat_fridge_item': fsUbatFridgeItem,
      'fs_ubat_coolbox': fsUbatCoolbox,
      'fsu_botol_sampul_eb': fsuBotolSampulEb,
      'fsu_botol_sampul_eb_exp': fsuBotolSampulEbExp,
      'fsu_rb': fsuRb,
      'fsu_rb_exp': fsuRbExp,
      'fsu_phis': fsuPhis,
      'fsu_phis_exp': fsuPhisExp,
      'fsu_item': fsuItem,
      'fsu_botol_sampul_eb_comp': fsuBotolSampulEbComp,
      'fsu_rb_comp': fsuRbComp,
      'fsu_phis_comp': fsuPhisComp,
      'location_ref': locationRef,
      'record_date': recordDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FloorStockUbatRecordDocumentEquality
    implements Equality<FloorStockUbatRecord> {
  const FloorStockUbatRecordDocumentEquality();

  @override
  bool equals(FloorStockUbatRecord? e1, FloorStockUbatRecord? e2) {
    return e1?.fsUbatStatus == e2?.fsUbatStatus &&
        e1?.fsUbatFridgeItem == e2?.fsUbatFridgeItem &&
        e1?.fsUbatCoolbox == e2?.fsUbatCoolbox &&
        e1?.fsuBotolSampulEb == e2?.fsuBotolSampulEb &&
        e1?.fsuBotolSampulEbExp == e2?.fsuBotolSampulEbExp &&
        e1?.fsuRb == e2?.fsuRb &&
        e1?.fsuRbExp == e2?.fsuRbExp &&
        e1?.fsuPhis == e2?.fsuPhis &&
        e1?.fsuPhisExp == e2?.fsuPhisExp &&
        e1?.fsuItem == e2?.fsuItem &&
        e1?.fsuBotolSampulEbComp == e2?.fsuBotolSampulEbComp &&
        e1?.fsuRbComp == e2?.fsuRbComp &&
        e1?.fsuPhisComp == e2?.fsuPhisComp &&
        e1?.locationRef == e2?.locationRef &&
        e1?.recordDate == e2?.recordDate;
  }

  @override
  int hash(FloorStockUbatRecord? e) => const ListEquality().hash([
        e?.fsUbatStatus,
        e?.fsUbatFridgeItem,
        e?.fsUbatCoolbox,
        e?.fsuBotolSampulEb,
        e?.fsuBotolSampulEbExp,
        e?.fsuRb,
        e?.fsuRbExp,
        e?.fsuPhis,
        e?.fsuPhisExp,
        e?.fsuItem,
        e?.fsuBotolSampulEbComp,
        e?.fsuRbComp,
        e?.fsuPhisComp,
        e?.locationRef,
        e?.recordDate
      ]);

  @override
  bool isValidKey(Object? o) => o is FloorStockUbatRecord;
}
