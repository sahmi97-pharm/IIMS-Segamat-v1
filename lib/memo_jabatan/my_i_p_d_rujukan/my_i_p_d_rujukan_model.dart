import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_i_p_d_rujukan_widget.dart' show MyIPDRujukanWidget;
import 'package:flutter/material.dart';

class MyIPDRujukanModel extends FlutterFlowModel<MyIPDRujukanWidget> {
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
