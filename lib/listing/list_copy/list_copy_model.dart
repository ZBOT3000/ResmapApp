import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'list_copy_widget.dart' show ListCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ListCopyModel extends FlutterFlowModel<ListCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField-bookingfee widget.
  FocusNode? textFieldBookingfeeFocusNode;
  TextEditingController? textFieldBookingfeeController;
  String? Function(BuildContext, String?)?
      textFieldBookingfeeControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for SwitchListTile-nsfas widget.
  bool? switchListTileNsfasValue;
  // State field(s) for CheckboxGroupFurniture widget.
  List<String>? checkboxGroupFurnitureValues1;
  FormFieldController<List<String>>? checkboxGroupFurnitureValueController1;
  // State field(s) for ChoiceChipsAmenities widget.
  List<String>? choiceChipsAmenitiesValues;
  FormFieldController<List<String>>? choiceChipsAmenitiesValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for CheckboxGroupFurniture widget.
  List<String>? checkboxGroupFurnitureValues2;
  FormFieldController<List<String>>? checkboxGroupFurnitureValueController2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController6;

  // State field(s) for TextFieldBooking widget.
  FocusNode? textFieldBookingFocusNode;
  TextEditingController? textFieldBookingController;
  String? Function(BuildContext, String?)? textFieldBookingControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController7;

  // State field(s) for TextFieldCleaning widget.
  FocusNode? textFieldCleaningFocusNode;
  TextEditingController? textFieldCleaningController;
  String? Function(BuildContext, String?)? textFieldCleaningControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController8;

  // State field(s) for TextFieldParking widget.
  FocusNode? textFieldParkingFocusNode;
  TextEditingController? textFieldParkingController;
  String? Function(BuildContext, String?)? textFieldParkingControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController9;

  // State field(s) for TextFieldAdditional widget.
  FocusNode? textFieldAdditionalFocusNode;
  TextEditingController? textFieldAdditionalController;
  String? Function(BuildContext, String?)?
      textFieldAdditionalControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController10;

  // State field(s) for TextFieldCancellation widget.
  FocusNode? textFieldCancellationFocusNode;
  TextEditingController? textFieldCancellationController;
  String? Function(BuildContext, String?)?
      textFieldCancellationControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController11;

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    expandableController1.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    expandableController2.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    expandableController3.dispose();
    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldBookingfeeFocusNode?.dispose();
    textFieldBookingfeeController?.dispose();

    expandableController4.dispose();
    tabBarController?.dispose();
    textFieldFocusNode7?.dispose();
    textController8?.dispose();

    textFieldFocusNode8?.dispose();
    textController9?.dispose();

    expandableController5.dispose();
    expandableController6.dispose();
    textFieldBookingFocusNode?.dispose();
    textFieldBookingController?.dispose();

    expandableController7.dispose();
    textFieldCleaningFocusNode?.dispose();
    textFieldCleaningController?.dispose();

    expandableController8.dispose();
    textFieldParkingFocusNode?.dispose();
    textFieldParkingController?.dispose();

    expandableController9.dispose();
    textFieldAdditionalFocusNode?.dispose();
    textFieldAdditionalController?.dispose();

    expandableController10.dispose();
    textFieldCancellationFocusNode?.dispose();
    textFieldCancellationController?.dispose();

    expandableController11.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
