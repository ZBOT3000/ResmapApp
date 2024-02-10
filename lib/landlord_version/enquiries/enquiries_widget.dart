import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/empty_states/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/landlord_version/other_landlord_comp/main_menu/main_menu_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'enquiries_model.dart';
export 'enquiries_model.dart';

class EnquiriesWidget extends StatefulWidget {
  const EnquiriesWidget({super.key});

  @override
  State<EnquiriesWidget> createState() => _EnquiriesWidgetState();
}

class _EnquiriesWidgetState extends State<EnquiriesWidget> {
  late EnquiriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnquiriesModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return StreamBuilder<List<AccomodationsRecord>>(
      stream: queryAccomodationsRecord(
        queryBuilder: (accomodationsRecord) => accomodationsRecord.where(
          'management.admin_ref',
          isEqualTo: currentUserReference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitThreeBounce(
                  color: Color(0xFF368DC5),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AccomodationsRecord> enquiriesAccomodationsRecordList =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 100.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 0.0, 20.0),
                                    child: Text(
                                      'Inbox',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Text(
                                          'Message...',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        )),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.right,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: const Duration(milliseconds: 80),
                                    showDuration: const Duration(milliseconds: 200),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: SystemMouseCursors.click ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered1 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered1 = false);
                                      }),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('message');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                FFIcons.kmessages3Copy,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Text(
                                          'Enquiries',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        )),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.right,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: const Duration(milliseconds: 80),
                                    showDuration: const Duration(milliseconds: 200),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: SystemMouseCursors.click ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered2 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered2 = false);
                                      }),
                                      child: const Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              FFIcons.kmessageQuestionCopy,
                                              color: Color(0xFF3992CB),
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  AlignedTooltip(
                                    content: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Text(
                                          'Archive',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        )),
                                    offset: 4.0,
                                    preferredDirection: AxisDirection.right,
                                    borderRadius: BorderRadius.circular(8.0),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    elevation: 4.0,
                                    tailBaseWidth: 24.0,
                                    tailLength: 12.0,
                                    waitDuration: const Duration(milliseconds: 100),
                                    showDuration: const Duration(milliseconds: 200),
                                    triggerMode: TooltipTriggerMode.tap,
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: SystemMouseCursors.click ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered3 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered3 = false);
                                      }),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.archive_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -0.85),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '',
                                    icon: const Icon(
                                      FFIcons.ksend2Copy,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 45.0,
                                      height: 45.0,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.transparent,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        VerticalDivider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      Expanded(
                        flex: 17,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 25.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      const Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [],
                                        ),
                                      ),
                                    Container(
                                      width: 150.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AlignedTooltip(
                                              content: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    'Menu',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge,
                                                  )),
                                              offset: 4.0,
                                              preferredDirection:
                                                  AxisDirection.down,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 4.0,
                                              tailBaseWidth: 24.0,
                                              tailLength: 12.0,
                                              waitDuration:
                                                  const Duration(milliseconds: 100),
                                              showDuration:
                                                  const Duration(milliseconds: 1500),
                                              triggerMode:
                                                  TooltipTriggerMode.tap,
                                              child: Builder(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showDialog(
                                                      barrierColor:
                                                          const Color(0x0B000000),
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  0.8, -0.3)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child:
                                                                  const MainMenuWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Icon(
                                                    Icons.menu,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                            currentUserPhoto,
                                                            'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                          ),
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag: valueOrDefault<
                                                            String>(
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
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: Container(
                                                    width: 45.0,
                                                    height: 45.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        currentUserPhoto,
                                                        'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
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
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent4,
                                ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Search enquiries',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    suffixIcon: const Icon(
                                      FFIcons.ksearchNormal1Copy,
                                      size: 16.0,
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 0.0, 20.0),
                                  child: FlutterFlowChoiceChips(
                                    options: const [
                                      ChipData('Approved'),
                                      ChipData('Pending'),
                                      ChipData('Rejected')
                                    ],
                                    onChanged: (val) => setState(() =>
                                        _model.choiceChipsValue = val?.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: const Color(0xFF3891CA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconSize: 18.0,
                                      labelPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10.0, 5.0, 10.0, 5.0),
                                      elevation: 0.0,
                                      borderColor: Colors.transparent,
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.transparent,
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
                                      labelPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10.0, 5.0, 10.0, 5.0),
                                      elevation: 0.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    chipSpacing: 12.0,
                                    rowSpacing: 12.0,
                                    multiselect: false,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                      [],
                                    ),
                                    wrapped: true,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 25.0, 0.0, 0.0),
                                  child: StreamBuilder<List<EnquiriesRecord>>(
                                    stream: queryEnquiriesRecord(
                                      queryBuilder: (enquiriesRecord) =>
                                          enquiriesRecord
                                              .where(
                                                'status',
                                                isEqualTo: _model
                                                            .choiceChipsValue !=
                                                        ''
                                                    ? _model.choiceChipsValue
                                                    : null,
                                              )
                                              .where(
                                                'tenant',
                                                isEqualTo: currentUserReference,
                                              ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitThreeBounce(
                                              color: Color(0xFF368DC5),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<EnquiriesRecord>
                                          textEnquiriesRecordList =
                                          snapshot.data!;
                                      return Text(
                                        'Active enquiries (${textEnquiriesRecordList.where((e) => e.status == 'Approved').toList().length.toString()})',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: PagedListView<DocumentSnapshot<Object?>?,
                                    EnquiriesRecord>.separated(
                                  pagingController:
                                      _model.setListViewController(
                                    EnquiriesRecord.collection
                                        .where(
                                          'status',
                                          isEqualTo:
                                              _model.choiceChipsValue != ''
                                                  ? _model.choiceChipsValue
                                                  : null,
                                        )
                                        .where(
                                          'tenant',
                                          isEqualTo: currentUserReference,
                                        ),
                                  ),
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  reverse: false,
                                  scrollDirection: Axis.vertical,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 6.0),
                                  builderDelegate: PagedChildBuilderDelegate<
                                      EnquiriesRecord>(
                                    // Customize what your widget looks like when it's loading the first page.
                                    firstPageProgressIndicatorBuilder: (_) =>
                                        const Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitThreeBounce(
                                          color: Color(0xFF368DC5),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    // Customize what your widget looks like when it's loading another page.
                                    newPageProgressIndicatorBuilder: (_) =>
                                        const Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitThreeBounce(
                                          color: Color(0xFF368DC5),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    noItemsFoundIndicatorBuilder: (_) =>
                                        const EmptyStateWidget(
                                      message: 'You have no enquiries',
                                      sub:
                                          'All enquiries to your listings will be displayed here',
                                    ),
                                    itemBuilder: (context, _, listViewIndex) {
                                      final listViewEnquiriesRecord = _model
                                          .listViewPagingController!
                                          .itemList![listViewIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 15.0, 10.0, 15.0),
                                                child: StreamBuilder<
                                                    AccomodationsRecord>(
                                                  stream: AccomodationsRecord
                                                      .getDocument(
                                                          listViewEnquiriesRecord
                                                              .listing!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return const Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitThreeBounce(
                                                            color: Color(
                                                                0xFF368DC5),
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final rowAccomodationsRecord =
                                                        snapshot.data!;
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'enquiriesExp',
                                                          queryParameters: {
                                                            'listingExp':
                                                                serializeParam(
                                                              rowAccomodationsRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                            'enqExp':
                                                                serializeParam(
                                                              listViewEnquiriesRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'listingExp':
                                                                rowAccomodationsRecord,
                                                            'enqExp':
                                                                listViewEnquiriesRecord,
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewEnquiriesRecord
                                                                            .tenant!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                SpinKitThreeBounce(
                                                                              color: Color(0xFF368DC5),
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final rowUsersRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: rowUsersRecord.personal.fullnames,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Open Sans',
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                      const TextSpan(
                                                                                        text: ' has enquired about  your ',
                                                                                        style: TextStyle(),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: rowAccomodationsRecord.name,
                                                                                        style: const TextStyle(),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Open Sans',
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          dateTimeFormat(
                                                                              'relative',
                                                                              listViewEnquiriesRecord.timeBooked!),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Open Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          FFButtonWidget(
                                                                            onPressed: (listViewEnquiriesRecord.status == 'Approved')
                                                                                ? null
                                                                                : () async {
                                                                                    await listViewEnquiriesRecord.reference.update(createEnquiriesRecordData(
                                                                                      statusListing: Status.approved,
                                                                                    ));
                                                                                  },
                                                                            text:
                                                                                'APPROVE',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 75.0,
                                                                              height: 35.0,
                                                                              padding: const EdgeInsets.all(0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).customColor1,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Open Sans',
                                                                                    color: Colors.white,
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              disabledColor: FlutterFlowTheme.of(context).textFill,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: (listViewEnquiriesRecord.status == 'Rejected')
                                                                                  ? null
                                                                                  : () async {
                                                                                      await listViewEnquiriesRecord.reference.update(createEnquiriesRecordData(
                                                                                        statusListing: Status.rejected,
                                                                                      ));
                                                                                    },
                                                                              text: 'REJECT',
                                                                              options: FFButtonOptions(
                                                                                width: 75.0,
                                                                                height: 40.0,
                                                                                padding: const EdgeInsets.all(0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).accent4,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Open Sans',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                disabledTextColor: FlutterFlowTheme.of(context).textFill,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              FFIcons.khomeCopy,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
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
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: Colors.transparent,
                            icon: const Icon(
                              FFIcons.kcalendar1Copy,
                              color: Color(0xFF368DC5),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              FFIcons.kmessagesCopy,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'adminMessages',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              FFIcons.kuserCopy,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'landlordSettings',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
