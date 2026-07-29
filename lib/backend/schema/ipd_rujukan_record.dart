import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IpdRujukanRecord extends FirestoreRecord {
  IpdRujukanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _link = snapshotData['link'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ipd_rujukan');

  static Stream<IpdRujukanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IpdRujukanRecord.fromSnapshot(s));

  static Future<IpdRujukanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IpdRujukanRecord.fromSnapshot(s));

  static IpdRujukanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IpdRujukanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IpdRujukanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IpdRujukanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IpdRujukanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IpdRujukanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIpdRujukanRecordData({
  String? title,
  String? link,
  DateTime? date,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'link': link,
      'date': date,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class IpdRujukanRecordDocumentEquality implements Equality<IpdRujukanRecord> {
  const IpdRujukanRecordDocumentEquality();

  @override
  bool equals(IpdRujukanRecord? e1, IpdRujukanRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.link == e2?.link &&
        e1?.date == e2?.date &&
        e1?.category == e2?.category;
  }

  @override
  int hash(IpdRujukanRecord? e) =>
      const ListEquality().hash([e?.title, e?.link, e?.date, e?.category]);

  @override
  bool isValidKey(Object? o) => o is IpdRujukanRecord;
}
