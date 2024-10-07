import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'location_modal_widget.dart' show LocationModalWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationModalModel extends FlutterFlowModel<LocationModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for latitude widget.
  FocusNode? latitudeFocusNode;
  TextEditingController? latitudeTextController;
  String? Function(BuildContext, String?)? latitudeTextControllerValidator;
  // State field(s) for longitude widget.
  FocusNode? longitudeFocusNode;
  TextEditingController? longitudeTextController;
  String? Function(BuildContext, String?)? longitudeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    latitudeFocusNode?.dispose();
    latitudeTextController?.dispose();

    longitudeFocusNode?.dispose();
    longitudeTextController?.dispose();
  }
}
