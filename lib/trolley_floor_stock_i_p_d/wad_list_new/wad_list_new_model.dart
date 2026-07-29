import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'wad_list_new_widget.dart' show WadListNewWidget;
import 'package:flutter/material.dart';

class WadListNewModel extends FlutterFlowModel<WadListNewWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in WadListNew widget.
  DeviceSubscriptionsRecord? fcmquery;
  // Stores action output result for [Custom Action - readNotificationParam] action in WadListNew widget.
  String? wardPath;
  // Stores action output result for [Custom Action - getDocRefFromPath] action in WadListNew widget.
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
