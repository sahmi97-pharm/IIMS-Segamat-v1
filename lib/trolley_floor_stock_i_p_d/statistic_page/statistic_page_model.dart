import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'statistic_page_widget.dart' show StatisticPageWidget;
import 'package:flutter/material.dart';

class StatisticPageModel extends FlutterFlowModel<StatisticPageWidget> {
  ///  Local state fields for this page.

  DateTime? exportStartDate;

  DateTime? exportEndDate;

  bool exportIncludeFridgeItem = false;

  bool exportIncludeDD = false;

  DateTime? selectedChartMonth;

  DateTime? selectedListDate;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  DateTime? datePicked4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
