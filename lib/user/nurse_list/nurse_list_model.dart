import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nurse_list_widget.dart' show NurseListWidget;
import 'package:flutter/material.dart';

class NurseListModel extends FlutterFlowModel<NurseListWidget> {
  ///  Local state fields for this page.

  String suggested = 'Fetching...';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (NactoGPT)] action in nurseList widget.
  ApiCallResponse? apiResultfs4;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
