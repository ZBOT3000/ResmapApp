import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'notifications_page_widget.dart' show NotificationsPageWidget;
import 'package:flutter/material.dart';

class NotificationsPageModel extends FlutterFlowModel<NotificationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextFieldBody widget.
  FocusNode? textFieldBodyFocusNode;
  TextEditingController? textFieldBodyController;
  String? Function(BuildContext, String?)? textFieldBodyControllerValidator;
  // State field(s) for TextFieldSubject widget.
  FocusNode? textFieldSubjectFocusNode1;
  TextEditingController? textFieldSubjectController1;
  String? Function(BuildContext, String?)? textFieldSubjectController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextFieldSubject widget.
  FocusNode? textFieldSubjectFocusNode2;
  TextEditingController? textFieldSubjectController2;
  String? Function(BuildContext, String?)? textFieldSubjectController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldBodyFocusNode?.dispose();
    textFieldBodyController?.dispose();

    textFieldSubjectFocusNode1?.dispose();
    textFieldSubjectController1?.dispose();

    textFieldSubjectFocusNode2?.dispose();
    textFieldSubjectController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
