import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'expand_enquiries_widget.dart' show ExpandEnquiriesWidget;
import 'package:flutter/material.dart';

class ExpandEnquiriesModel extends FlutterFlowModel<ExpandEnquiriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in expandEnquiries widget.
  ChatsRecord? newCHAT;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? createdCHAT;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
