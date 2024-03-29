import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'session_widget.dart' show SessionWidget;
import 'package:flutter/material.dart';

class SessionModel extends FlutterFlowModel<SessionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for nurseName widget.
  FocusNode? nurseNameFocusNode;
  TextEditingController? nurseNameController;
  String? Function(BuildContext, String?)? nurseNameControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userNameFocusNode?.dispose();
    userNameController?.dispose();

    nurseNameFocusNode?.dispose();
    nurseNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
