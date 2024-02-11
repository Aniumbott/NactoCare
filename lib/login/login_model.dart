import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for emailAddressSignUp widget.
  FocusNode? emailAddressSignUpFocusNode;
  TextEditingController? emailAddressSignUpController;
  String? Function(BuildContext, String?)?
      emailAddressSignUpControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NursesRecord? nurse;
  // State field(s) for emailAddressLogIn widget.
  FocusNode? emailAddressLogInFocusNode;
  TextEditingController? emailAddressLogInController;
  String? Function(BuildContext, String?)? emailAddressLogInControllerValidator;
  // State field(s) for passwordLogIn widget.
  FocusNode? passwordLogInFocusNode;
  TextEditingController? passwordLogInController;
  late bool passwordLogInVisibility;
  String? Function(BuildContext, String?)? passwordLogInControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
    passwordLogInVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();

    emailAddressSignUpFocusNode?.dispose();
    emailAddressSignUpController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordController?.dispose();

    emailAddressLogInFocusNode?.dispose();
    emailAddressLogInController?.dispose();

    passwordLogInFocusNode?.dispose();
    passwordLogInController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
