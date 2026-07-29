import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/trolley_floor_stock_i_p_d_update_new/ubat_tambahan_activator/ubat_tambahan_activator_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_d_d_a/ward_form_f_s_d_d_a_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_i_v_drip/ward_form_f_s_i_v_drip_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_u/ward_form_f_s_u_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_troli_ubat/ward_form_troli_ubat_widget.dart';
import '/index.dart';
import 'wad_update_new_widget.dart' show WadUpdateNewWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class WadUpdateNewModel extends FlutterFlowModel<WadUpdateNewWidget> {
  ///  Local state fields for this page.

  String? selectedType;

  String? selectedLocationName;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChipsWardUnit widget.
  FormFieldController<List<String>>? choiceChipsWardUnitValueController;
  String? get choiceChipsWardUnitValue =>
      choiceChipsWardUnitValueController?.value?.firstOrNull;
  set choiceChipsWardUnitValue(String? val) =>
      choiceChipsWardUnitValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChipsPerkara widget.
  FormFieldController<List<String>>? choiceChipsPerkaraValueController;
  String? get choiceChipsPerkaraValue =>
      choiceChipsPerkaraValueController?.value?.firstOrNull;
  set choiceChipsPerkaraValue(String? val) =>
      choiceChipsPerkaraValueController?.value = val != null ? [val] : [];
  // Model for WardFormTroliUbat component.
  late WardFormTroliUbatModel wardFormTroliUbatModel;
  // Model for WardFormFSU component.
  late WardFormFSUModel wardFormFSUModel;
  // Model for WardFormFSIVDrip component.
  late WardFormFSIVDripModel wardFormFSIVDripModel;
  // Model for WardFormFSDDA component.
  late WardFormFSDDAModel wardFormFSDDAModel;
  // Model for UbatTambahanActivator component.
  late UbatTambahanActivatorModel ubatTambahanActivatorModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, UbatTambahanRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {
    wardFormTroliUbatModel =
        createModel(context, () => WardFormTroliUbatModel());
    wardFormFSUModel = createModel(context, () => WardFormFSUModel());
    wardFormFSIVDripModel = createModel(context, () => WardFormFSIVDripModel());
    wardFormFSDDAModel = createModel(context, () => WardFormFSDDAModel());
    ubatTambahanActivatorModel =
        createModel(context, () => UbatTambahanActivatorModel());
  }

  @override
  void dispose() {
    wardFormTroliUbatModel.dispose();
    wardFormFSUModel.dispose();
    wardFormFSIVDripModel.dispose();
    wardFormFSDDAModel.dispose();
    ubatTambahanActivatorModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();
  }

  /// Action blocks.
  Future resetFormFields(BuildContext context) async {}

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, UbatTambahanRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, UbatTambahanRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, UbatTambahanRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUbatTambahanRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 50,
          isStream: true,
        ),
      );
  }
}
