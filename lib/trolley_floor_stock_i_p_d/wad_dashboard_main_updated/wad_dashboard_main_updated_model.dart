import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'wad_dashboard_main_updated_widget.dart'
    show WadDashboardMainUpdatedWidget;
import 'package:flutter/material.dart';

class WadDashboardMainUpdatedModel
    extends FlutterFlowModel<WadDashboardMainUpdatedWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in WadDashboardMainUpdated widget.
  DeviceSubscriptionsRecord? fcmquery;
  // Stores action output result for [Custom Action - readNotificationParam] action in WadDashboardMainUpdated widget.
  String? wardPath;
  // Stores action output result for [Custom Action - getDocRefFromPath] action in WadDashboardMainUpdated widget.
  DocumentReference? wardRefAct;
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
