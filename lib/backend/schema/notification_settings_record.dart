import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationSettingsRecord extends FirestoreRecord {
  NotificationSettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "trigger_name" field.
  String? _triggerName;
  String get triggerName => _triggerName ?? '';
  bool hasTriggerName() => _triggerName != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "target_roles" field.
  List<String>? _targetRoles;
  List<String> get targetRoles => _targetRoles ?? const [];
  bool hasTargetRoles() => _targetRoles != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  void _initializeFields() {
    _triggerName = snapshotData['trigger_name'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _targetRoles = getDataList(snapshotData['target_roles']);
    _title = snapshotData['title'] as String?;
    _body = snapshotData['body'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_settings');

  static Stream<NotificationSettingsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationSettingsRecord.fromSnapshot(s));

  static Future<NotificationSettingsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationSettingsRecord.fromSnapshot(s));

  static NotificationSettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationSettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationSettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationSettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationSettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationSettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationSettingsRecordData({
  String? triggerName,
  bool? isActive,
  String? title,
  String? body,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'trigger_name': triggerName,
      'is_active': isActive,
      'title': title,
      'body': body,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationSettingsRecordDocumentEquality
    implements Equality<NotificationSettingsRecord> {
  const NotificationSettingsRecordDocumentEquality();

  @override
  bool equals(NotificationSettingsRecord? e1, NotificationSettingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.triggerName == e2?.triggerName &&
        e1?.isActive == e2?.isActive &&
        listEquality.equals(e1?.targetRoles, e2?.targetRoles) &&
        e1?.title == e2?.title &&
        e1?.body == e2?.body;
  }

  @override
  int hash(NotificationSettingsRecord? e) => const ListEquality()
      .hash([e?.triggerName, e?.isActive, e?.targetRoles, e?.title, e?.body]);

  @override
  bool isValidKey(Object? o) => o is NotificationSettingsRecord;
}
