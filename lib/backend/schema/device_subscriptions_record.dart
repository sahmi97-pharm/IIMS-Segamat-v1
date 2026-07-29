import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceSubscriptionsRecord extends FirestoreRecord {
  DeviceSubscriptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  bool hasFcmToken() => _fcmToken != null;

  // "wardunit_name" field.
  String? _wardunitName;
  String get wardunitName => _wardunitName ?? '';
  bool hasWardunitName() => _wardunitName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "last_active" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "platform" field.
  String? _platform;
  String get platform => _platform ?? '';
  bool hasPlatform() => _platform != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _fcmToken = snapshotData['fcm_token'] as String?;
    _wardunitName = snapshotData['wardunit_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _lastActive = snapshotData['last_active'] as DateTime?;
    _platform = snapshotData['platform'] as String?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('device_subscriptions');

  static Stream<DeviceSubscriptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceSubscriptionsRecord.fromSnapshot(s));

  static Future<DeviceSubscriptionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DeviceSubscriptionsRecord.fromSnapshot(s));

  static DeviceSubscriptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeviceSubscriptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceSubscriptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceSubscriptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceSubscriptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceSubscriptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceSubscriptionsRecordData({
  String? fcmToken,
  String? wardunitName,
  DateTime? createdAt,
  DateTime? lastActive,
  String? platform,
  DocumentReference? locationRef,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fcm_token': fcmToken,
      'wardunit_name': wardunitName,
      'created_at': createdAt,
      'last_active': lastActive,
      'platform': platform,
      'location_ref': locationRef,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceSubscriptionsRecordDocumentEquality
    implements Equality<DeviceSubscriptionsRecord> {
  const DeviceSubscriptionsRecordDocumentEquality();

  @override
  bool equals(DeviceSubscriptionsRecord? e1, DeviceSubscriptionsRecord? e2) {
    return e1?.fcmToken == e2?.fcmToken &&
        e1?.wardunitName == e2?.wardunitName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastActive == e2?.lastActive &&
        e1?.platform == e2?.platform &&
        e1?.locationRef == e2?.locationRef &&
        e1?.role == e2?.role;
  }

  @override
  int hash(DeviceSubscriptionsRecord? e) => const ListEquality().hash([
        e?.fcmToken,
        e?.wardunitName,
        e?.createdAt,
        e?.lastActive,
        e?.platform,
        e?.locationRef,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is DeviceSubscriptionsRecord;
}
