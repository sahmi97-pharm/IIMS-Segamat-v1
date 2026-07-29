import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MovementApplicationsRecord extends FirestoreRecord {
  MovementApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "applicationId" field.
  String? _applicationId;
  String get applicationId => _applicationId ?? '';
  bool hasApplicationId() => _applicationId != null;

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  bool hasStaffId() => _staffId != null;

  // "staffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  bool hasStaffName() => _staffName != null;

  // "applicationType" field.
  String? _applicationType;
  String get applicationType => _applicationType ?? '';
  bool hasApplicationType() => _applicationType != null;

  // "movementType" field.
  String? _movementType;
  String get movementType => _movementType ?? '';
  bool hasMovementType() => _movementType != null;

  // "movementDetails" field.
  String? _movementDetails;
  String get movementDetails => _movementDetails ?? '';
  bool hasMovementDetails() => _movementDetails != null;

  // "cutiType" field.
  String? _cutiType;
  String get cutiType => _cutiType ?? '';
  bool hasCutiType() => _cutiType != null;

  // "applicationDate" field.
  String? _applicationDate;
  String get applicationDate => _applicationDate ?? '';
  bool hasApplicationDate() => _applicationDate != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  bool hasEndDate() => _endDate != null;

  // "totalDays" field.
  int? _totalDays;
  int get totalDays => _totalDays ?? 0;
  bool hasTotalDays() => _totalDays != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "requiresApproval" field.
  bool? _requiresApproval;
  bool get requiresApproval => _requiresApproval ?? false;
  bool hasRequiresApproval() => _requiresApproval != null;

  // "approverId" field.
  String? _approverId;
  String get approverId => _approverId ?? '';
  bool hasApproverId() => _approverId != null;

  // "approverName" field.
  String? _approverName;
  String get approverName => _approverName ?? '';
  bool hasApproverName() => _approverName != null;

  // "approvalDate" field.
  DateTime? _approvalDate;
  DateTime? get approvalDate => _approvalDate;
  bool hasApprovalDate() => _approvalDate != null;

  // "approvalReason" field.
  String? _approvalReason;
  String get approvalReason => _approvalReason ?? '';
  bool hasApprovalReason() => _approvalReason != null;

  // "queueNumber" field.
  int? _queueNumber;
  int get queueNumber => _queueNumber ?? 0;
  bool hasQueueNumber() => _queueNumber != null;

  // "generatesPNC" field.
  bool? _generatesPNC;
  bool get generatesPNC => _generatesPNC ?? false;
  bool hasGeneratesPNC() => _generatesPNC != null;

  // "pncDate" field.
  String? _pncDate;
  String get pncDate => _pncDate ?? '';
  bool hasPncDate() => _pncDate != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "appliedBy" field.
  String? _appliedBy;
  String get appliedBy => _appliedBy ?? '';
  bool hasAppliedBy() => _appliedBy != null;

  void _initializeFields() {
    _applicationId = snapshotData['applicationId'] as String?;
    _staffId = snapshotData['staffId'] as String?;
    _staffName = snapshotData['staffName'] as String?;
    _applicationType = snapshotData['applicationType'] as String?;
    _movementType = snapshotData['movementType'] as String?;
    _movementDetails = snapshotData['movementDetails'] as String?;
    _cutiType = snapshotData['cutiType'] as String?;
    _applicationDate = snapshotData['applicationDate'] as String?;
    _startDate = snapshotData['startDate'] as String?;
    _endDate = snapshotData['endDate'] as String?;
    _totalDays = castToType<int>(snapshotData['totalDays']);
    _startTime = snapshotData['startTime'] as String?;
    _endTime = snapshotData['endTime'] as String?;
    _status = snapshotData['status'] as String?;
    _requiresApproval = snapshotData['requiresApproval'] as bool?;
    _approverId = snapshotData['approverId'] as String?;
    _approverName = snapshotData['approverName'] as String?;
    _approvalDate = snapshotData['approvalDate'] as DateTime?;
    _approvalReason = snapshotData['approvalReason'] as String?;
    _queueNumber = castToType<int>(snapshotData['queueNumber']);
    _generatesPNC = snapshotData['generatesPNC'] as bool?;
    _pncDate = snapshotData['pncDate'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _appliedBy = snapshotData['appliedBy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movement_applications');

  static Stream<MovementApplicationsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => MovementApplicationsRecord.fromSnapshot(s));

  static Future<MovementApplicationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MovementApplicationsRecord.fromSnapshot(s));

  static MovementApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MovementApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MovementApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MovementApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MovementApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MovementApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMovementApplicationsRecordData({
  String? applicationId,
  String? staffId,
  String? staffName,
  String? applicationType,
  String? movementType,
  String? movementDetails,
  String? cutiType,
  String? applicationDate,
  String? startDate,
  String? endDate,
  int? totalDays,
  String? startTime,
  String? endTime,
  String? status,
  bool? requiresApproval,
  String? approverId,
  String? approverName,
  DateTime? approvalDate,
  String? approvalReason,
  int? queueNumber,
  bool? generatesPNC,
  String? pncDate,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? appliedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applicationId': applicationId,
      'staffId': staffId,
      'staffName': staffName,
      'applicationType': applicationType,
      'movementType': movementType,
      'movementDetails': movementDetails,
      'cutiType': cutiType,
      'applicationDate': applicationDate,
      'startDate': startDate,
      'endDate': endDate,
      'totalDays': totalDays,
      'startTime': startTime,
      'endTime': endTime,
      'status': status,
      'requiresApproval': requiresApproval,
      'approverId': approverId,
      'approverName': approverName,
      'approvalDate': approvalDate,
      'approvalReason': approvalReason,
      'queueNumber': queueNumber,
      'generatesPNC': generatesPNC,
      'pncDate': pncDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'appliedBy': appliedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class MovementApplicationsRecordDocumentEquality
    implements Equality<MovementApplicationsRecord> {
  const MovementApplicationsRecordDocumentEquality();

  @override
  bool equals(MovementApplicationsRecord? e1, MovementApplicationsRecord? e2) {
    return e1?.applicationId == e2?.applicationId &&
        e1?.staffId == e2?.staffId &&
        e1?.staffName == e2?.staffName &&
        e1?.applicationType == e2?.applicationType &&
        e1?.movementType == e2?.movementType &&
        e1?.movementDetails == e2?.movementDetails &&
        e1?.cutiType == e2?.cutiType &&
        e1?.applicationDate == e2?.applicationDate &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.totalDays == e2?.totalDays &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.status == e2?.status &&
        e1?.requiresApproval == e2?.requiresApproval &&
        e1?.approverId == e2?.approverId &&
        e1?.approverName == e2?.approverName &&
        e1?.approvalDate == e2?.approvalDate &&
        e1?.approvalReason == e2?.approvalReason &&
        e1?.queueNumber == e2?.queueNumber &&
        e1?.generatesPNC == e2?.generatesPNC &&
        e1?.pncDate == e2?.pncDate &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.appliedBy == e2?.appliedBy;
  }

  @override
  int hash(MovementApplicationsRecord? e) => const ListEquality().hash([
        e?.applicationId,
        e?.staffId,
        e?.staffName,
        e?.applicationType,
        e?.movementType,
        e?.movementDetails,
        e?.cutiType,
        e?.applicationDate,
        e?.startDate,
        e?.endDate,
        e?.totalDays,
        e?.startTime,
        e?.endTime,
        e?.status,
        e?.requiresApproval,
        e?.approverId,
        e?.approverName,
        e?.approvalDate,
        e?.approvalReason,
        e?.queueNumber,
        e?.generatesPNC,
        e?.pncDate,
        e?.createdAt,
        e?.updatedAt,
        e?.appliedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is MovementApplicationsRecord;
}
