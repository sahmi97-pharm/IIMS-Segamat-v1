import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'test_my_pergerakkan_widget.dart' show TestMyPergerakkanWidget;
import 'package:flutter/material.dart';

class TestMyPergerakkanModel extends FlutterFlowModel<TestMyPergerakkanWidget> {
  ///  Local state fields for this page.

  String? selectedStaffId;

  DateTime? selectedDate;

  String? selectedMovementType;

  String? resultMessage = 'No result yet';

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Custom Action - formatDateToString] action in Button widget.
  String? formattedDate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
