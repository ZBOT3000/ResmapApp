import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for TextField-names widget.
  FocusNode? textFieldNamesFocusNode;
  TextEditingController? textFieldNamesController;
  String? Function(BuildContext, String?)? textFieldNamesControllerValidator;
  String? _textFieldNamesControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-id widget.
  FocusNode? textFieldIdFocusNode;
  TextEditingController? textFieldIdController;
  String? Function(BuildContext, String?)? textFieldIdControllerValidator;
  String? _textFieldIdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown-gender widget.
  String? dropDownGenderValue;
  FormFieldController<String>? dropDownGenderValueController;
  // State field(s) for TextField-phone widget.
  FocusNode? textFieldPhoneFocusNode;
  TextEditingController? textFieldPhoneController;
  String? Function(BuildContext, String?)? textFieldPhoneControllerValidator;
  String? _textFieldPhoneControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-pass widget.
  FocusNode? textFieldPassFocusNode;
  TextEditingController? textFieldPassController;
  late bool textFieldPassVisibility;
  String? Function(BuildContext, String?)? textFieldPassControllerValidator;
  String? _textFieldPassControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-pass-confirm widget.
  FocusNode? textFieldPassConfirmFocusNode;
  TextEditingController? textFieldPassConfirmController;
  late bool textFieldPassConfirmVisibility;
  String? Function(BuildContext, String?)?
      textFieldPassConfirmControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    textFieldNamesControllerValidator = _textFieldNamesControllerValidator;
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
    textFieldIdControllerValidator = _textFieldIdControllerValidator;
    textFieldPhoneControllerValidator = _textFieldPhoneControllerValidator;
    textFieldPassVisibility = false;
    textFieldPassControllerValidator = _textFieldPassControllerValidator;
    textFieldPassConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    emailTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController1?.dispose();

    textFieldFocusNode3?.dispose();
    passwordTextController1?.dispose();

    textFieldNamesFocusNode?.dispose();
    textFieldNamesController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();

    textFieldIdFocusNode?.dispose();
    textFieldIdController?.dispose();

    textFieldPhoneFocusNode?.dispose();
    textFieldPhoneController?.dispose();

    textFieldPassFocusNode?.dispose();
    textFieldPassController?.dispose();

    textFieldPassConfirmFocusNode?.dispose();
    textFieldPassConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
