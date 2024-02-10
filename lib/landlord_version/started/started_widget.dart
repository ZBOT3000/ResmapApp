import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/error_snack/error_snack_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/landlord_version/other_landlord_comp/main_menu/main_menu_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'started_model.dart';
export 'started_model.dart';

class StartedWidget extends StatefulWidget {
  const StartedWidget({super.key});

  @override
  State<StartedWidget> createState() => _StartedWidgetState();
}

class _StartedWidgetState extends State<StartedWidget> {
  late StartedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartedModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldPBookingController ??= TextEditingController();
    _model.textFieldPBookingFocusNode ??= FocusNode();

    _model.addressLines1Controller ??= TextEditingController();
    _model.addressLines1FocusNode ??= FocusNode();

    _model.addressLines2Controller ??= TextEditingController();
    _model.addressLines2FocusNode ??= FocusNode();

    _model.textFieldRoomTypeNameController ??= TextEditingController();
    _model.textFieldRoomTypeNameFocusNode ??= FocusNode();

    _model.textFieldPriceController ??= TextEditingController();
    _model.textFieldPriceFocusNode ??= FocusNode();

    _model.expandableController1 = ExpandableController(initialExpanded: true);
    _model.textFieldBookingController ??= TextEditingController();
    _model.textFieldBookingFocusNode ??= FocusNode();

    _model.expandableController2 = ExpandableController(initialExpanded: true);
    _model.textFieldCleaningController ??= TextEditingController();
    _model.textFieldCleaningFocusNode ??= FocusNode();

    _model.expandableController3 = ExpandableController(initialExpanded: true);
    _model.textFieldParkingController ??= TextEditingController();
    _model.textFieldParkingFocusNode ??= FocusNode();

    _model.expandableController4 = ExpandableController(initialExpanded: true);
    _model.textFieldAdditionalController ??= TextEditingController();
    _model.textFieldAdditionalFocusNode ??= FocusNode();

    _model.expandableController5 = ExpandableController(initialExpanded: true);
    _model.textFieldCancellationController ??= TextEditingController();
    _model.textFieldCancellationFocusNode ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldCompanyNameController ??= TextEditingController();
    _model.textFieldCompanyNameFocusNode ??= FocusNode();

    _model.textFieldListingNameController ??= TextEditingController();
    _model.textFieldListingNameFocusNode ??= FocusNode();

