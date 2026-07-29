import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_modified_location_widget.dart' show AddModifiedLocationWidget;
import 'package:flutter/material.dart';

class AddModifiedLocationModel
    extends FlutterFlowModel<AddModifiedLocationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for SwitchTU widget.
  bool? switchTUValue;
  // State field(s) for SwitchTUOptional widget.
  bool? switchTUOptionalValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for SwitchFS widget.
  bool? switchFSValue;
  // State field(s) for SwitchUT widget.
  bool? switchUTValue;
  // State field(s) for SwitchActive widget.
  bool? switchActiveValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
