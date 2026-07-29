import '/flutter_flow/flutter_flow_util.dart';
import '/wad_detail_page_new/w_d_floor_stock_d_d_new/w_d_floor_stock_d_d_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_i_v_drip_new/w_d_floor_stock_i_v_drip_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_no_item_new/w_d_floor_stock_no_item_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_ubat_new/w_d_floor_stock_ubat_new_widget.dart';
import '/wad_detail_page_new/w_d_troli_ubat_view/w_d_troli_ubat_view_widget.dart';
import '/wad_detail_page_new/w_d_ubat_tambahan_new/w_d_ubat_tambahan_new_widget.dart';
import '/index.dart';
import 'ward_details_new_widget.dart' show WardDetailsNewWidget;
import 'package:flutter/material.dart';

class WardDetailsNewModel extends FlutterFlowModel<WardDetailsNewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WD_UbatTambahan_New component.
  late WDUbatTambahanNewModel wDUbatTambahanNewModel;
  // Model for WD_TroliUbat_View component.
  late WDTroliUbatViewModel wDTroliUbatViewModel;
  // Model for WD_FloorStock_no_item_new component.
  late WDFloorStockNoItemNewModel wDFloorStockNoItemNewModel;
  // Model for WD_FloorStockUbat_New component.
  late WDFloorStockUbatNewModel wDFloorStockUbatNewModel;
  // Model for WD_FloorStockIVDrip_New component.
  late WDFloorStockIVDripNewModel wDFloorStockIVDripNewModel;
  // Model for WD_FloorStockDD_New component.
  late WDFloorStockDDNewModel wDFloorStockDDNewModel;

  @override
  void initState(BuildContext context) {
    wDUbatTambahanNewModel =
        createModel(context, () => WDUbatTambahanNewModel());
    wDTroliUbatViewModel = createModel(context, () => WDTroliUbatViewModel());
    wDFloorStockNoItemNewModel =
        createModel(context, () => WDFloorStockNoItemNewModel());
    wDFloorStockUbatNewModel =
        createModel(context, () => WDFloorStockUbatNewModel());
    wDFloorStockIVDripNewModel =
        createModel(context, () => WDFloorStockIVDripNewModel());
    wDFloorStockDDNewModel =
        createModel(context, () => WDFloorStockDDNewModel());
  }

  @override
  void dispose() {
    wDUbatTambahanNewModel.dispose();
    wDTroliUbatViewModel.dispose();
    wDFloorStockNoItemNewModel.dispose();
    wDFloorStockUbatNewModel.dispose();
    wDFloorStockIVDripNewModel.dispose();
    wDFloorStockDDNewModel.dispose();
  }
}
