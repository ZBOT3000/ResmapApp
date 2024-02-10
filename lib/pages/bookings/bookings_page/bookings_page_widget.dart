import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_states/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'bookings_page_model.dart';
export 'bookings_page_model.dart';

class BookingsPageWidget extends StatefulWidget {
  const BookingsPageWidget({super.key});

  @override
  State<BookingsPageWidget> createState() => _BookingsPageWidgetState();
}

class _BookingsPageWidgetState extends State<BookingsPageWidget> {
  late BookingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingsPageModel());

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
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enquiries',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 16.0,
                          ),
                    ),
                  ],
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: FlutterFlowChoiceChips(
                            options: const [
                              ChipData('ALL'),
                              ChipData('Pending'),
                              ChipData('Rejected'),
                              ChipData('Approved')
                            ],
                            onChanged: (val) => setState(
                                () => _model.choiceChipsValue = val?.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).error,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 3.0, 10.0, 3.0),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
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
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 18.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 3.0, 10.0, 3.0),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 12.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
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
                Container(
                  width: double.infinity,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Residence',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Status',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: StreamBuilder<List<EnquiriesRecord>>(
                      stream: queryEnquiriesRecord(
                        queryBuilder: (enquiriesRecord) => enquiriesRecord
                            .where(
                              'tenant',
                              isEqualTo: currentUserReference,
                            )
                            .where(
                              'status',
                              isEqualTo: _model.choiceChipsValue,
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
                        List<EnquiriesRecord> columnEnquiriesRecordList =
                            snapshot.data!;
                        if (columnEnquiriesRecordList.isEmpty) {
                          return const EmptyStateWidget(
                            message: 'You have no enquiries',
                            sub: 'All your new enquiries will be shown below',
                          );
                        }
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:
                                List.generate(columnEnquiriesRecordList.length,
                                        (columnIndex) {
                              final columnEnquiriesRecord =
                                  columnEnquiriesRecordList[columnIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 15.0, 10.0, 15.0),
                                    child: StreamBuilder<AccomodationsRecord>(
                                      stream: AccomodationsRecord.getDocument(
                                          columnEnquiriesRecord.listing!),
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
                                        final rowAccomodationsRecord =
                                            snapshot.data!;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'expandEnquiries',
                                              queryParameters: {
                                                'listingExp': serializeParam(
                                                  rowAccomodationsRecord,
                                                  ParamType.Document,
                                                ),
                                                'enqExp': serializeParam(
                                                  columnEnquiriesRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'listingExp':
                                                    rowAccomodationsRecord,
                                                'enqExp': columnEnquiriesRecord,
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 45.0,
                                                height: 45.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  rowAccomodationsRecord.logo,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          rowAccomodationsRecord
                                                              .management
                                                              .company,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 15.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      if (columnEnquiriesRecord
                                                              .status ==
                                                          'Rejected') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .error;
                                                      } else if (columnEnquiriesRecord
                                                              .status ==
                                                          'Approved') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .success;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .warning;
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  15.0,
                                                                  5.0),
                                                      child: Text(
                                                        columnEnquiriesRecord
                                                            .status,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Open Sans',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            })
                                    .divide(const SizedBox(height: 10.0))
                                    .around(const SizedBox(height: 10.0)),
                          ),
                        );
                      },
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
