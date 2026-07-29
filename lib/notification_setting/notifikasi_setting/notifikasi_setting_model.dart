import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'notifikasi_setting_widget.dart' show NotifikasiSettingWidget;
import 'package:flutter/material.dart';

class NotifikasiSettingModel extends FlutterFlowModel<NotifikasiSettingWidget> {
  ///  Local state fields for this page.

  String? localCategory;

  bool isPushEnabled = false;

  bool isSoundEnabled = true;

  String? oldWardName;

  String tokenToReset = '\"\"';

  String wardToReset = '\"\"';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SwitchPN widget.
  bool? switchPNValue;
  // State field(s) for SwitchPS widget.
  bool? switchPSValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  List<LocationsRecord>? dropDownPreviousSnapshot;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Cloud Function - unsubscribeFromWardTopic] action in IconButton widget.
  UnsubscribeFromWardTopicCloudFunctionCallResponse? unsubResult;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  DeviceSubscriptionsRecord? existingSubReset;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? dropdownValidation;
  // Stores action output result for [Custom Action - getBrowserToken] action in Button widget.
  String? currentToken;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DeviceSubscriptionsRecord? existingSub;
  // Stores action output result for [Cloud Function - subscribeToWardTopic] action in Button widget.
  SubscribeToWardTopicCloudFunctionCallResponse? subResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
