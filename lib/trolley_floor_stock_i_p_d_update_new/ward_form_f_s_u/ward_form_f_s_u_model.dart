import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ward_form_f_s_u_widget.dart' show WardFormFSUWidget;
import 'package:flutter/material.dart';

class WardFormFSUModel extends FlutterFlowModel<WardFormFSUWidget> {
  ///  Local state fields for this component.

  DocumentReference? currentFSDocRef;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in WardFormFSU widget.
  FloorStockUbatRecord? existingFloorStock;
  // State field(s) for SwitchFSU widget.
  bool? switchFSUValue;
  // Stores action output result for [Backend Call - Create Document] action in SwitchFSU widget.
  FloorStockUbatRecord? newFloorStock;
  // State field(s) for SwitchFSC widget.
  bool? switchFSCValue;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFSC widget.
  NotificationSettingsRecord? rulebookSettingsFSUC;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFSC widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSUC;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchFSC widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSUC;
  // State field(s) for SwitchFSUF widget.
  bool? switchFSUFValue;
  // State field(s) for SwitchFSUCB widget.
  bool? switchFSUCBValue;
  // State field(s) for Switchfsubeb widget.
  bool? switchfsubebValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Switchfsurb widget.
  bool? switchfsurbValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Switchfsuphis widget.
  bool? switchfsuphisValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  NotificationSettingsRecord? rulebookSettingsFSUP;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSUP;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in Button widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSUP;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
