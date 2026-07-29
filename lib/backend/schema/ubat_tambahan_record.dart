import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbatTambahanRecord extends FirestoreRecord {
  UbatTambahanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "operational_date" field.
  String? _operationalDate;
  String get operationalDate => _operationalDate ?? '';
  bool hasOperationalDate() => _operationalDate != null;

  // "running_number" field.
  int? _runningNumber;
  int get runningNumber => _runningNumber ?? 0;
  bool hasRunningNumber() => _runningNumber != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "fridge_item" field.
  bool? _fridgeItem;
  bool get fridgeItem => _fridgeItem ?? false;
  bool hasFridgeItem() => _fridgeItem != null;

  // "coolbox" field.
  bool? _coolbox;
  bool get coolbox => _coolbox ?? false;
  bool hasCoolbox() => _coolbox != null;

  // "dd_patient_basis" field.
  bool? _ddPatientBasis;
  bool get ddPatientBasis => _ddPatientBasis ?? false;
  bool hasDdPatientBasis() => _ddPatientBasis != null;

  // "finished_time" field.
  DateTime? _finishedTime;
  DateTime? get finishedTime => _finishedTime;
  bool hasFinishedTime() => _finishedTime != null;

  // "collected_time" field.
  DateTime? _collectedTime;
  DateTime? get collectedTime => _collectedTime;
  bool hasCollectedTime() => _collectedTime != null;

  // "is_finished" field.
  bool? _isFinished;
  bool get isFinished => _isFinished ?? false;
  bool hasIsFinished() => _isFinished != null;

  // "dd_patient_basis_book" field.
  bool? _ddPatientBasisBook;
  bool get ddPatientBasisBook => _ddPatientBasisBook ?? false;
  bool hasDdPatientBasisBook() => _ddPatientBasisBook != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  void _initializeFields() {
    _operationalDate = snapshotData['operational_date'] as String?;
    _runningNumber = castToType<int>(snapshotData['running_number']);
    _status = snapshotData['status'] as String?;
    _fridgeItem = snapshotData['fridge_item'] as bool?;
    _coolbox = snapshotData['coolbox'] as bool?;
    _ddPatientBasis = snapshotData['dd_patient_basis'] as bool?;
    _finishedTime = snapshotData['finished_time'] as DateTime?;
    _collectedTime = snapshotData['collected_time'] as DateTime?;
    _isFinished = snapshotData['is_finished'] as bool?;
    _ddPatientBasisBook = snapshotData['dd_patient_basis_book'] as bool?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _createTime = snapshotData['create_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubat_tambahan');

  static Stream<UbatTambahanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbatTambahanRecord.fromSnapshot(s));

  static Future<UbatTambahanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UbatTambahanRecord.fromSnapshot(s));

  static UbatTambahanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbatTambahanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbatTambahanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbatTambahanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbatTambahanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbatTambahanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbatTambahanRecordData({
  String? operationalDate,
  int? runningNumber,
  String? status,
  bool? fridgeItem,
  bool? coolbox,
  bool? ddPatientBasis,
  DateTime? finishedTime,
  DateTime? collectedTime,
  bool? isFinished,
  bool? ddPatientBasisBook,
  DocumentReference? locationRef,
  DateTime? createTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'operational_date': operationalDate,
      'running_number': runningNumber,
      'status': status,
      'fridge_item': fridgeItem,
      'coolbox': coolbox,
      'dd_patient_basis': ddPatientBasis,
      'finished_time': finishedTime,
      'collected_time': collectedTime,
      'is_finished': isFinished,
      'dd_patient_basis_book': ddPatientBasisBook,
      'location_ref': locationRef,
      'create_time': createTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbatTambahanRecordDocumentEquality
    implements Equality<UbatTambahanRecord> {
  const UbatTambahanRecordDocumentEquality();

  @override
  bool equals(UbatTambahanRecord? e1, UbatTambahanRecord? e2) {
    return e1?.operationalDate == e2?.operationalDate &&
        e1?.runningNumber == e2?.runningNumber &&
        e1?.status == e2?.status &&
        e1?.fridgeItem == e2?.fridgeItem &&
        e1?.coolbox == e2?.coolbox &&
        e1?.ddPatientBasis == e2?.ddPatientBasis &&
        e1?.finishedTime == e2?.finishedTime &&
        e1?.collectedTime == e2?.collectedTime &&
        e1?.isFinished == e2?.isFinished &&
        e1?.ddPatientBasisBook == e2?.ddPatientBasisBook &&
        e1?.locationRef == e2?.locationRef &&
        e1?.createTime == e2?.createTime;
  }

  @override
  int hash(UbatTambahanRecord? e) => const ListEquality().hash([
        e?.operationalDate,
        e?.runningNumber,
        e?.status,
        e?.fridgeItem,
        e?.coolbox,
        e?.ddPatientBasis,
        e?.finishedTime,
        e?.collectedTime,
        e?.isFinished,
        e?.ddPatientBasisBook,
        e?.locationRef,
        e?.createTime
      ]);

  @override
  bool isValidKey(Object? o) => o is UbatTambahanRecord;
}
