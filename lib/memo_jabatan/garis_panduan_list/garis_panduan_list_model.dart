import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'garis_panduan_list_widget.dart' show GarisPanduanListWidget;
import 'package:flutter/material.dart';

class GarisPanduanListModel extends FlutterFlowModel<GarisPanduanListWidget> {
  ///  Local state fields for this page.

  String? searchActive;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
