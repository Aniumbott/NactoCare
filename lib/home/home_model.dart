import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for requirement widget.
  FocusNode? requirementFocusNode;
  TextEditingController? requirementController;
  String? Function(BuildContext, String?)? requirementControllerValidator;
  // State field(s) for radius widget.
  int? radiusValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    requirementFocusNode?.dispose();
    requirementController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
