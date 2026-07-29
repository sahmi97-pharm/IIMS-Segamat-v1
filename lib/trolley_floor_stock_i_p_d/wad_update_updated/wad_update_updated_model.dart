import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/trolley_floor_stock_i_p_d/ward_form_status_updated/ward_form_status_updated_widget.dart';
import '/index.dart';
import 'wad_update_updated_widget.dart' show WadUpdateUpdatedWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class WadUpdateUpdatedModel extends FlutterFlowModel<WadUpdateUpdatedWidget> {
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
  // Model for WardFormStatusUpdated component.
  late WardFormStatusUpdatedModel wardFormStatusUpdatedModel;
  List<LocationsRecord>? containerPreviousSnapshot;

  @override
  void initState(BuildContext context) {
    wardFormStatusUpdatedModel =
        createModel(context, () => WardFormStatusUpdatedModel());
  }

  @override
  void dispose() {
    wardFormStatusUpdatedModel.dispose();
  }

  /// Action blocks.
  Future resetFormFields(BuildContext context) async {}
}
