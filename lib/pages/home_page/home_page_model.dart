import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int increment = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  /// Query cache managers for this widget.

  final _resesManager = StreamRequestManager<List<AccomodationsRecord>>();
  Stream<List<AccomodationsRecord>> reses({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AccomodationsRecord>> Function() requestFn,
  }) =>
      _resesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearResesCache() => _resesManager.clear();
  void clearResesCacheKey(String? uniqueKey) =>
      _resesManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    expandableController.dispose();

    /// Dispose query cache managers for this widget.

    clearResesCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
