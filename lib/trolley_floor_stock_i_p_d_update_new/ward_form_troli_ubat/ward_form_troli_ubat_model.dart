import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ward_form_troli_ubat_widget.dart' show WardFormTroliUbatWidget;
import 'package:flutter/material.dart';

class WardFormTroliUbatModel extends FlutterFlowModel<WardFormTroliUbatWidget> {
  ///  Local state fields for this component.

  DocumentReference? currentTroliDocRef;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in WardFormTroliUbat widget.
  TroliUbatRecord? existingTodayRecord;
  // State field(s) for SwitchT widget.
  bool? switchTValue;
  // Stores action output result for [Backend Call - Create Document] action in SwitchT widget.
  TroliUbatRecord? newManualTroli;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchT widget.
  NotificationSettingsRecord? rulebookSettings;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchT widget.
  List<DeviceSubscriptionsRecord>? targetDevices;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchT widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionResult;
  // State field(s) for SwitchCT widget.
  bool? switchCTValue;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchCT widget.
  NotificationSettingsRecord? rulebookSettingsTC;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchCT widget.
  List<DeviceSubscriptionsRecord>? targetDevicesTC;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchCT widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionTC;
  // State field(s) for SwitchTF widget.
  bool? switchTFValue;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for SwitchTDD widget.
  bool? switchTDDValue;
  // State field(s) for Switch widget.
  bool? switchValue2;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