    _model.textFieldDescriptionController ??= TextEditingController();
    _model.textFieldDescriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.65,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.info_outlined,
                            color: FlutterFlowTheme.of(context).success,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Text(
                              '${FFAppState().addMyRooms.length.toString()} room(s) added!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Builder(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.short_text,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        await showDialog(
                          barrierColor: const Color(0x0B000000),
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.8, -0.3)
                                  .resolve(Directionality.of(context)),
                              child: WebViewAware(
                                child: GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: const MainMenuWidget(),
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/RESMAP_(NO_TEXT).png',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                    child: TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Search properties',
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        suffixIcon: const Icon(
                          FFIcons.ksearchZoomIn,
                          color: Color(0xFF3A96D0),
                          size: 27.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Message...',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      )),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: const Duration(milliseconds: 100),
                  showDuration: const Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      phone: false,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        'Inbox',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 500),
                                fadeOutDuration: const Duration(milliseconds: 500),
                                imageUrl: valueOrDefault<String>(
                                  currentUserPhoto,
                                  'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                ),
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: valueOrDefault<String>(
                                currentUserPhoto,
                                'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                              ),
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: valueOrDefault<String>(
                          currentUserPhoto,
                          'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                        ),
                        transitionOnUserGestures: true,
                        child: Container(
                          width: 55.0,
                          height: 55.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CachedNetworkImage(
                            fadeInDuration: const Duration(milliseconds: 500),
                            fadeOutDuration: const Duration(milliseconds: 500),
                            imageUrl: valueOrDefault<String>(
                              currentUserPhoto,
                              'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Getting Started',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: Text(
                                          'Before we begin to create your listing, here are some things you may want on hand to speed up the process.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 18.0,
                                              ),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.linked_camera_outlined,
                                          size: 30.0,
                                        ),
                                        title: Text(
                                          'At least 1 photo of each room.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.people_outline,
                                          size: 30.0,
                                        ),
                                        title: Text(
                                          'Capacity and availability for your listing.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          FFIcons.kmessageTextCopy,
                                          size: 30.0,
                                        ),
                                        title: Text(
                                          'A short description about your listing.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.linked_camera_outlined,
                                          size: 30.0,
                                        ),
                                        title: Text(
                                          'At least 5 photos of the interior and exterior.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          FFIcons.kmoney3Copy,
                                          size: 30.0,
                                        ),
                                        title: Text(
                                          'Pricing for your listing or it’s individual rooms.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaleFactor:
                                              MediaQuery.of(context)
                                                  .textScaleFactor,
                                          text: TextSpan(
                                            children: const [
                                              TextSpan(
                                                text: 'In order for ',
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: 'Resmap ',
                                                style: TextStyle(
                                                  color: Color(0xFF3A96D0),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    'to store your information, we require your consent. Please accept the terms and conditions below.',
                                                style: TextStyle(),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ToggleIcon(
                                              onPressed: () async {
                                                setState(() =>
                                                    _model.tnc = !_model.tnc);
                                                setState(() {
                                                  _model.tnc = true;
                                                });
                                              },
                                              value: _model.tnc,
                                              onIcon: Icon(
                                                FFIcons.ktickSquareCopy,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                size: 20.0,
                                              ),
                                              offIcon: Icon(
                                                FFIcons.krefreshSquare2Copy,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                size: 20.0,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'I have read and agree to the resmap terms and conditions',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 50.0, 10.0, 40.0),
                                            child: Container(
                                              width: 250.0,
                                              height: 250.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    _model.uploadedFileUrl1,
                                                  ),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              child: Visibility(
                                                visible: _model.uploadedFileUrl1 ==
                                                        '',
                                                child: Icon(
                                                  Icons.upload_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  size: 55.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Drag or upload your logo',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 15.0),
                                          child: Text(
                                            'Your logo will be shown on your listings',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    allowPhoto: true,
                                                    includeBlurHash: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    setState(() => _model
                                                            .isDataUploading1 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      showUploadMessage(
                                                        context,
                                                        'Uploading file...',
                                                        showLoading: true,
                                                      );
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .hideCurrentSnackBar();
                                                      _model.isDataUploading1 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      setState(() {
                                                        _model.uploadedLocalFile1 =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl1 =
                                                            downloadUrls.first;
                                                      });
                                                      showUploadMessage(
                                                          context, 'Success!');
                                                    } else {
                                                      setState(() {});
                                                      showUploadMessage(context,
                                                          'Failed to upload data');
                                                      return;
                                                    }
                                                  }

                                                  setState(() {
                                                    FFAppState().imageHeader =
                                                        _model.uploadedFileUrl1;
                                                  });
                                                },
                                                text: 'Browse',
                                                options: FFButtonOptions(
                                                  width: 150.0,
                                                  height: 45.0,
                                                  padding: const EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF3A96D0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 10.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 40.0),
                                      child: AutoSizeText(
                                        'I am listing a...',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowChoiceChips(
                                        options: const [
                                          ChipData('House'),
                                          ChipData('Student Accomodation'),
                                          ChipData('Apartment'),
                                          ChipData('Other')
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.choiceChipsListingValue =
                                                val?.first),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 22.0,
                                          labelPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 5.0, 15.0, 5.0),
                                          elevation: 0.0,
                                          borderColor: const Color(0xFF3391D0),
                                          borderWidth: 2.0,
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconSize: 22.0,
                                          labelPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 5.0, 15.0, 5.0),
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          borderWidth: 1.0,
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        chipSpacing: 5.0,
                                        rowSpacing: 15.0,
                                        multiselect: false,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsListingValueController ??=
                                            FormFieldController<List<String>>(
                                          [],
                                        ),
                                        wrapped: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _model.formKey5,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Text(
                                            'Where\'s your place located?',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 26.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            'Your address will be show in the listing',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        if (isAndroid == true)
                                          SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.9,
                                            height: 200.0,
                                            child: custom_widgets
                                                .PlacePickerHuaweiApi(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.9,
                                              height: 200.0,
                                              apiKey:
                                                  'DAEDADJqest0uEOAAaq3LR7AlG9Y7fJg4WgGo9I0Hnir4BDoxDq12zOSuNmL70UVSCtek6bxUjhaar3IRcH1J9rwglTGXjEwFrJ3fA==',
                                              rebuildPage: () async {
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                        SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 400.0,
                                          child: Stack(
                                            children: [
                                              if (isiOS == true)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 45.0, 0.0, 0.0),
                                                  child: FlutterFlowPlacePicker(
                                                    iOSGoogleMapsApiKey:
                                                        'AIzaSyCyTD40JQV1c0LgrmLSrmkKzcih2R6pHBE',
                                                    androidGoogleMapsApiKey:
                                                        'AlzaSyCT-qPt4CalEuk9gvj_Qrmi_AQiGnkYbBo',
                                                    webGoogleMapsApiKey:
                                                        'AIzaSyCD3--S2rM65mPy84_Q96PHRQDeUfClKC4',
                                                    onSelect: (place) async {
                                                      setState(() => _model
                                                              .placePickerValue =
                                                          place);
                                                    },
                                                    defaultText:
                                                        'Select Location',
                                                    icon: const Icon(
                                                      Icons.place,
                                                      color: Color(0xFF3391CD),
                                                      size: 16.0,
                                                    ),
                                                    buttonOptions:
                                                        FFButtonOptions(
                                                      width: 315.0,
                                                      height: 50.0,
                                                      color: const Color(0xFF3391CD),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.always,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 0.0, 0.0),
                                            child: Text(
                                              'How many room types are in this student residence?',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'How many room types are there?',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'A room which shares the same size and price',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons
                                                            .kminusSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 35.0,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons.kaddSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 35.0,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20.0,
                                                        ),
                                                      ),
                                                      count: _model
                                                          .countControllerRoomTypeValue ??= 0,
                                                      updateCount:
                                                          (count) async {
                                                        setState(() => _model
                                                                .countControllerRoomTypeValue =
                                                            count);
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .addToNumberOfRooms(
                                                                  _model
                                                                      .countControllerRoomTypeValue!);
                                                        });
                                                      },
                                                      stepSize: 1,
                                                      minimum: 0,
                                                      maximum: 10,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'How many total rooms are on the property?',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Total number of rooms',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons
                                                            .kminusSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 35.0,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons.kaddSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 35.0,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20.0,
                                                        ),
                                                      ),
                                                      count: _model
                                                          .countControllertotalNumberValue ??= 0,
                                                      updateCount: (count) =>
                                                          setState(() => _model
                                                                  .countControllertotalNumberValue =
                                                              count),
                                                      stepSize: 1,
                                                      minimum: 0,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    'Booking Fee',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(15.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldPBookingController,
                                                      focusNode: _model
                                                          .textFieldPBookingFocusNode,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .words,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'R',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 20.0,
                                                              ),
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .textFieldPBookingControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: Text(
                                              'When are these rooms available from?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 55.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final datePickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (datePickedDate != null) {
                                                    safeSetState(() {
                                                      _model.datePicked =
                                                          DateTime(
                                                        datePickedDate.year,
                                                        datePickedDate.month,
                                                        datePickedDate.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.datePicked
                                                              ?.toString(),
                                                          'Select date',
                                                        ).maybeHandleOverflow(
                                                            maxChars: 11),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontSize: 17.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'NSFAS Accreditted?',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Switch.adaptive(
                                                  value: _model
                                                          .switchNsfasValue ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                            .switchNsfasValue =
                                                        newValue);
                                                  },
                                                  activeColor:
                                                      const Color(0xFF3A96D0),
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent1,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownVarsityValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'University of Witwatersrand',
                                                'University of Johannesburg',
                                                'University of Cape Town',
                                                'University of Pretoria',
                                                'Rosebank College',
                                                'Damelin College',
                                                'Bosto College',
                                                'AFDA'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownVarsityValue =
                                                      val),
                                              width: double.infinity,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  'Select University/College',
                                              searchHintText:
                                                  'Search for an item...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              borderWidth: 1.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .addressLines1Controller,
                                              focusNode:
                                                  _model.addressLines1FocusNode,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Address Line 1',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              minLines: 1,
                                              validator: _model
                                                  .addressLines1ControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .addressLines2Controller,
                                              focusNode:
                                                  _model.addressLines2FocusNode,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Address Line 2',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              minLines: 1,
                                              validator: _model
                                                  .addressLines2ControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: Form(
                          key: _model.formKey3,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: Text(
                                    'Bedrooms I\'m Leasing....',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 26.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'What do the bedrooms include?',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'What do you want to name this bedroom?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldRoomTypeNameController,
                                              focusNode: _model
                                                  .textFieldRoomTypeNameFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Room type name',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .textFieldRoomTypeNameControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Text(
                                            'How many rooms of this type are there?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'No. of rooms of this type',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons
                                                            .kminusSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 30.0,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons.kaddSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 30.0,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20.0,
                                                        ),
                                                      ),
                                                      count: _model
                                                          .countControllerNoRoomsValue ??= 0,
                                                      updateCount: (count) =>
                                                          setState(() => _model
                                                                  .countControllerNoRoomsValue =
                                                              count),
                                                      stepSize: 1,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    'Room Price',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(15.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldPriceController,
                                                      focusNode: _model
                                                          .textFieldPriceFocusNode,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .words,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'R',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 20.0,
                                                              ),
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .textFieldPriceControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Text(
                                              'Additional fees',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FlutterFlowCheckboxGroup(
                                              options: const [
                                                'Admin fess',
                                                'Security deposit'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.checkboxGroupValues =
                                                      val),
                                              controller: _model
                                                      .checkboxGroupValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor: const Color(0xFF3A96D0),
                                              checkColor: Colors.white,
                                              checkboxBorderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              labelPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(5.0),
                                              initialized:
                                                  _model.checkboxGroupValues !=
                                                      null,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'How many tenants can occupy this room type?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'No. of tenants',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons
                                                            .kminusSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 30.0,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => Icon(
                                                        FFIcons.kaddSquareCopy,
                                                        color: enabled
                                                            ? const Color(0xFF3A96D0)
                                                            : const Color(0xFFEEEEEE),
                                                        size: 30.0,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20.0,
                                                        ),
                                                      ),
                                                      count: _model
                                                          .countControllerNoTenantsValue ??= 0,
                                                      updateCount: (count) =>
                                                          setState(() => _model
                                                                  .countControllerNoTenantsValue =
                                                              count),
                                                      stepSize: 1,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Is this bedroom furnished?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownFurnishValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'Furnished',
                                                'Semi Furnished',
                                                'Unfurnished'
                                              ],
                                              onChanged: (val) async {
                                                setState(() => _model
                                                        .dropDownFurnishValue =
                                                    val);
                                                setState(() {
                                                  FFAppState().furnishedOrNot =
                                                      _model
                                                          .dropDownFurnishValue!;
                                                });
                                              },
                                              width: 180.0,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Select',
                                              searchHintText: 'Search',
                                              icon: const Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              borderWidth: 0.0,
                                              borderRadius: 12.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 4.0, 12.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          if (_model.dropDownFurnishValue ==
                                              'Furnished')
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                'What does the room contain?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 18.0,
                                                        ),
                                              ),
                                            ),
                                          if (_model.dropDownFurnishValue ==
                                              'Furnished')
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: FlutterFlowCheckboxGroup(
                                                options: const [
                                                  'Air Condition',
                                                  'Chair',
                                                  'Desk',
                                                  'Lamp',
                                                  'Wardrope',
                                                  'Bed',
                                                  'Side table'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.checkboxGroupFurnitureValues =
                                                        val),
                                                controller: _model
                                                        .checkboxGroupFurnitureValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  [],
                                                ),
                                                activeColor: const Color(0xFF3A96D0),
                                                checkColor: Colors.white,
                                                checkboxBorderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                labelPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15.0, 0.0,
                                                            0.0, 0.0),
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(5.0),
                                                initialized: _model
                                                        .checkboxGroupFurnitureValues !=
                                                    null,
                                              ),
                                            ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Text(
                                                'Upload up to 4 images showing this room',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.image,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                size: 150.0,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMedia(
                                                    includeDimensions: true,
                                                    mediaSource: MediaSource
                                                        .photoGallery,
                                                    multiImage: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    setState(() => _model
                                                            .isDataUploading2 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading2 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      setState(() {
                                                        _model.uploadedLocalFiles2 =
                                                            selectedUploadedFiles;
                                                        _model.uploadedFileUrls2 =
                                                            downloadUrls;
                                                      });
                                                    } else {
                                                      setState(() {});
                                                      return;
                                                    }
                                                  }
                                                },
                                                child: Text(
                                                  'Upload images',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            const Color(0xFF3891CA),
                                                        fontSize: 20.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final imageLinks = _model
                                                    .uploadedFileUrls2
                                                    .toList()
                                                    .take(4)
                                                    .toList();
                                                return Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.center,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: List.generate(
                                                      imageLinks.length,
                                                      (imageLinksIndex) {
                                                    final imageLinksItem =
                                                        imageLinks[
                                                            imageLinksIndex];
                                                    return Stack(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.7, -0.75),
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  10.0),
                                                          child: Container(
                                                            width: 150.0,
                                                            height: 150.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: Image
                                                                    .network(
                                                                  imageLinksItem,
                                                                ).image,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child: Visibility(
                                                              visible: imageLinksItem ==
                                                                      '',
                                                              child: Icon(
                                                                FFIcons
                                                                    .kaddCircle,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const Icon(
                                                          Icons
                                                              .remove_circle_outline,
                                                          color:
                                                              Color(0xFF3A96D0),
                                                          size: 22.0,
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 15.0, 50.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() {
                                                  FFAppState().addToAddMyRooms(
                                                      RoomTypesStruct(
                                                    roomName: _model
                                                        .textFieldRoomTypeNameController
                                                        .text,
                                                    roomPrice: _model
                                                        .textFieldPriceController
                                                        .text,
                                                    noPeople: _model
                                                        .countControllerNoTenantsValue
                                                        ?.toString(),
                                                    furnishType: _model
                                                        .dropDownFurnishValue,
                                                    furniture: _model
                                                        .checkboxGroupFurnitureValues,
                                                    roomPictures: _model
                                                        .uploadedFileUrls2,
                                                  ));
                                                });
                                                setState(() {
                                                  _model.textController1
                                                      ?.clear();
                                                  _model
                                                      .textFieldRoomTypeNameController
                                                      ?.clear();
                                                  _model
                                                      .textFieldPriceController
                                                      ?.clear();
                                                  _model
                                                      .textFieldListingNameController
                                                      ?.clear();
                                                  _model
                                                      .textFieldDescriptionController
                                                      ?.clear();
                                                });
                                                setState(() {
                                                  _model
                                                      .dropDownVarsityValueController
                                                      ?.reset();
                                                  _model
                                                      .dropDownFurnishValueController
                                                      ?.reset();
                                                });
                                                setState(() {
                                                  _model
                                                      .choiceChipsListingValueController
                                                      ?.reset();
                                                });
                                                setState(() {
                                                  _model
                                                      .checkboxGroupValueController
                                                      ?.reset();
                                                  _model
                                                      .checkboxGroupFurnitureValueController
                                                      ?.reset();
                                                  _model
                                                      .checkboxGroupRulesValueController
                                                      ?.reset();
                                                });
                                                setState(() {
                                                  _model.isDataUploading2 =
                                                      false;
                                                  _model.uploadedLocalFiles2 =
                                                      [];
                                                  _model.uploadedFileUrls2 = [];
                                                });
                                              },
                                              text: 'Add Room',
                                              options: FFButtonOptions(
                                                height: 45.0,
                                                padding: const EdgeInsets.all(0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 15.0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 1.0, 0.0, 0.0),
                            child: Text(
                              'Amenities....',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 26.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 30.0, 15.0, 0.0),
                              child: FlutterFlowChoiceChips(
                                options: const [
                                  ChipData('Uncapped WiFi'),
                                  ChipData('Pool'),
                                  ChipData('Laundry'),
                                  ChipData('Free Gym'),
                                  ChipData('CCTV'),
                                  ChipData('Study Room'),
                                  ChipData('Smoke Detectors')
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.choiceChipsAmenitiesValues = val),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 18.0,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      6.0, 2.0, 6.0, 2.0),
                                  elevation: 40.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  iconSize: 18.0,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      7.0, 2.0, 7.0, 2.0),
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: true,
                                initialized:
                                    _model.choiceChipsAmenitiesValues != null,
                                alignment: WrapAlignment.start,
                                controller: _model
                                        .choiceChipsAmenitiesValueController ??=
                                    FormFieldController<List<String>>(
                                  [],
                                ),
                                wrapped: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _model.formKey7,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Text(
                                            'Let’s show off the rest of the place',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 24.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Add at least 5 additional images for your tenants to see what to expect.',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 20.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final selectedMedia =
                                                  await selectMedia(
                                                includeBlurHash: true,
                                                mediaSource:
                                                    MediaSource.photoGallery,
                                                multiImage: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading3 = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  showUploadMessage(
                                                    context,
                                                    'Uploading file...',
                                                    showLoading: true,
                                                  );
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  ScaffoldMessenger.of(context)
                                                      .hideCurrentSnackBar();
                                                  _model.isDataUploading3 =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFiles3 =
                                                        selectedUploadedFiles;
                                                    _model.uploadedFileUrls3 =
                                                        downloadUrls;
                                                  });
                                                  showUploadMessage(
                                                      context, 'Success!');
                                                } else {
                                                  setState(() {});
                                                  showUploadMessage(context,
                                                      'Failed to upload data');
                                                  return;
                                                }
                                              }
                                            },
                                            text: 'Browse Images',
                                            options: FFButtonOptions(
                                              width: 170.0,
                                              height: 45.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF3A96D0),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 30.0),
                                          child: Builder(
                                            builder: (context) {
                                              final showImages = _model
                                                  .uploadedFileUrls3
                                                  .toList()
                                                  .take(5)
                                                  .toList();
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    showImages.length,
                                                    (showImagesIndex) {
                                                  final showImagesItem =
                                                      showImages[
                                                          showImagesIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(10.0),
                                                    child: Container(
                                                      width: 250.0,
                                                      height: 250.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            showImagesItem,
                                                          ).image,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                        ),
                                                      ),
                                                      child: Visibility(
                                                        visible:
                                                            showImagesItem ==
                                                                    '',
                                                        child: Icon(
                                                          FFIcons.kaddCircle,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 0.0, 0.0),
                                        child: Text(
                                          'What about the property rules?',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontSize: 24.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          'What rules will tenants have to follow in order to stay at this property',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          'Select the rules below that apply',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 0.6,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: FlutterFlowCheckboxGroup(
                                                options: const [
                                                  'No Alcohol',
                                                  'No SleepOvers',
                                                  'No Pets',
                                                  'No Parties Allowed',
                                                  'No Smoking',
                                                  'Quiet Hours',
                                                  'Clean Up After Use',
                                                  'No Weapons Allowed',
                                                  'No Vandalism',
                                                  'No Unapproved Modifications',
                                                  'No Subletting',
                                                  'No Noise Disruption',
                                                  'No Trespassing'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.checkboxGroupRulesValues =
                                                        val),
                                                controller: _model
                                                        .checkboxGroupRulesValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  [],
                                                ),
                                                activeColor: const Color(0xFF3A96D0),
                                                checkColor: Colors.white,
                                                checkboxBorderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                labelPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15.0, 0.0,
                                                            0.0, 0.0),
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(5.0),
                                                initialized: _model
                                                        .checkboxGroupRulesValues !=
                                                    null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: _model.formKey4,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 20.0, 15.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: ExpandableNotifier(
                                    controller: _model.expandableController1,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'How can I book a room?',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      collapsed: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            indent: 15.0,
                                            endIndent: 15.0,
                                          ),
                                        ],
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 20.0, 8.0, 20.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldBookingController,
                                              focusNode: _model
                                                  .textFieldBookingFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              textInputAction:
                                                  TextInputAction.next,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintText:
                                                    'Enter your response below',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF3A96D0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              maxLines: 4,
                                              validator: _model
                                                  .textFieldBookingControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: ExpandableNotifier(
                                    controller: _model.expandableController2,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Are cleaning services provided?',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      collapsed: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            indent: 15.0,
                                            endIndent: 15.0,
                                          ),
                                        ],
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 20.0, 8.0, 20.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldCleaningController,
                                              focusNode: _model
                                                  .textFieldCleaningFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              textInputAction:
                                                  TextInputAction.next,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintText:
                                                    'Enter your response below',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF3A96D0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              maxLines: 4,
                                              validator: _model
                                                  .textFieldCleaningControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: ExpandableNotifier(
                                    controller: _model.expandableController3,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Is parking available for residents?',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      collapsed: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            indent: 15.0,
                                            endIndent: 15.0,
                                          ),
                                        ],
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 20.0, 8.0, 20.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldParkingController,
                                              focusNode: _model
                                                  .textFieldParkingFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              textInputAction:
                                                  TextInputAction.next,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintText:
                                                    'Enter your response below',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF3A96D0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              maxLines: 4,
                                              validator: _model
                                                  .textFieldParkingControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: ExpandableNotifier(
                                    controller: _model.expandableController4,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Additional Info',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      collapsed: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            indent: 15.0,
                                            endIndent: 15.0,
                                          ),
                                        ],
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 20.0, 8.0, 20.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldAdditionalController,
                                              focusNode: _model
                                                  .textFieldAdditionalFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              textInputAction:
                                                  TextInputAction.next,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintText:
                                                    'Enter your response below',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF3A96D0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              maxLines: 4,
                                              validator: _model
                                                  .textFieldAdditionalControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: ExpandableNotifier(
                                    controller: _model.expandableController5,
                                    child: ExpandablePanel(
                                      header: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Cancellation Policy',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      collapsed: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            indent: 15.0,
                                            endIndent: 15.0,
                                          ),
                                        ],
                                      ),
                                      expanded: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 20.0, 8.0, 20.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldCancellationController,
                                              focusNode: _model
                                                  .textFieldCancellationFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              textInputAction:
                                                  TextInputAction.done,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintText:
                                                    'Enter your response below',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF3A96D0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              maxLines: 4,
                                              validator: _model
                                                  .textFieldCancellationControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.upload_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      size: 45.0,
                                    ),
                                  ),
                                  Text(
                                    'Drag or upload your video',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
                                    child: Text(
                                      'Your video will be shown on your listings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 12.0,
                                          ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Browse',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Colors.white,
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 50.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 0.5,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      child: Text(
                                        'or',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 0.5,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 35.0,
                                          fillColor: const Color(0xFF3A96D0),
                                          icon: const Icon(
                                            Icons.play_arrow_sharp,
                                            color: Colors.white,
                                            size: 19.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller: _model.textController12,
                                            focusNode:
                                                _model.textFieldFocusNode2,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              hintText:
                                                  'Enter video source url or YouTube link',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .textController12Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey6,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 25.0, 25.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Text(
                                            'Create your title',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 26.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Time to tell your potential tenants about how incredible your place is. Give your listing a title, and a description.\n',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                allowPhoto: true,
                                                includeBlurHash: true,
                                                textColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading4 = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  showUploadMessage(
                                                    context,
                                                    'Uploading file...',
                                                    showLoading: true,
                                                  );
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  ScaffoldMessenger.of(context)
                                                      .hideCurrentSnackBar();
                                                  _model.isDataUploading4 =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile4 =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl4 =
                                                        downloadUrls.first;
                                                  });
                                                  showUploadMessage(
                                                      context, 'Success!');
                                                } else {
                                                  setState(() {});
                                                  showUploadMessage(context,
                                                      'Failed to upload data');
                                                  return;
                                                }
                                              }
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 250.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    _model.uploadedFileUrl4,
                                                  ).image,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                              child: Visibility(
                                                visible: _model.uploadedFileUrl4 ==
                                                        '',
                                                child: Icon(
                                                  FFIcons.kaddCircle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 20.0, 15.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldCompanyNameController,
                                            focusNode: _model
                                                .textFieldCompanyNameFocusNode,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Company Name',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            minLines: 1,
                                            validator: _model
                                                .textFieldCompanyNameControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldListingNameController,
                                            focusNode: _model
                                                .textFieldListingNameFocusNode,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Add Your Listing Name',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            maxLines: 2,
                                            validator: _model
                                                .textFieldListingNameControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 50.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldDescriptionController,
                                            focusNode: _model
                                                .textFieldDescriptionFocusNode,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Share a little about your property',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            maxLines: 7,
                                            validator: _model
                                                .textFieldDescriptionControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25.0, 30.0, 25.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await _model.pageViewController?.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      child: Text(
                        'Back',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              fontSize: 18.0,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.pageViewCurrentIndex < 11) {
                          return Builder(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                if (_model.pageViewCurrentIndex == 0) {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 1) {
                                  if (_model.formKey2.currentState == null ||
                                      !_model.formKey2.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if ((_model.uploadedLocalFile1.bytes ?? [])
                                          .isEmpty) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: const ErrorSnackWidget(
                                                message: 'Logo is required!',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 2) {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 3) {
                                  if (_model.formKey5.currentState == null ||
                                      !_model.formKey5.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 4) {
                                  if (_model.formKey1.currentState == null ||
                                      !_model.formKey1.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.datePicked == null) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: const ErrorSnackWidget(
                                                message: 'Select date!',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    return;
                                  }
                                  if (_model.dropDownVarsityValue == null) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: const ErrorSnackWidget(
                                                message: 'Information missing',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 5) {
                                  if (FFAppState().addMyRooms.isEmpty) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: const ErrorSnackWidget(
                                                message: 'Room trype missing',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    return;
                                  } else {
                                    await _model.pageViewController?.nextPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                    return;
                                  }
                                } else if (_model.pageViewCurrentIndex == 6) {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 7) {
                                  if (_model.formKey7.currentState == null ||
                                      !_model.formKey7.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 8) {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 9) {
                                  if (_model.formKey4.currentState == null ||
                                      !_model.formKey4.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 10) {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else if (_model.pageViewCurrentIndex == 11) {
                                  if (_model.formKey6.currentState == null ||
                                      !_model.formKey6.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                } else {
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  return;
                                }
                              },
                              text: 'Continue',
                              options: FFButtonOptions(
                                width: 180.0,
                                height: 45.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                    ),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          );
                        } else {
                          return FFButtonWidget(
                            onPressed: () async {
                              await AccomodationsRecord.collection.doc().set({
                                ...createAccomodationsRecordData(
                                  name: _model
                                      .textFieldListingNameController.text,
                                  accomodationDescription: _model
                                      .textFieldDescriptionController.text,
                                  header: _model.uploadedFileUrl4,
                                  address: createAddressStruct(
                                    streetName: _model.placePickerValue.name != ''
                                        ? _model.placePickerValue.name
                                        : FFAppState()
                                            .selectedAddresss
                                            .streetName,
                                    city: _model.placePickerValue.city != ''
                                        ? _model.placePickerValue.city
                                        : FFAppState().selectedAddresss.city,
                                    country: _model.placePickerValue.country !=
                                                ''
                                        ? _model.placePickerValue.country
                                        : FFAppState().selectedAddresss.country,
                                    name: _model.placePickerValue.address !=
                                                ''
                                        ? _model.placePickerValue.address
                                        : FFAppState()
                                            .selectedAddresss
                                            .fullAddress,
                                    province: _model.placePickerValue.state != ''
                                        ? _model.placePickerValue.state
                                        : FFAppState()
                                            .selectedAddresss
                                            .province,
                                    zip: _model.placePickerValue.zipCode !=
                                                ''
                                        ? _model.placePickerValue.zipCode
                                        : FFAppState()
                                            .selectedAddresss
                                            .postalCode,
                                    latlong:
                                        _model.placePickerValue.latLng ?? FFAppState()
                                                .selectedAddresss
                                                .location,
                                    clearUnsetFields: false,
                                    create: true,
                                  ),
                                  management: createManagementStruct(
                                    name: currentUserDocument
                                        ?.personal.fullnames,
                                    number: currentPhoneNumber,
                                    email: currentUserEmail,
                                    adminRef: currentUserReference,
                                    company: _model
                                        .textFieldCompanyNameController.text,
                                    admin: currentUserReference,
                                    clearUnsetFields: false,
                                    create: true,
                                  ),
                                  created: getCurrentTimestamp,
                                  nsfas: _model.switchNsfasValue,
                                  mainCampus: createCampusStruct(
                                    name: _model.dropDownVarsityValue,
                                    clearUnsetFields: false,
                                    create: true,
                                  ),
                                  logo: _model.uploadedFileUrl1,
                                  promoted: false,
                                  promVideo: _model.textController12.text,
                                  faq: createFaqStruct(
                                    howToBook:
                                        _model.textFieldBookingController.text,
                                    cleaningServices:
                                        _model.textFieldCleaningController.text,
                                    parkingAvailable:
                                        _model.textFieldParkingController.text,
                                    additionalInfo: _model
                                        .textFieldAdditionalController.text,
                                    cancellationPolicy: _model
                                        .textFieldCancellationController.text,
                                    clearUnsetFields: false,
                                    create: true,
                                  ),
                                  totalRoomsNumber: _model
                                      .countControllertotalNumberValue
                                      ?.toString(),
                                  listingType: _model.choiceChipsListingValue,
                                  availableFrom: _model.datePicked,
                                  bookingFee:
                                      _model.textFieldPBookingController.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'room_types': getRoomTypesListFirestoreData(
                                      FFAppState().addMyRooms,
                                    ),
                                    'rules': _model.checkboxGroupRulesValues,
                                    'amenities':
                                        _model.choiceChipsAmenitiesValues,
                                    'all_images': _model.uploadedFileUrls3,
                                  },
                                ),
                              });

                              context.pushNamed(
                                'mainPage',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 180.0,
                              height: 45.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF3A96D0),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                  ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
