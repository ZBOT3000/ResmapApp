import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/pdf_open/pdf_open_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'expand_enquiries_model.dart';
export 'expand_enquiries_model.dart';

class ExpandEnquiriesWidget extends StatefulWidget {
  const ExpandEnquiriesWidget({
    super.key,
    this.listingExp,
    this.enqExp,
  });

  final AccomodationsRecord? listingExp;
  final EnquiriesRecord? enqExp;

  @override
  State<ExpandEnquiriesWidget> createState() => _ExpandEnquiriesWidgetState();
}

class _ExpandEnquiriesWidgetState extends State<ExpandEnquiriesWidget>
    with TickerProviderStateMixin {
  late ExpandEnquiriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpandEnquiriesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.newCHAT = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord
            .where(
              'user_a',
              isEqualTo: widget.listingExp?.management.adminRef,
            )
            .where(
              'user_b',
              isEqualTo: currentUserReference,
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: Colors.transparent,
                  icon: Icon(
                    Icons.clear_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                title: Text(
                  widget.listingExp!.management.company,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 16.0,
                      ),
                ),
                actions: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.keyboard_control_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.0, 0),
                child: FlutterFlowButtonTabBar(
                  useToggleButtonStyle: false,
                  labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                  unselectedLabelStyle: const TextStyle(),
                  labelColor: Colors.white,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  backgroundColor: const Color(0xFF3992CB),
                  unselectedBackgroundColor:
                      FlutterFlowTheme.of(context).accent4,
                  borderColor: const Color(0xFF3992CB),
                  unselectedBorderColor: Colors.transparent,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  elevation: 0.0,
                  buttonMargin:
                      const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  padding: const EdgeInsets.all(4.0),
                  tabs: const [
                    Tab(
                      text: 'Details',
                    ),
                    Tab(
                      text: 'Attachments',
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}][i]();
                  },
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'About',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  widget.listingExp!.management.admin!),
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
                                final rowUsersRecord = snapshot.data!;
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'viewChats',
                                      queryParameters: {
                                        'chatUser': serializeParam(
                                          rowUsersRecord,
                                          ParamType.Document,
                                        ),
                                        'newChatUser': serializeParam(
                                          widget.listingExp,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'chatUser': rowUsersRecord,
                                        'newChatUser': widget.listingExp,
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 45.0,
                                        height: 45.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            widget.listingExp?.logo,
                                            'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.listingExp!.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 20.0,
                                                        ),
                                              ),
                                              Text(
                                                rowUsersRecord
                                                    .personal.idNumber,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 5.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'cancelEnquiry',
                                            queryParameters: {
                                              'listingExp': serializeParam(
                                                widget.listingExp,
                                                ParamType.Document,
                                              ),
                                              'enqExp': serializeParam(
                                                widget.enqExp,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'listingExp': widget.listingExp,
                                              'enqExp': widget.enqExp,
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        text: 'Cancel',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 15.0, 0.0, 0.0),
                                      child: StreamBuilder<UsersRecord>(
                                        stream: UsersRecord.getDocument(
                                            widget.enqExp!.tenant!),
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
                                          final buttonUsersRecord =
                                              snapshot.data!;
                                          return FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.newCHAT != null) {
                                                context.pushNamed(
                                                  'testMessage',
                                                  queryParameters: {
                                                    'chat': serializeParam(
                                                      _model.newCHAT?.reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                setState(() {
                                                  FFAppState().temppUser = [];
                                                });
                                                setState(() {
                                                  FFAppState().addToTemppUser(
                                                      widget
                                                          .listingExp!
                                                          .management
                                                          .adminRef!);
                                                });

                                                var chatsRecordReference =
                                                    ChatsRecord.collection
                                                        .doc();
                                                await chatsRecordReference.set({
                                                  ...createChatsRecordData(
                                                    userA: widget.listingExp
                                                        ?.management.adminRef,
                                                    userB: currentUserReference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'users': FFAppState()
                                                          .temppUser,
                                                    },
                                                  ),
                                                });
                                                _model.createdCHAT = ChatsRecord
                                                    .getDocumentFromData({
                                                  ...createChatsRecordData(
                                                    userA: widget.listingExp
                                                        ?.management.adminRef,
                                                    userB: currentUserReference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'users': FFAppState()
                                                          .temppUser,
                                                    },
                                                  ),
                                                }, chatsRecordReference);

                                                context.pushNamed(
                                                  'testMessage',
                                                  queryParameters: {
                                                    'chat': serializeParam(
                                                      _model.createdCHAT
                                                          ?.reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }

                                              setState(() {});
                                            },
                                            text: 'Message',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 50.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.transparent,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'Booking information',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Icon(
                                    FFIcons.ktimer1Copy,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Enquired ${dateTimeFormat('yMMMd', widget.listingExp?.created)}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      FFIcons.kstatusUpCopy,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Status',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      FFIcons.kcalendar1Copy,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    widget.enqExp!.leaseTerm,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      FFIcons.kmoneysCopy,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'R${widget.listingExp?.roomTypes.first.roomPrice}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'Additional notes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Text(
                              widget.enqExp!.notes,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            StyledDivider(
                              thickness: 0.5,
                              color: FlutterFlowTheme.of(context).lineColor,
                              lineStyle: DividerLineStyle.dashed,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.8,
                                            child: PdfOpenWidget(
                                              pdf1:
                                                  widget.enqExp?.docs.identity,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: ListTile(
                                leading: Icon(
                                  FFIcons.kdocumentText,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                title: Text(
                                  'ID Copy',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                subtitle: Text(
                                  '05:5718 PM June 23, 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: true,
                              ),
                            ),
                          ),
                          StyledDivider(
                            thickness: 0.5,
                            indent: 60.0,
                            endIndent: 30.0,
                            color: FlutterFlowTheme.of(context).lineColor,
                            lineStyle: DividerLineStyle.dashed,
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: PdfOpenWidget(
                                            pdf1: widget
                                                .enqExp?.docs.studentCard,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: ListTile(
                                leading: Icon(
                                  FFIcons.kdocumentText,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                title: Text(
                                  'Student Card',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                subtitle: Text(
                                  '05:5718 PM June 23, 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: true,
                              ),
                            ),
                          ),
                          StyledDivider(
                            thickness: 0.5,
                            indent: 60.0,
                            endIndent: 30.0,
                            color: FlutterFlowTheme.of(context).lineColor,
                            lineStyle: DividerLineStyle.dashed,
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: PdfOpenWidget(
                                            pdf1: widget
                                                .enqExp?.docs.registration,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: ListTile(
                                leading: Icon(
                                  FFIcons.kdocumentText,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                title: Text(
                                  'Proof of Registration',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                subtitle: Text(
                                  '05:5718 PM June 23, 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: true,
                              ),
                            ),
                          ),
                          StyledDivider(
                            thickness: 0.5,
                            indent: 60.0,
                            endIndent: 30.0,
                            color: FlutterFlowTheme.of(context).lineColor,
                            lineStyle: DividerLineStyle.dashed,
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: PdfOpenWidget(
                                            pdf1: widget.enqExp?.docs.funding,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: ListTile(
                                leading: Icon(
                                  FFIcons.kdocumentText,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                title: Text(
                                  'Proof of Funding',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                subtitle: Text(
                                  '05:5718 PM June 23, 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
