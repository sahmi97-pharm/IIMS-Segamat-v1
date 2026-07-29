import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ward_form_f_s_d_d_a_widget.dart' show WardFormFSDDAWidget;
import 'package:flutter/material.dart';

class WardFormFSDDAModel extends FlutterFlowModel<WardFormFSDDAWidget> {
  ///  Local state fields for this component.

  FloorStockDdaRecord? currentFSDDDocRef;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in WardFormFSDDA widget.
  FloorStockDdaRecord? existingTodayRecord;
  // State field(s) for SwitchFSDD widget.
  bool? switchFSDDValue;
  // Stores action output result for [Backend Call - Create Document] action in SwitchFSDD widget.
  FloorStockDdaRecord? newFloorStockDDA;
  // State field(s) for SwitchFDDC widget.
  bool? switchFDDCValue;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFDDC widget.
  NotificationSettingsRecord? rulebookSettingsFSDDA;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFDDC widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSIVDripC;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchFDDC widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSDD;
  // State field(s) for Switchddarb widget.
  bool? switchddarbValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Switchfsddaphis widget.
  bool? switchfsddaphisValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  NotificationSettingsRecord? rulebookSettingsFSDDAP;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSDDAP;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in Button widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSDDAP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
