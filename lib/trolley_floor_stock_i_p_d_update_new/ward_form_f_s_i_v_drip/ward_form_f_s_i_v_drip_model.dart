import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ward_form_f_s_i_v_drip_widget.dart' show WardFormFSIVDripWidget;
import 'package:flutter/material.dart';

class WardFormFSIVDripModel extends FlutterFlowModel<WardFormFSIVDripWidget> {
  ///  Local state fields for this component.

  DocumentReference? currentFSIVDripDocRef;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in WardFormFSIVDrip widget.
  FloorStockIvdripRecord? existingTodayRecord;
  // State field(s) for SwitchFSIVD widget.
  bool? switchFSIVDValue;
  // Stores action output result for [Backend Call - Create Document] action in SwitchFSIVD widget.
  FloorStockIvdripRecord? newFloorStockIVDrip;
  // State field(s) for SwitchFIVDC widget.
  bool? switchFIVDCValue;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFIVDC widget.
  NotificationSettingsRecord? rulebookSettingsFSIVDripC;
  // Stores action output result for [Firestore Query - Query a collection] action in SwitchFIVDC widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSIVDripC;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in SwitchFIVDC widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSIVDripC;
  // State field(s) for Switchfsivdphis widget.
  bool? switchfsivdphisValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  NotificationSettingsRecord? rulebookSettingsFSIVDripP;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DeviceSubscriptionsRecord>? targetDevicesFSIVDripP;
  // Stores action output result for [Cloud Function - sendTargetedPush] action in Button widget.
  SendTargetedPushCloudFunctionCallResponse? cloudFunctionFSIVDripP;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
