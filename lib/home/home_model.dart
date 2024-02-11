import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for requirement widget.
  FocusNode? requirementFocusNode;
  TextEditingController? requirementController;
  String? Function(BuildContext, String?)? requirementControllerValidator;
  // State field(s) for radius widget.
  int? radiusValue;
  // State field(s) for yourBio widget.
  FocusNode? yourBioFocusNode;
  TextEditingController? yourBioController;
  String? Function(BuildContext, String?)? yourBioControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    requirementFocusNode?.dispose();
    requirementController?.dispose();

    yourBioFocusNode?.dispose();
    yourBioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
