import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_pass_over_dashboard_updated_widget.dart'
    show MyPassOverDashboardUpdatedWidget;
import 'package:flutter/material.dart';

class MyPassOverDashboardUpdatedModel
    extends FlutterFlowModel<MyPassOverDashboardUpdatedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
