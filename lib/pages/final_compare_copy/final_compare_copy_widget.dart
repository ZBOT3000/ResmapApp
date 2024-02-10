import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'final_compare_copy_model.dart';
export 'final_compare_copy_model.dart';

class FinalCompareCopyWidget extends StatefulWidget {
  const FinalCompareCopyWidget({
    super.key,
    this.subject,
    this.comparable,
  });

  final DocumentReference? subject;
  final DocumentReference? comparable;

  @override
  State<FinalCompareCopyWidget> createState() => _FinalCompareCopyWidgetState();
}

class _FinalCompareCopyWidgetState extends State<FinalCompareCopyWidget> {
  late FinalCompareCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalCompareCopyModel());

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

    return StreamBuilder<AccomodationsRecord>(
      stream: AccomodationsRecord.getDocument(widget.subject!),
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
        final finalCompareCopyAccomodationsRecord = snapshot.data!;
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
                    leading: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 28.0,
                      ),
                    ),
                    title: Text(
                      'Comparison',
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    actions: const [],
                    centerTitle: true,
                    elevation: 0.0,
                  )
                : null,
            body: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: StreamBuilder<AccomodationsRecord>(
                stream: AccomodationsRecord.getDocument(widget.comparable!),
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
                  final columnAccomodationsRecord = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
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
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  finalCompareCopyAccomodationsRecord
                                                      .header,
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag:
                                                    finalCompareCopyAccomodationsRecord
                                                        .header,
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag:
                                              finalCompareCopyAccomodationsRecord
                                                  .header,
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              finalCompareCopyAccomodationsRecord
                                                  .header,
                                              width: double.infinity,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.2,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Text(
                                          finalCompareCopyAccomodationsRecord
                                              .management.company,
                                          textAlign: TextAlign.center,
                                          maxLines: 3,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
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
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  'https://images.unsplash.com/photo-1615874959474-d609969a20ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxiZWRyb29tfGVufDB8fHx8MTY5MDY4MjEyOXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: 'imageTag2',
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: 'imageTag2',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1615874959474-d609969a20ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxiZWRyb29tfGVufDB8fHx8MTY5MDY4MjEyOXww&ixlib=rb-4.0.3&q=80&w=1080',
                                              width: double.infinity,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.2,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Text(
                                          columnAccomodationsRecord
                                              .management.company,
                                          textAlign: TextAlign.center,
                                          maxLines: 3,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.normal,
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Book Now',
                                options: FFButtonOptions(
                                  height: 45.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF368DC5),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Book Now',
                                options: FFButtonOptions(
                                  height: 45.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF368DC5),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 15.0),
                            child: Text(
                              'Overview',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 350.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'Price',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    if (getRemoteConfigBool('address'))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Text(
                                          'Distance',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'Booking Fee',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'Total Rooms',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'Nsfas',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 245.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'R${finalCompareCopyAccomodationsRecord.roomTypes.first.roomPrice}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    if (getRemoteConfigBool('address'))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Text(
                                          '${functions.newCustomFunction(finalCompareCopyAccomodationsRecord.address.latlong, finalCompareCopyAccomodationsRecord.mainCampus.address)} km',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    if (getRemoteConfigBool('address'))
                                      Divider(
                                        height: 0.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'R500',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        '35',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (finalCompareCopyAccomodationsRecord
                                                .nsfas ==
                                            true) {
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              'Yes',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          );
                                        } else {
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              'No',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 245.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'R${columnAccomodationsRecord.roomTypes.first.roomPrice}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    if (getRemoteConfigBool('address'))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Text(
                                          '${functions.newCustomFunction(columnAccomodationsRecord.address.latlong, columnAccomodationsRecord.mainCampus.address)} km',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    if (getRemoteConfigBool('address'))
                                      Divider(
                                        height: 0.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        'R500',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Text(
                                        '40',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (columnAccomodationsRecord.nsfas ==
                                            true) {
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              'Yes',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          );
                                        } else {
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              'No',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 245.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(height: 20.0)),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
