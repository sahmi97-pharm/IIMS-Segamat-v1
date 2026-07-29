import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ubat_tambahan_card_widget.dart' show UbatTambahanCardWidget;
import 'package:flutter/material.dart';

class UbatTambahanCardModel extends FlutterFlowModel<UbatTambahanCardWidget> {
  ///  Local state fields for this component.

  DocumentReference? currentUbatDocRef;

  bool? isDeleted;

  ///  State fields for stateful widgets in this component.

  // State field(s) for SwitchC widget.
  bool? switchCValue;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchC widget.
  UbatTambahanRecord? latestRecord;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchC widget.
  NotificationSettingsRecord? rulebookSettingsUTC;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchC widget.
  List<DeviceSubscriptionsRecord>? targetDevicesUTC;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchC widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionUTC;
  // State field(s) for SwitchF widget.
  bool? switchFValue;
  // State field(s) for SwitchCoolbox widget.
  bool? switchCoolboxValue;
  // State field(s) for SwitchDD widget.
  bool? switchDDValue;
  // State field(s) for SwitchDDBook widget.
  bool? switchDDBookValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
