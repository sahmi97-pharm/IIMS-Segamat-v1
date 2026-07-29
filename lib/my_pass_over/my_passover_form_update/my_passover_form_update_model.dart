import '/backend/backend.dart';
import '/component/announcement/announcement_widget.dart';
import '/component/received_item/received_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'my_passover_form_update_widget.dart' show MyPassoverFormUpdateWidget;
import 'package:flutter/material.dart';

class MyPassoverFormUpdateModel
    extends FlutterFlowModel<MyPassoverFormUpdateWidget> {
  ///  Local state fields for this page.

  MemosRecord? memoReference;

  String? formCategory;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // Model for Announcement component.
  late AnnouncementModel announcementModel;
  // Model for ReceivedItem component.
  late ReceivedItemModel receivedItemModel;

  @override
  void initState(BuildContext context) {
    announcementModel = createModel(context, () => AnnouncementModel());
    receivedItemModel = createModel(context, () => ReceivedItemModel());
  }

  @override
  void dispose() {
    announcementModel.dispose();
    receivedItemModel.dispose();
  }
}
