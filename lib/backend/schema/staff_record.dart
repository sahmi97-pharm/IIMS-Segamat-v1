import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StaffRecord extends FirestoreRecord {
  StaffRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  bool hasStaffId() => _staffId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _staffId = snapshotData['staffId'] as String?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _department = snapshotData['department'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('staff');

  static Stream<StaffRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StaffRecord.fromSnapshot(s));

  static Future<StaffRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StaffRecord.fromSnapshot(s));

  static StaffRecord fromSnapshot(DocumentSnapshot snapshot) => StaffRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StaffRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StaffRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StaffRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StaffRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStaffRecordData({
  String? staffId,
  String? name,
  String? email,
  String? department,
  String? phoneNumber,
  bool? isActive,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'staffId': staffId,
      'name': name,
      'email': email,
      'department': department,
      'phoneNumber': phoneNumber,
      'isActive': isActive,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class StaffRecordDocumentEquality implements Equality<StaffRecord> {
  const StaffRecordDocumentEquality();

  @override
  bool equals(StaffRecord? e1, StaffRecord? e2) {
    return e1?.staffId == e2?.staffId &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.department == e2?.department &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isActive == e2?.isActive &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(StaffRecord? e) => const ListEquality().hash([
        e?.staffId,
        e?.name,
        e?.email,
        e?.department,
        e?.phoneNumber,
        e?.isActive,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is StaffRecord;
}
