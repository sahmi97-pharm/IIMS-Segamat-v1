import '/components/floor_stock_alert_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wad_dashboard_new_widget.dart' show WadDashboardNewWidget;
import 'package:flutter/material.dart';

class WadDashboardNewModel extends FlutterFlowModel<WadDashboardNewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FloorStockAlert component.
  late FloorStockAlertModel floorStockAlertModel;

  @override
  void initState(BuildContext context) {
    floorStockAlertModel = createModel(context, () => FloorStockAlertModel());
  }

  @override
  void dispose() {
    floorStockAlertModel.dispose();
  }
}
