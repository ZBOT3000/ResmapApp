import '/flutter_flow/flutter_flow_util.dart';
import 'bookmark_page_widget.dart' show BookmarkPageWidget;
import 'package:flutter/material.dart';

class BookmarkPageModel extends FlutterFlowModel<BookmarkPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
