import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsRecord extends FirestoreRecord {
  LocationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "trolley_status" field.
  String? _trolleyStatus;
  String get trolleyStatus => _trolleyStatus ?? '';
  bool hasTrolleyStatus() => _trolleyStatus != null;

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

  // "fs_med_status" field.
  String? _fsMedStatus;
  String get fsMedStatus => _fsMedStatus ?? '';
  bool hasFsMedStatus() => _fsMedStatus != null;

  // "fs_med_fridge_item" field.
  bool? _fsMedFridgeItem;
  bool get fsMedFridgeItem => _fsMedFridgeItem ?? false;
  bool hasFsMedFridgeItem() => _fsMedFridgeItem != null;

  // "fs_ivdrip_status" field.
  String? _fsIvdripStatus;
  String get fsIvdripStatus => _fsIvdripStatus ?? '';
  bool hasFsIvdripStatus() => _fsIvdripStatus != null;

  // "fs_dd_status" field.
  String? _fsDdStatus;
  String get fsDdStatus => _fsDdStatus ?? '';
  bool hasFsDdStatus() => _fsDdStatus != null;

  // "last_update" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  // "reg_name" field.
  String? _regName;
  String get regName => _regName ?? '';
  bool hasRegName() => _regName != null;

  // "tdk_TU_Coolbox" field.
  bool? _tdkTUCoolbox;
  bool get tdkTUCoolbox => _tdkTUCoolbox ?? false;
  bool hasTdkTUCoolbox() => _tdkTUCoolbox != null;

  // "tdk_TU_DDPatientBasis" field.
  bool? _tdkTUDDPatientBasis;
  bool get tdkTUDDPatientBasis => _tdkTUDDPatientBasis ?? false;
  bool hasTdkTUDDPatientBasis() => _tdkTUDDPatientBasis != null;

  // "tdk_FSU_Coolbox" field.
  bool? _tdkFSUCoolbox;
  bool get tdkFSUCoolbox => _tdkFSUCoolbox ?? false;
  bool hasTdkFSUCoolbox() => _tdkFSUCoolbox != null;

  // "fsu_beb" field.
  bool? _fsuBeb;
  bool get fsuBeb => _fsuBeb ?? false;
  bool hasFsuBeb() => _fsuBeb != null;

  // "fsu_bebr" field.
  String? _fsuBebr;
  String get fsuBebr => _fsuBebr ?? '';
  bool hasFsuBebr() => _fsuBebr != null;

  // "fsu_rb" field.
  bool? _fsuRb;
  bool get fsuRb => _fsuRb ?? false;
  bool hasFsuRb() => _fsuRb != null;

  // "fsu_rbr" field.
  String? _fsuRbr;
  String get fsuRbr => _fsuRbr ?? '';
  bool hasFsuRbr() => _fsuRbr != null;

  // "fsu_phis" field.
  bool? _fsuPhis;
  bool get fsuPhis => _fsuPhis ?? false;
  bool hasFsuPhis() => _fsuPhis != null;

  // "fsu_phisr" field.
  String? _fsuPhisr;
  String get fsuPhisr => _fsuPhisr ?? '';
  bool hasFsuPhisr() => _fsuPhisr != null;

  // "fsivd_phis" field.
  bool? _fsivdPhis;
  bool get fsivdPhis => _fsivdPhis ?? false;
  bool hasFsivdPhis() => _fsivdPhis != null;

  // "fsivd_phisr" field.
  String? _fsivdPhisr;
  String get fsivdPhisr => _fsivdPhisr ?? '';
  bool hasFsivdPhisr() => _fsivdPhisr != null;

  // "fsdd_rb" field.
  bool? _fsddRb;
  bool get fsddRb => _fsddRb ?? false;
  bool hasFsddRb() => _fsddRb != null;

  // "fsdd_rbr" field.
  String? _fsddRbr;
  String get fsddRbr => _fsddRbr ?? '';
  bool hasFsddRbr() => _fsddRbr != null;

  // "fsdd_phis" field.
  bool? _fsddPhis;
  bool get fsddPhis => _fsddPhis ?? false;
  bool hasFsddPhis() => _fsddPhis != null;

  // "fsdd_phisr" field.
  String? _fsddPhisr;
  String get fsddPhisr => _fsddPhisr ?? '';
  bool hasFsddPhisr() => _fsddPhisr != null;

  // "fsu_item" field.
  int? _fsuItem;
  int get fsuItem => _fsuItem ?? 0;
  bool hasFsuItem() => _fsuItem != null;

  // "fsivdrip_item" field.
  int? _fsivdripItem;
  int get fsivdripItem => _fsivdripItem ?? 0;
  bool hasFsivdripItem() => _fsivdripItem != null;

  // "fsu_bebc" field.
  bool? _fsuBebc;
  bool get fsuBebc => _fsuBebc ?? false;
  bool hasFsuBebc() => _fsuBebc != null;

  // "fsu_rbc" field.
  bool? _fsuRbc;
  bool get fsuRbc => _fsuRbc ?? false;
  bool hasFsuRbc() => _fsuRbc != null;

  // "fsu_phisc" field.
  bool? _fsuPhisc;
  bool get fsuPhisc => _fsuPhisc ?? false;
  bool hasFsuPhisc() => _fsuPhisc != null;

  // "fsivdrip_phisc" field.
  bool? _fsivdripPhisc;
  bool get fsivdripPhisc => _fsivdripPhisc ?? false;
  bool hasFsivdripPhisc() => _fsivdripPhisc != null;

  // "fsdd_rbc" field.
  bool? _fsddRbc;
  bool get fsddRbc => _fsddRbc ?? false;
  bool hasFsddRbc() => _fsddRbc != null;

  // "fsdd_phisc" field.
  bool? _fsddPhisc;
  bool get fsddPhisc => _fsddPhisc ?? false;
  bool hasFsddPhisc() => _fsddPhisc != null;

  // "notificationCount" field.
  int? _notificationCount;
  int get notificationCount => _notificationCount ?? 0;
  bool hasNotificationCount() => _notificationCount != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _trolleyStatus = snapshotData['trolley_status'] as String?;
    _trolleyArrivalTime = snapshotData['trolley_arrival_time'] as DateTime?;
    _trolleyFinishedTime = snapshotData['trolley_finished_time'] as DateTime?;
    _trolleyFridgeItem = snapshotData['trolley_fridge_item'] as bool?;
    _trolleyDDPatientBasis = snapshotData['trolley_DD_patient_basis'] as bool?;
    _fsMedStatus = snapshotData['fs_med_status'] as String?;
    _fsMedFridgeItem = snapshotData['fs_med_fridge_item'] as bool?;
    _fsIvdripStatus = snapshotData['fs_ivdrip_status'] as String?;
    _fsDdStatus = snapshotData['fs_dd_status'] as String?;
    _lastUpdate = snapshotData['last_update'] as DateTime?;
    _regName = snapshotData['reg_name'] as String?;
    _tdkTUCoolbox = snapshotData['tdk_TU_Coolbox'] as bool?;
    _tdkTUDDPatientBasis = snapshotData['tdk_TU_DDPatientBasis'] as bool?;
    _tdkFSUCoolbox = snapshotData['tdk_FSU_Coolbox'] as bool?;
    _fsuBeb = snapshotData['fsu_beb'] as bool?;
    _fsuBebr = snapshotData['fsu_bebr'] as String?;
    _fsuRb = snapshotData['fsu_rb'] as bool?;
    _fsuRbr = snapshotData['fsu_rbr'] as String?;
    _fsuPhis = snapshotData['fsu_phis'] as bool?;
    _fsuPhisr = snapshotData['fsu_phisr'] as String?;
    _fsivdPhis = snapshotData['fsivd_phis'] as bool?;
    _fsivdPhisr = snapshotData['fsivd_phisr'] as String?;
    _fsddRb = snapshotData['fsdd_rb'] as bool?;
    _fsddRbr = snapshotData['fsdd_rbr'] as String?;
    _fsddPhis = snapshotData['fsdd_phis'] as bool?;
    _fsddPhisr = snapshotData['fsdd_phisr'] as String?;
    _fsuItem = castToType<int>(snapshotData['fsu_item']);
    _fsivdripItem = castToType<int>(snapshotData['fsivdrip_item']);
    _fsuBebc = snapshotData['fsu_bebc'] as bool?;
    _fsuRbc = snapshotData['fsu_rbc'] as bool?;
    _fsuPhisc = snapshotData['fsu_phisc'] as bool?;
    _fsivdripPhisc = snapshotData['fsivdrip_phisc'] as bool?;
    _fsddRbc = snapshotData['fsdd_rbc'] as bool?;
    _fsddPhisc = snapshotData['fsdd_phisc'] as bool?;
    _notificationCount = castToType<int>(snapshotData['notificationCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsRecord.fromSnapshot(s));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsRecord.fromSnapshot(s));

  static LocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsRecordData({
  String? name,
  String? type,
  String? trolleyStatus,
  DateTime? trolleyArrivalTime,
  DateTime? trolleyFinishedTime,
  bool? trolleyFridgeItem,
  bool? trolleyDDPatientBasis,
  String? fsMedStatus,
  bool? fsMedFridgeItem,
  String? fsIvdripStatus,
  String? fsDdStatus,
  DateTime? lastUpdate,
  String? regName,
  bool? tdkTUCoolbox,
  bool? tdkTUDDPatientBasis,
  bool? tdkFSUCoolbox,
  bool? fsuBeb,
  String? fsuBebr,
  bool? fsuRb,
  String? fsuRbr,
  bool? fsuPhis,
  String? fsuPhisr,
  bool? fsivdPhis,
  String? fsivdPhisr,
  bool? fsddRb,
  String? fsddRbr,
  bool? fsddPhis,
  String? fsddPhisr,
  int? fsuItem,
  int? fsivdripItem,
  bool? fsuBebc,
  bool? fsuRbc,
  bool? fsuPhisc,
  bool? fsivdripPhisc,
  bool? fsddRbc,
  bool? fsddPhisc,
  int? notificationCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'trolley_status': trolleyStatus,
      'trolley_arrival_time': trolleyArrivalTime,
      'trolley_finished_time': trolleyFinishedTime,
      'trolley_fridge_item': trolleyFridgeItem,
      'trolley_DD_patient_basis': trolleyDDPatientBasis,
      'fs_med_status': fsMedStatus,
      'fs_med_fridge_item': fsMedFridgeItem,
      'fs_ivdrip_status': fsIvdripStatus,
      'fs_dd_status': fsDdStatus,
      'last_update': lastUpdate,
      'reg_name': regName,
      'tdk_TU_Coolbox': tdkTUCoolbox,
      'tdk_TU_DDPatientBasis': tdkTUDDPatientBasis,
      'tdk_FSU_Coolbox': tdkFSUCoolbox,
      'fsu_beb': fsuBeb,
      'fsu_bebr': fsuBebr,
      'fsu_rb': fsuRb,
      'fsu_rbr': fsuRbr,
      'fsu_phis': fsuPhis,
      'fsu_phisr': fsuPhisr,
      'fsivd_phis': fsivdPhis,
      'fsivd_phisr': fsivdPhisr,
      'fsdd_rb': fsddRb,
      'fsdd_rbr': fsddRbr,
      'fsdd_phis': fsddPhis,
      'fsdd_phisr': fsddPhisr,
      'fsu_item': fsuItem,
      'fsivdrip_item': fsivdripItem,
      'fsu_bebc': fsuBebc,
      'fsu_rbc': fsuRbc,
      'fsu_phisc': fsuPhisc,
      'fsivdrip_phisc': fsivdripPhisc,
      'fsdd_rbc': fsddRbc,
      'fsdd_phisc': fsddPhisc,
      'notificationCount': notificationCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsRecordDocumentEquality implements Equality<LocationsRecord> {
  const LocationsRecordDocumentEquality();

  @override
  bool equals(LocationsRecord? e1, LocationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.trolleyStatus == e2?.trolleyStatus &&
        e1?.trolleyArrivalTime == e2?.trolleyArrivalTime &&
        e1?.trolleyFinishedTime == e2?.trolleyFinishedTime &&
        e1?.trolleyFridgeItem == e2?.trolleyFridgeItem &&
        e1?.trolleyDDPatientBasis == e2?.trolleyDDPatientBasis &&
        e1?.fsMedStatus == e2?.fsMedStatus &&
        e1?.fsMedFridgeItem == e2?.fsMedFridgeItem &&
        e1?.fsIvdripStatus == e2?.fsIvdripStatus &&
        e1?.fsDdStatus == e2?.fsDdStatus &&
        e1?.lastUpdate == e2?.lastUpdate &&
        e1?.regName == e2?.regName &&
        e1?.tdkTUCoolbox == e2?.tdkTUCoolbox &&
        e1?.tdkTUDDPatientBasis == e2?.tdkTUDDPatientBasis &&
        e1?.tdkFSUCoolbox == e2?.tdkFSUCoolbox &&
        e1?.fsuBeb == e2?.fsuBeb &&
        e1?.fsuBebr == e2?.fsuBebr &&
        e1?.fsuRb == e2?.fsuRb &&
        e1?.fsuRbr == e2?.fsuRbr &&
        e1?.fsuPhis == e2?.fsuPhis &&
        e1?.fsuPhisr == e2?.fsuPhisr &&
        e1?.fsivdPhis == e2?.fsivdPhis &&
        e1?.fsivdPhisr == e2?.fsivdPhisr &&
        e1?.fsddRb == e2?.fsddRb &&
        e1?.fsddRbr == e2?.fsddRbr &&
        e1?.fsddPhis == e2?.fsddPhis &&
        e1?.fsddPhisr == e2?.fsddPhisr &&
        e1?.fsuItem == e2?.fsuItem &&
        e1?.fsivdripItem == e2?.fsivdripItem &&
        e1?.fsuBebc == e2?.fsuBebc &&
        e1?.fsuRbc == e2?.fsuRbc &&
        e1?.fsuPhisc == e2?.fsuPhisc &&
        e1?.fsivdripPhisc == e2?.fsivdripPhisc &&
        e1?.fsddRbc == e2?.fsddRbc &&
        e1?.fsddPhisc == e2?.fsddPhisc &&
        e1?.notificationCount == e2?.notificationCount;
  }

  @override
  int hash(LocationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.type,
        e?.trolleyStatus,
        e?.trolleyArrivalTime,
        e?.trolleyFinishedTime,
        e?.trolleyFridgeItem,
        e?.trolleyDDPatientBasis,
        e?.fsMedStatus,
        e?.fsMedFridgeItem,
        e?.fsIvdripStatus,
        e?.fsDdStatus,
        e?.lastUpdate,
        e?.regName,
        e?.tdkTUCoolbox,
        e?.tdkTUDDPatientBasis,
        e?.tdkFSUCoolbox,
        e?.fsuBeb,
        e?.fsuBebr,
        e?.fsuRb,
        e?.fsuRbr,
        e?.fsuPhis,
        e?.fsuPhisr,
        e?.fsivdPhis,
        e?.fsivdPhisr,
        e?.fsddRb,
        e?.fsddRbr,
        e?.fsddPhis,
        e?.fsddPhisr,
        e?.fsuItem,
        e?.fsivdripItem,
        e?.fsuBebc,
        e?.fsuRbc,
        e?.fsuPhisc,
        e?.fsivdripPhisc,
        e?.fsddRbc,
        e?.fsddPhisc,
        e?.notificationCount
      ]);

  @override
  bool isValidKey(Object? o) => o is LocationsRecord;
}
