import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsNewRecord extends FirestoreRecord {
  LocationsNewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "use_trolley_check" field.
  bool? _useTrolleyCheck;
  bool get useTrolleyCheck => _useTrolleyCheck ?? false;
  bool hasUseTrolleyCheck() => _useTrolleyCheck != null;

  // "use_floor_stock" field.
  bool? _useFloorStock;
  bool get useFloorStock => _useFloorStock ?? false;
  bool hasUseFloorStock() => _useFloorStock != null;

  // "use_ubat_tambahan" field.
  bool? _useUbatTambahan;
  bool get useUbatTambahan => _useUbatTambahan ?? false;
  bool hasUseUbatTambahan() => _useUbatTambahan != null;

  // "shared_trolley_ref" field.
  DocumentReference? _sharedTrolleyRef;
  DocumentReference? get sharedTrolleyRef => _sharedTrolleyRef;
  bool hasSharedTrolleyRef() => _sharedTrolleyRef != null;

  // "shared_trolley" field.
  bool? _sharedTrolley;
  bool get sharedTrolley => _sharedTrolley ?? false;
  bool hasSharedTrolley() => _sharedTrolley != null;

  void _initializeFields() {
    _locationName = snapshotData['location_name'] as String?;
    _category = snapshotData['category'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _useTrolleyCheck = snapshotData['use_trolley_check'] as bool?;
    _useFloorStock = snapshotData['use_floor_stock'] as bool?;
    _useUbatTambahan = snapshotData['use_ubat_tambahan'] as bool?;
    _sharedTrolleyRef =
        snapshotData['shared_trolley_ref'] as DocumentReference?;
    _sharedTrolley = snapshotData['shared_trolley'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locations_new');

  static Stream<LocationsNewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsNewRecord.fromSnapshot(s));

  static Future<LocationsNewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsNewRecord.fromSnapshot(s));

  static LocationsNewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsNewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsNewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsNewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsNewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsNewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsNewRecordData({
  String? locationName,
  String? category,
  bool? isActive,
  bool? useTrolleyCheck,
  bool? useFloorStock,
  bool? useUbatTambahan,
  DocumentReference? sharedTrolleyRef,
  bool? sharedTrolley,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location_name': locationName,
      'category': category,
      'is_active': isActive,
      'use_trolley_check': useTrolleyCheck,
      'use_floor_stock': useFloorStock,
      'use_ubat_tambahan': useUbatTambahan,
      'shared_trolley_ref': sharedTrolleyRef,
      'shared_trolley': sharedTrolley,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsNewRecordDocumentEquality
    implements Equality<LocationsNewRecord> {
  const LocationsNewRecordDocumentEquality();

  @override
  bool equals(LocationsNewRecord? e1, LocationsNewRecord? e2) {
    return e1?.locationName == e2?.locationName &&
        e1?.category == e2?.category &&
        e1?.isActive == e2?.isActive &&
        e1?.useTrolleyCheck == e2?.useTrolleyCheck &&
        e1?.useFloorStock == e2?.useFloorStock &&
        e1?.useUbatTambahan == e2?.useUbatTambahan &&
        e1?.sharedTrolleyRef == e2?.sharedTrolleyRef &&
        e1?.sharedTrolley == e2?.sharedTrolley;
  }

  @override
  int hash(LocationsNewRecord? e) => const ListEquality().hash([
        e?.locationName,
        e?.category,
        e?.isActive,
        e?.useTrolleyCheck,
        e?.useFloorStock,
        e?.useUbatTambahan,
        e?.sharedTrolleyRef,
        e?.sharedTrolley
      ]);

  @override
  bool isValidKey(Object? o) => o is LocationsNewRecord;
}
