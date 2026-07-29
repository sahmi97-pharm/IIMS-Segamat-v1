import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/trolley_floor_stock_i_p_d/ward_form_status/ward_form_status_widget.dart';
import '/index.dart';
import 'wad_update_widget.dart' show WadUpdateWidget;
import 'package:flutter/material.dart';

class WadUpdateModel extends FlutterFlowModel<WadUpdateWidget> {
  ///  Local state fields for this page.

  String? selectedType;

  String? selectedLocationName;

  bool isLoading = false;

  String componentKey = 'initial';

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for WardFormStatus component.
  late WardFormStatusModel wardFormStatusModel;

  @override
  void initState(BuildContext context) {
    wardFormStatusModel = createModel(context, () => WardFormStatusModel());
  }

  @override
  void dispose() {
    wardFormStatusModel.dispose();
  }

  /// Action blocks.
  Future resetFormFields(BuildContext context) async {}
}
