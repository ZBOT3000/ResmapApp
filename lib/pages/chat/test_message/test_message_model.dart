import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_message_widget.dart' show TestMessageWidget;
import 'package:flutter/material.dart';

class TestMessageModel extends FlutterFlowModel<TestMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageController;
  String? Function(BuildContext, String?)? messageControllerValidator;
  String? _messageControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatMessagesRecord? message;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    messageControllerValidator = _messageControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messageFocusNode?.dispose();
    messageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
