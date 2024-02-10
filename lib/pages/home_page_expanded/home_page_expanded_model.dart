import '/backend/backend.dart';
import '/components/book_now/book_now_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_expanded_widget.dart' show HomePageExpandedWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomePageExpandedModel extends FlutterFlowModel<HomePageExpandedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in homePageExpanded widget.
  ChatsRecord? chatsUser;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? createdCHAT;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController6;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController7;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController8;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController9;

  // Model for bookNow component.
  late BookNowModel bookNowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bookNowModel = createModel(context, () => BookNowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
    expandableController6.dispose();
    expandableController7.dispose();
    expandableController8.dispose();
    expandableController9.dispose();
    bookNowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
