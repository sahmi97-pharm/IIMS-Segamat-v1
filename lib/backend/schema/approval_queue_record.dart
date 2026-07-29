import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovalQueueRecord extends FirestoreRecord {
  ApprovalQueueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "queueId" field.
  String? _queueId;
  String get queueId => _queueId ?? '';
  bool hasQueueId() => _queueId != null;

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

  // "queueNumber" field.
  int? _queueNumber;
  int get queueNumber => _queueNumber ?? 0;
  bool hasQueueNumber() => _queueNumber != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _queueId = snapshotData['queueId'] as String?;
    _applicationId = snapshotData['applicationId'] as String?;
    _staffId = snapshotData['staffId'] as String?;
    _staffName = snapshotData['staffName'] as String?;
    _applicationType = snapshotData['applicationType'] as String?;
    _startDate = snapshotData['startDate'] as String?;
    _endDate = snapshotData['endDate'] as String?;
    _totalDays = castToType<int>(snapshotData['totalDays']);
    _queueNumber = castToType<int>(snapshotData['queueNumber']);
    _status = snapshotData['status'] as String?;
    _assignedTo = snapshotData['assignedTo'] as String?;
    _priority = snapshotData['priority'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('approval_queue');

  static Stream<ApprovalQueueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApprovalQueueRecord.fromSnapshot(s));

  static Future<ApprovalQueueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApprovalQueueRecord.fromSnapshot(s));

  static ApprovalQueueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApprovalQueueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApprovalQueueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApprovalQueueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApprovalQueueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApprovalQueueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApprovalQueueRecordData({
  String? queueId,
  String? applicationId,
  String? staffId,
  String? staffName,
  String? applicationType,
  String? startDate,
  String? endDate,
  int? totalDays,
  int? queueNumber,
  String? status,
  String? assignedTo,
  String? priority,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'queueId': queueId,
      'applicationId': applicationId,
      'staffId': staffId,
      'staffName': staffName,
      'applicationType': applicationType,
      'startDate': startDate,
      'endDate': endDate,
      'totalDays': totalDays,
      'queueNumber': queueNumber,
      'status': status,
      'assignedTo': assignedTo,
      'priority': priority,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApprovalQueueRecordDocumentEquality
    implements Equality<ApprovalQueueRecord> {
  const ApprovalQueueRecordDocumentEquality();

  @override
  bool equals(ApprovalQueueRecord? e1, ApprovalQueueRecord? e2) {
    return e1?.queueId == e2?.queueId &&
        e1?.applicationId == e2?.applicationId &&
        e1?.staffId == e2?.staffId &&
        e1?.staffName == e2?.staffName &&
        e1?.applicationType == e2?.applicationType &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.totalDays == e2?.totalDays &&
        e1?.queueNumber == e2?.queueNumber &&
        e1?.status == e2?.status &&
        e1?.assignedTo == e2?.assignedTo &&
        e1?.priority == e2?.priority &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ApprovalQueueRecord? e) => const ListEquality().hash([
        e?.queueId,
        e?.applicationId,
        e?.staffId,
        e?.staffName,
        e?.applicationType,
        e?.startDate,
        e?.endDate,
        e?.totalDays,
        e?.queueNumber,
        e?.status,
        e?.assignedTo,
        e?.priority,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ApprovalQueueRecord;
}
