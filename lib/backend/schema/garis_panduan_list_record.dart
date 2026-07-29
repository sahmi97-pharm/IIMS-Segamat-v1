import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GarisPanduanListRecord extends FirestoreRecord {
  GarisPanduanListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gp_name" field.
  String? _gpName;
  String get gpName => _gpName ?? '';
  bool hasGpName() => _gpName != null;

  // "gp_date" field.
  DateTime? _gpDate;
  DateTime? get gpDate => _gpDate;
  bool hasGpDate() => _gpDate != null;

  // "gp_sourcelink" field.
  String? _gpSourcelink;
  String get gpSourcelink => _gpSourcelink ?? '';
  bool hasGpSourcelink() => _gpSourcelink != null;

  // "gp_category" field.
  String? _gpCategory;
  String get gpCategory => _gpCategory ?? '';
  bool hasGpCategory() => _gpCategory != null;

  void _initializeFields() {
    _gpName = snapshotData['gp_name'] as String?;
    _gpDate = snapshotData['gp_date'] as DateTime?;
    _gpSourcelink = snapshotData['gp_sourcelink'] as String?;
    _gpCategory = snapshotData['gp_category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('garisPanduanList');

  static Stream<GarisPanduanListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GarisPanduanListRecord.fromSnapshot(s));

  static Future<GarisPanduanListRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GarisPanduanListRecord.fromSnapshot(s));

  static GarisPanduanListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GarisPanduanListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GarisPanduanListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GarisPanduanListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GarisPanduanListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GarisPanduanListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGarisPanduanListRecordData({
  String? gpName,
  DateTime? gpDate,
  String? gpSourcelink,
  String? gpCategory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gp_name': gpName,
      'gp_date': gpDate,
      'gp_sourcelink': gpSourcelink,
      'gp_category': gpCategory,
    }.withoutNulls,
  );

  return firestoreData;
}

class GarisPanduanListRecordDocumentEquality
    implements Equality<GarisPanduanListRecord> {
  const GarisPanduanListRecordDocumentEquality();

  @override
  bool equals(GarisPanduanListRecord? e1, GarisPanduanListRecord? e2) {
    return e1?.gpName == e2?.gpName &&
        e1?.gpDate == e2?.gpDate &&
        e1?.gpSourcelink == e2?.gpSourcelink &&
        e1?.gpCategory == e2?.gpCategory;
  }

  @override
  int hash(GarisPanduanListRecord? e) => const ListEquality()
      .hash([e?.gpName, e?.gpDate, e?.gpSourcelink, e?.gpCategory]);

  @override
  bool isValidKey(Object? o) => o is GarisPanduanListRecord;
}
