import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'started_widget.dart' show StartedWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class StartedModel extends FlutterFlowModel<StartedWidget> {
  ///  Local state fields for this page.

  bool tnc = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for ChoiceChipsListing widget.
  String? choiceChipsListingValue;
  FormFieldController<List<String>>? choiceChipsListingValueController;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for CountControllerRoomType widget.
  int? countControllerRoomTypeValue;
  // State field(s) for CountControllertotalNumber widget.
  int? countControllertotalNumberValue;
  // State field(s) for TextFieldPBooking widget.
  FocusNode? textFieldPBookingFocusNode;
  TextEditingController? textFieldPBookingController;
  String? Function(BuildContext, String?)? textFieldPBookingControllerValidator;
  DateTime? datePicked;
  // State field(s) for SwitchNsfas widget.
  bool? switchNsfasValue;
  // State field(s) for DropDownVarsity widget.
  String? dropDownVarsityValue;
  FormFieldController<String>? dropDownVarsityValueController;
  // State field(s) for addressLines1 widget.
  FocusNode? addressLines1FocusNode;
  TextEditingController? addressLines1Controller;
  String? Function(BuildContext, String?)? addressLines1ControllerValidator;
  // State field(s) for addressLines2 widget.
  FocusNode? addressLines2FocusNode;
  TextEditingController? addressLines2Controller;
  String? Function(BuildContext, String?)? addressLines2ControllerValidator;
  // State field(s) for TextFieldRoomTypeName widget.
  FocusNode? textFieldRoomTypeNameFocusNode;
  TextEditingController? textFieldRoomTypeNameController;
  String? Function(BuildContext, String?)?
      textFieldRoomTypeNameControllerValidator;
  String? _textFieldRoomTypeNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CountControllerNo-Rooms widget.
  int? countControllerNoRoomsValue;
  // State field(s) for TextFieldPrice widget.
  FocusNode? textFieldPriceFocusNode;
  TextEditingController? textFieldPriceController;
  String? Function(BuildContext, String?)? textFieldPriceControllerValidator;
  String? _textFieldPriceControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // State field(s) for CountControllerNoTenants widget.
  int? countControllerNoTenantsValue;
  // State field(s) for DropDownFurnish widget.
  String? dropDownFurnishValue;
  FormFieldController<String>? dropDownFurnishValueController;
  // State field(s) for CheckboxGroupFurniture widget.
  List<String>? checkboxGroupFurnitureValues;
  FormFieldController<List<String>>? checkboxGroupFurnitureValueController;
  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  // State field(s) for ChoiceChipsAmenities widget.
  List<String>? choiceChipsAmenitiesValues;
  FormFieldController<List<String>>? choiceChipsAmenitiesValueController;
  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // State field(s) for CheckboxGroupRules widget.
  List<String>? checkboxGroupRulesValues;
  FormFieldController<List<String>>? checkboxGroupRulesValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for TextFieldBooking widget.
  FocusNode? textFieldBookingFocusNode;
  TextEditingController? textFieldBookingController;
  String? Function(BuildContext, String?)? textFieldBookingControllerValidator;
  String? _textFieldBookingControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for TextFieldCleaning widget.
  FocusNode? textFieldCleaningFocusNode;
  TextEditingController? textFieldCleaningController;
  String? Function(BuildContext, String?)? textFieldCleaningControllerValidator;
  String? _textFieldCleaningControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for TextFieldParking widget.
  FocusNode? textFieldParkingFocusNode;
  TextEditingController? textFieldParkingController;
  String? Function(BuildContext, String?)? textFieldParkingControllerValidator;
  String? _textFieldParkingControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for TextFieldAdditional widget.
  FocusNode? textFieldAdditionalFocusNode;
  TextEditingController? textFieldAdditionalController;
  String? Function(BuildContext, String?)?
      textFieldAdditionalControllerValidator;
  String? _textFieldAdditionalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // State field(s) for TextFieldCancellation widget.
  FocusNode? textFieldCancellationFocusNode;
  TextEditingController? textFieldCancellationController;
  String? Function(BuildContext, String?)?
      textFieldCancellationControllerValidator;
  String? _textFieldCancellationControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  // State field(s) for TextFieldCompanyName widget.
  FocusNode? textFieldCompanyNameFocusNode;
  TextEditingController? textFieldCompanyNameController;
  String? Function(BuildContext, String?)?
      textFieldCompanyNameControllerValidator;
  String? _textFieldCompanyNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldListingName widget.
  FocusNode? textFieldListingNameFocusNode;
  TextEditingController? textFieldListingNameController;
  String? Function(BuildContext, String?)?
      textFieldListingNameControllerValidator;
  String? _textFieldListingNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldDescription widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionControllerValidator;
  String? _textFieldDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldRoomTypeNameControllerValidator =
        _textFieldRoomTypeNameControllerValidator;
    textFieldPriceControllerValidator = _textFieldPriceControllerValidator;
    textFieldBookingControllerValidator = _textFieldBookingControllerValidator;
    textFieldCleaningControllerValidator =
        _textFieldCleaningControllerValidator;
    textFieldParkingControllerValidator = _textFieldParkingControllerValidator;
    textFieldAdditionalControllerValidator =
        _textFieldAdditionalControllerValidator;
    textFieldCancellationControllerValidator =
        _textFieldCancellationControllerValidator;
    textFieldCompanyNameControllerValidator =
        _textFieldCompanyNameControllerValidator;
    textFieldListingNameControllerValidator =
        _textFieldListingNameControllerValidator;
    textFieldDescriptionControllerValidator =
        _textFieldDescriptionControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldPBookingFocusNode?.dispose();
    textFieldPBookingController?.dispose();

    addressLines1FocusNode?.dispose();
    addressLines1Controller?.dispose();

    addressLines2FocusNode?.dispose();
    addressLines2Controller?.dispose();

    textFieldRoomTypeNameFocusNode?.dispose();
    textFieldRoomTypeNameController?.dispose();

    textFieldPriceFocusNode?.dispose();
    textFieldPriceController?.dispose();

    expandableController1.dispose();
    textFieldBookingFocusNode?.dispose();
    textFieldBookingController?.dispose();

    expandableController2.dispose();
    textFieldCleaningFocusNode?.dispose();
    textFieldCleaningController?.dispose();

    expandableController3.dispose();
    textFieldParkingFocusNode?.dispose();
    textFieldParkingController?.dispose();

    expandableController4.dispose();
    textFieldAdditionalFocusNode?.dispose();
    textFieldAdditionalController?.dispose();

    expandableController5.dispose();
    textFieldCancellationFocusNode?.dispose();
    textFieldCancellationController?.dispose();

    textFieldFocusNode2?.dispose();
    textController12?.dispose();

    textFieldCompanyNameFocusNode?.dispose();
    textFieldCompanyNameController?.dispose();

    textFieldListingNameFocusNode?.dispose();
    textFieldListingNameController?.dispose();

    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
