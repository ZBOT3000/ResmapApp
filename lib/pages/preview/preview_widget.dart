import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/book_now/book_now_widget.dart';
import '/components/view_room_prices/view_room_prices_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'preview_model.dart';
export 'preview_model.dart';

class PreviewWidget extends StatefulWidget {
  const PreviewWidget({
    super.key,
    this.expandedAccomodation,
    this.expAcc,
  });

  final AccomodationsRecord? expandedAccomodation;
  final List<AccomodationsRecord>? expAcc;

  @override
  State<PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  late PreviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreviewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chatsUser = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord
            .where(
              'user_a',
              isEqualTo: widget.expandedAccomodation?.management.admin,
            )
            .where(
              'user_b',
              isEqualTo: currentUserReference,
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
    _model.expandableController6 = ExpandableController(initialExpanded: false);
    _model.expandableController7 = ExpandableController(initialExpanded: false);
    _model.expandableController8 = ExpandableController(initialExpanded: false);
    _model.expandableController9 = ExpandableController(initialExpanded: false);
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

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          )
              ? AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 25.0,
                        borderWidth: 1.0,
                        buttonSize: 45.0,
                        fillColor: FlutterFlowTheme.of(context).primaryText,
                        icon: Icon(
                          FFIcons.karrowBackOutline,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Text(
                        'Preview',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Text(
                        ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  actions: const [],
                  centerTitle: true,
                  elevation: 0.0,
                )
              : null,
          body: SizedBox(
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 85.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StyledDivider(
                          thickness: 0.3,
                          indent: 10.0,
                          endIndent: 10.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                          lineStyle: DividerLineStyle.dashed,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 20.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 25.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            FFIcons.kcalendarOutline,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: AutoSizeText(
                                                dateTimeFormat(
                                                    'yMMMd',
                                                    widget.expandedAccomodation!
                                                        .created!),
                                                textAlign: TextAlign.start,
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              FFIcons.kclipboardOutline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchUrl(Uri(
                                                      scheme: 'mailto',
                                                      path: widget
                                                          .expandedAccomodation!
                                                          .management
                                                          .email,
                                                    ));
                                                  },
                                                  child: Text(
                                                    widget.expandedAccomodation!
                                                        .management.email,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 10.0, 20.0),
                                          child: Text(
                                            'Available from ${dateTimeFormat('yMMMd', widget.expandedAccomodation?.availableFrom)}',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: const Color(0xFF3A96D0),
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
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
                                              image: Image.network(
                                                valueOrDefault<String>(
                                                  widget.expandedAccomodation
                                                      ?.logo,
                                                  'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: valueOrDefault<String>(
                                                widget
                                                    .expandedAccomodation?.logo,
                                                'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                              ),
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: valueOrDefault<String>(
                                          widget.expandedAccomodation?.logo,
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
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.logo,
                                              'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        widget.expandedAccomodation!.management
                                            .company,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 20.0, 10.0, 0.0),
                            child: Text(
                              widget.expandedAccomodation!.name,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 22.0,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 10.0, 20.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.expandedAccomodation?.listingType,
                                'student res',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FFIcons.kpinOutline,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await launchMap(
                                        location: widget.expandedAccomodation
                                            ?.address.latlong,
                                        title: 'Launch Address',
                                      );
                                    },
                                    child: AutoSizeText(
                                      '${widget.expandedAccomodation?.address.streetName}, ${widget.expandedAccomodation?.address.city}. ${widget.expandedAccomodation?.address.country}. ${widget.expandedAccomodation?.address.zip}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          indent: 15.0,
                          endIndent: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller: _model.expandableController1,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Room types',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  collapsed: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final types = widget
                                                .expandedAccomodation?.roomTypes
                                                .toList() ??
                                            [];
                                        return SizedBox(
                                          height: 300.0,
                                          child: CarouselSlider.builder(
                                            itemCount: types.length,
                                            itemBuilder:
                                                (context, typesIndex, _) {
                                              final typesItem =
                                                  types[typesIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        barrierColor:
                                                            const Color(0x00000000),
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
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
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    ViewRoomPricesWidget(
                                                                  test:
                                                                      typesItem,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        typesItem.roomPictures
                                                            .take(5)
                                                            .toList()
                                                            .first,
                                                        width: 350.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  15.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${typesItem.roomName} - R${typesItem.roomPrice}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                            carouselController:
                                                _model.carouselController ??=
                                                    CarouselController(),
                                            options: CarouselOptions(
                                              initialPage:
                                                  min(1, types.length - 1),
                                              viewportFraction: 0.5,
                                              disableCenter: true,
                                              enlargeCenterPage: true,
                                              enlargeFactor: 0.4,
                                              enableInfiniteScroll: false,
                                              scrollDirection: Axis.horizontal,
                                              autoPlay: false,
                                              onPageChanged: (index, _) =>
                                                  _model.carouselCurrentIndex =
                                                      index,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  expanded: Container(),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                child: ExpandableNotifier(
                                  controller: _model.expandableController2,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Amenities',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    collapsed: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 10.0),
                                        child: FlutterFlowChoiceChips(
                                          options: widget
                                              .expandedAccomodation!.amenities
                                              .map((label) => ChipData(label))
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue1 =
                                                  val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 2.0, 6.0, 2.0),
                                            elevation: 40.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .lineColor,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 18.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 2.0, 7.0, 2.0),
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .lineColor,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          chipSpacing: 12.0,
                                          rowSpacing: 12.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                    expanded: Container(),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              child: ExpandableNotifier(
                                controller: _model.expandableController3,
                                child: ExpandablePanel(
                                  header: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'House Rules',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  collapsed: Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 30.0),
                                      child: FlutterFlowChoiceChips(
                                        options: widget
                                            .expandedAccomodation!.rules
                                            .map((label) => ChipData(label))
                                            .toList(),
                                        onChanged: (val) => setState(() =>
                                            _model.choiceChipsValue2 =
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
                                                        .secondaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 18.0,
                                          labelPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 2.0, 6.0, 2.0),
                                          elevation: 40.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
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
                                          iconSize: 18.0,
                                          labelPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 2.0, 6.0, 2.0),
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        chipSpacing: 12.0,
                                        rowSpacing: 12.0,
                                        multiselect: false,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController2 ??=
                                            FormFieldController<List<String>>(
                                          [],
                                        ),
                                        wrapped: true,
                                      ),
                                    ),
                                  ),
                                  expanded: Container(),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              child: ExpandableNotifier(
                                controller: _model.expandableController4,
                                child: ExpandablePanel(
                                  header: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Location',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  collapsed: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 30.0, 15.0, 15.0),
                                    child: Container(
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Builder(builder: (context) {
                                        final googleMapMarker = widget
                                            .expandedAccomodation
                                            ?.address
                                            .latlong;
                                        return FlutterFlowGoogleMap(
                                          controller:
                                              _model.googleMapsController,
                                          onCameraIdle: (latLng) =>
                                              _model.googleMapsCenter = latLng,
                                          initialLocation:
                                              _model.googleMapsCenter ??= widget
                                                  .expandedAccomodation!
                                                  .address
                                                  .latlong!,
                                          markers: [
                                            if (googleMapMarker != null)
                                              FlutterFlowMarker(
                                                googleMapMarker.serialize(),
                                                googleMapMarker,
                                              ),
                                          ],
                                          markerColor: GoogleMarkerColor.violet,
                                          mapType: MapType.terrain,
                                          style: GoogleMapStyle.standard,
                                          initialZoom: 17.0,
                                          allowInteraction: false,
                                          allowZoom: false,
                                          showZoomControls: true,
                                          showLocation: false,
                                          showCompass: false,
                                          showMapToolbar: false,
                                          showTraffic: false,
                                          centerMapOnMarkerTap: true,
                                        );
                                      }),
                                    ),
                                  ),
                                  expanded: Container(),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.faq
                                                  .howToBook,
                                              'How to book a room.',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                                  controller: _model.expandableController6,
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
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.faq
                                                  .cleaningServices,
                                              'Yes/No',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                                  controller: _model.expandableController7,
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
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.faq
                                                  .parkingAvailable,
                                              'Yes/No',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                                  controller: _model.expandableController8,
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
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.faq
                                                  .additionalInfo,
                                              'Additional Info',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                                  controller: _model.expandableController9,
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
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.expandedAccomodation?.faq
                                                  .cancellationPolicy,
                                              'Policy',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 35.0, 0.0, 0.0),
                                child: Text(
                                  'More from ${widget.expandedAccomodation?.management.company}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 30.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowYoutubePlayer(
                                        url: valueOrDefault<String>(
                                          widget
                                              .expandedAccomodation?.promVideo,
                                          'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                                        ),
                                        width: 250.0,
                                        height: 180.0,
                                        autoPlay: false,
                                        looping: false,
                                        mute: true,
                                        showControls: true,
                                        showFullScreen: true,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final allImages = widget
                                                    .expandedAccomodation
                                                    ?.allImages
                                                    .toList() ??
                                                [];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  allImages.length,
                                                  (allImagesIndex) {
                                                final allImagesItem =
                                                    allImages[allImagesIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 14.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image:
                                                                Image.network(
                                                              allImagesItem,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: allImagesItem,
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: allImagesItem,
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        child: Image.network(
                                                          allImagesItem,
                                                          width: 200.0,
                                                          height: 180.0,
                                                          fit: BoxFit.cover,
                                                        ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: wrapWithModel(
                      model: _model.bookNowModel,
                      updateCallback: () => setState(() {}),
                      child: BookNowWidget(
                        myBooking: widget.expandedAccomodation,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
