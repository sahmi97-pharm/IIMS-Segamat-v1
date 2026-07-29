import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'my_passover_form_widget.dart' show MyPassoverFormWidget;
import 'package:flutter/material.dart';

class MyPassoverFormModel extends FlutterFlowModel<MyPassoverFormWidget> {
  ///  Local state fields for this page.

  MemosRecord? memoReference;

  String? formCategory;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for MemoTitleTextField widget.
  FocusNode? memoTitleTextFieldFocusNode;
  TextEditingController? memoTitleTextFieldTextController;
  String? Function(BuildContext, String?)?
      memoTitleTextFieldTextControllerValidator;
  String? _memoTitleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for MemoContentTextField widget.
  FocusNode? memoContentTextFieldFocusNode;
  TextEditingController? memoContentTextFieldTextController;
  String? Function(BuildContext, String?)?
      memoContentTextFieldTextControllerValidator;
  String? _memoContentTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for OrderByTextField widget.
  FocusNode? orderByTextFieldFocusNode;
  TextEditingController? orderByTextFieldTextController;
  String? Function(BuildContext, String?)?
      orderByTextFieldTextControllerValidator;
  String? _orderByTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name... is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    memoTitleTextFieldTextControllerValidator =
        _memoTitleTextFieldTextControllerValidator;
    memoContentTextFieldTextControllerValidator =
        _memoContentTextFieldTextControllerValidator;
    orderByTextFieldTextControllerValidator =
        _orderByTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    memoTitleTextFieldFocusNode?.dispose();
    memoTitleTextFieldTextController?.dispose();

    memoContentTextFieldFocusNode?.dispose();
    memoContentTextFieldTextController?.dispose();

    orderByTextFieldFocusNode?.dispose();
    orderByTextFieldTextController?.dispose();
  }
}
