// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MovementsStruct extends FFFirebaseStruct {
  MovementsStruct({
    String? staffId,
    String? staffName,
    String? movementType,
    String? status,
    bool? isPNC,
    String? applicationId,
    String? cutiType,
    int? queueNumber,
    String? details,
    String? startTime,
    String? endTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _staffId = staffId,
        _staffName = staffName,
        _movementType = movementType,
        _status = status,
        _isPNC = isPNC,
        _applicationId = applicationId,
        _cutiType = cutiType,
        _queueNumber = queueNumber,
        _details = details,
        _startTime = startTime,
        _endTime = endTime,
        super(firestoreUtilData);

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  set staffId(String? val) => _staffId = val;

  bool hasStaffId() => _staffId != null;

  // "staffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  set staffName(String? val) => _staffName = val;

  bool hasStaffName() => _staffName != null;

  // "movementType" field.
  String? _movementType;
  String get movementType => _movementType ?? '';
  set movementType(String? val) => _movementType = val;

  bool hasMovementType() => _movementType != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "isPNC" field.
  bool? _isPNC;
  bool get isPNC => _isPNC ?? false;
  set isPNC(bool? val) => _isPNC = val;

  bool hasIsPNC() => _isPNC != null;

  // "applicationId" field.
  String? _applicationId;
  String get applicationId => _applicationId ?? '';
  set applicationId(String? val) => _applicationId = val;

  bool hasApplicationId() => _applicationId != null;

  // "cutiType" field.
  String? _cutiType;
  String get cutiType => _cutiType ?? '';
  set cutiType(String? val) => _cutiType = val;

  bool hasCutiType() => _cutiType != null;

  // "queueNumber" field.
  int? _queueNumber;
  int get queueNumber => _queueNumber ?? 0;
  set queueNumber(int? val) => _queueNumber = val;

  void incrementQueueNumber(int amount) => queueNumber = queueNumber + amount;

  bool hasQueueNumber() => _queueNumber != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  set details(String? val) => _details = val;

  bool hasDetails() => _details != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  set endTime(String? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  static MovementsStruct fromMap(Map<String, dynamic> data) => MovementsStruct(
        staffId: data['staffId'] as String?,
        staffName: data['staffName'] as String?,
        movementType: data['movementType'] as String?,
        status: data['status'] as String?,
        isPNC: data['isPNC'] as bool?,
        applicationId: data['applicationId'] as String?,
        cutiType: data['cutiType'] as String?,
        queueNumber: castToType<int>(data['queueNumber']),
        details: data['details'] as String?,
        startTime: data['startTime'] as String?,
        endTime: data['endTime'] as String?,
      );

  static MovementsStruct? maybeFromMap(dynamic data) => data is Map
      ? MovementsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'staffId': _staffId,
        'staffName': _staffName,
        'movementType': _movementType,
        'status': _status,
        'isPNC': _isPNC,
        'applicationId': _applicationId,
        'cutiType': _cutiType,
        'queueNumber': _queueNumber,
        'details': _details,
        'startTime': _startTime,
        'endTime': _endTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'staffId': serializeParam(
          _staffId,
          ParamType.String,
        ),
        'staffName': serializeParam(
          _staffName,
          ParamType.String,
        ),
        'movementType': serializeParam(
          _movementType,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'isPNC': serializeParam(
          _isPNC,
          ParamType.bool,
        ),
        'applicationId': serializeParam(
          _applicationId,
          ParamType.String,
        ),
        'cutiType': serializeParam(
          _cutiType,
          ParamType.String,
        ),
        'queueNumber': serializeParam(
          _queueNumber,
          ParamType.int,
        ),
        'details': serializeParam(
          _details,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static MovementsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MovementsStruct(
        staffId: deserializeParam(
          data['staffId'],
          ParamType.String,
          false,
        ),
        staffName: deserializeParam(
          data['staffName'],
          ParamType.String,
          false,
        ),
        movementType: deserializeParam(
          data['movementType'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        isPNC: deserializeParam(
          data['isPNC'],
          ParamType.bool,
          false,
        ),
        applicationId: deserializeParam(
          data['applicationId'],
          ParamType.String,
          false,
        ),
        cutiType: deserializeParam(
          data['cutiType'],
          ParamType.String,
          false,
        ),
        queueNumber: deserializeParam(
          data['queueNumber'],
          ParamType.int,
          false,
        ),
        details: deserializeParam(
          data['details'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.String,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MovementsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MovementsStruct &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        movementType == other.movementType &&
        status == other.status &&
        isPNC == other.isPNC &&
        applicationId == other.applicationId &&
        cutiType == other.cutiType &&
        queueNumber == other.queueNumber &&
        details == other.details &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        staffId,
        staffName,
        movementType,
        status,
        isPNC,
        applicationId,
        cutiType,
        queueNumber,
        details,
        startTime,
        endTime
      ]);
}

MovementsStruct createMovementsStruct({
  String? staffId,
  String? staffName,
  String? movementType,
  String? status,
  bool? isPNC,
  String? applicationId,
  String? cutiType,
  int? queueNumber,
  String? details,
  String? startTime,
  String? endTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MovementsStruct(
      staffId: staffId,
      staffName: staffName,
      movementType: movementType,
      status: status,
      isPNC: isPNC,
      applicationId: applicationId,
      cutiType: cutiType,
      queueNumber: queueNumber,
      details: details,
      startTime: startTime,
      endTime: endTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MovementsStruct? updateMovementsStruct(
  MovementsStruct? movements, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    movements
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMovementsStructData(
  Map<String, dynamic> firestoreData,
  MovementsStruct? movements,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movements == null) {
    return;
  }
  if (movements.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && movements.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final movementsData = getMovementsFirestoreData(movements, forFieldValue);
  final nestedData = movementsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = movements.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMovementsFirestoreData(
  MovementsStruct? movements, [
  bool forFieldValue = false,
]) {
  if (movements == null) {
    return {};
  }
  final firestoreData = mapToFirestore(movements.toMap());

  // Add any Firestore field values
  mapToFirestore(movements.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMovementsListFirestoreData(
  List<MovementsStruct>? movementss,
) =>
    movementss?.map((e) => getMovementsFirestoreData(e, true)).toList() ?? [];
