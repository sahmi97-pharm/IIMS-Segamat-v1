import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BorangListRecord extends FirestoreRecord {
  BorangListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "borangTitle" field.
  String? _borangTitle;
  String get borangTitle => _borangTitle ?? '';
  bool hasBorangTitle() => _borangTitle != null;

  // "borangCategory" field.
  String? _borangCategory;
  String get borangCategory => _borangCategory ?? '';
  bool hasBorangCategory() => _borangCategory != null;

  // "borangSorceLink" field.
  String? _borangSorceLink;
  String get borangSorceLink => _borangSorceLink ?? '';
  bool hasBorangSorceLink() => _borangSorceLink != null;

  void _initializeFields() {
    _borangTitle = snapshotData['borangTitle'] as String?;
    _borangCategory = snapshotData['borangCategory'] as String?;
    _borangSorceLink = snapshotData['borangSorceLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('borangList');

  static Stream<BorangListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BorangListRecord.fromSnapshot(s));

  static Future<BorangListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BorangListRecord.fromSnapshot(s));

  static BorangListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BorangListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BorangListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BorangListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BorangListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BorangListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBorangListRecordData({
  String? borangTitle,
  String? borangCategory,
  String? borangSorceLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'borangTitle': borangTitle,
      'borangCategory': borangCategory,
      'borangSorceLink': borangSorceLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class BorangListRecordDocumentEquality implements Equality<BorangListRecord> {
  const BorangListRecordDocumentEquality();

  @override
  bool equals(BorangListRecord? e1, BorangListRecord? e2) {
    return e1?.borangTitle == e2?.borangTitle &&
        e1?.borangCategory == e2?.borangCategory &&
        e1?.borangSorceLink == e2?.borangSorceLink;
  }

  @override
  int hash(BorangListRecord? e) => const ListEquality()
      .hash([e?.borangTitle, e?.borangCategory, e?.borangSorceLink]);

  @override
  bool isValidKey(Object? o) => o is BorangListRecord;
}
