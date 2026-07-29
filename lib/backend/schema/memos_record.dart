import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemosRecord extends FirestoreRecord {
  MemosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "order_by" field.
  String? _orderBy;
  String get orderBy => _orderBy ?? '';
  bool hasOrderBy() => _orderBy != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "reader_name" field.
  String? _readerName;
  String get readerName => _readerName ?? '';
  bool hasReaderName() => _readerName != null;

  // "incomplete_reason" field.
  String? _incompleteReason;
  String get incompleteReason => _incompleteReason ?? '';
  bool hasIncompleteReason() => _incompleteReason != null;

  // "action_taken_at" field.
  DateTime? _actionTakenAt;
  DateTime? get actionTakenAt => _actionTakenAt;
  bool hasActionTakenAt() => _actionTakenAt != null;

  // "is_viewed" field.
  bool? _isViewed;
  bool get isViewed => _isViewed ?? false;
  bool hasIsViewed() => _isViewed != null;

  // "is_pinned" field.
  bool? _isPinned;
  bool get isPinned => _isPinned ?? false;
  bool hasIsPinned() => _isPinned != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _category = snapshotData['category'] as String?;
    _content = snapshotData['content'] as String?;
    _orderBy = snapshotData['order_by'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _readerName = snapshotData['reader_name'] as String?;
    _incompleteReason = snapshotData['incomplete_reason'] as String?;
    _actionTakenAt = snapshotData['action_taken_at'] as DateTime?;
    _isViewed = snapshotData['is_viewed'] as bool?;
    _isPinned = snapshotData['is_pinned'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('memos');

  static Stream<MemosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemosRecord.fromSnapshot(s));

  static Future<MemosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemosRecord.fromSnapshot(s));

  static MemosRecord fromSnapshot(DocumentSnapshot snapshot) => MemosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemosRecordData({
  String? title,
  String? category,
  String? content,
  String? orderBy,
  DateTime? createdAt,
  String? status,
  String? readerName,
  String? incompleteReason,
  DateTime? actionTakenAt,
  bool? isViewed,
  bool? isPinned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'category': category,
      'content': content,
      'order_by': orderBy,
      'created_at': createdAt,
      'status': status,
      'reader_name': readerName,
      'incomplete_reason': incompleteReason,
      'action_taken_at': actionTakenAt,
      'is_viewed': isViewed,
      'is_pinned': isPinned,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemosRecordDocumentEquality implements Equality<MemosRecord> {
  const MemosRecordDocumentEquality();

  @override
  bool equals(MemosRecord? e1, MemosRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.category == e2?.category &&
        e1?.content == e2?.content &&
        e1?.orderBy == e2?.orderBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.readerName == e2?.readerName &&
        e1?.incompleteReason == e2?.incompleteReason &&
        e1?.actionTakenAt == e2?.actionTakenAt &&
        e1?.isViewed == e2?.isViewed &&
        e1?.isPinned == e2?.isPinned;
  }

  @override
  int hash(MemosRecord? e) => const ListEquality().hash([
        e?.title,
        e?.category,
        e?.content,
        e?.orderBy,
        e?.createdAt,
        e?.status,
        e?.readerName,
        e?.incompleteReason,
        e?.actionTakenAt,
        e?.isViewed,
        e?.isPinned
      ]);

  @override
  bool isValidKey(Object? o) => o is MemosRecord;
}
