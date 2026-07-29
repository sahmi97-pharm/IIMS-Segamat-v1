import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemoJabatanRecord extends FirestoreRecord {
  MemoJabatanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "memo_title" field.
  String? _memoTitle;
  String get memoTitle => _memoTitle ?? '';
  bool hasMemoTitle() => _memoTitle != null;

  // "memo_last_update" field.
  DateTime? _memoLastUpdate;
  DateTime? get memoLastUpdate => _memoLastUpdate;
  bool hasMemoLastUpdate() => _memoLastUpdate != null;

  // "memo_source_url" field.
  String? _memoSourceUrl;
  String get memoSourceUrl => _memoSourceUrl ?? '';
  bool hasMemoSourceUrl() => _memoSourceUrl != null;

  // "is_pinned" field.
  bool? _isPinned;
  bool get isPinned => _isPinned ?? false;
  bool hasIsPinned() => _isPinned != null;

  // "memo_category" field.
  String? _memoCategory;
  String get memoCategory => _memoCategory ?? '';
  bool hasMemoCategory() => _memoCategory != null;

  void _initializeFields() {
    _memoTitle = snapshotData['memo_title'] as String?;
    _memoLastUpdate = snapshotData['memo_last_update'] as DateTime?;
    _memoSourceUrl = snapshotData['memo_source_url'] as String?;
    _isPinned = snapshotData['is_pinned'] as bool?;
    _memoCategory = snapshotData['memo_category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('memo_jabatan');

  static Stream<MemoJabatanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemoJabatanRecord.fromSnapshot(s));

  static Future<MemoJabatanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemoJabatanRecord.fromSnapshot(s));

  static MemoJabatanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MemoJabatanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemoJabatanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemoJabatanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemoJabatanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemoJabatanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemoJabatanRecordData({
  String? memoTitle,
  DateTime? memoLastUpdate,
  String? memoSourceUrl,
  bool? isPinned,
  String? memoCategory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'memo_title': memoTitle,
      'memo_last_update': memoLastUpdate,
      'memo_source_url': memoSourceUrl,
      'is_pinned': isPinned,
      'memo_category': memoCategory,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemoJabatanRecordDocumentEquality implements Equality<MemoJabatanRecord> {
  const MemoJabatanRecordDocumentEquality();

  @override
  bool equals(MemoJabatanRecord? e1, MemoJabatanRecord? e2) {
    return e1?.memoTitle == e2?.memoTitle &&
        e1?.memoLastUpdate == e2?.memoLastUpdate &&
        e1?.memoSourceUrl == e2?.memoSourceUrl &&
        e1?.isPinned == e2?.isPinned &&
        e1?.memoCategory == e2?.memoCategory;
  }

  @override
  int hash(MemoJabatanRecord? e) => const ListEquality().hash([
        e?.memoTitle,
        e?.memoLastUpdate,
        e?.memoSourceUrl,
        e?.isPinned,
        e?.memoCategory
      ]);

  @override
  bool isValidKey(Object? o) => o is MemoJabatanRecord;
}
