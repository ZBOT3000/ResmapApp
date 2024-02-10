import '/backend/backend.dart';
import '/empty_states/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'bookmark_page_model.dart';
export 'bookmark_page_model.dart';

class BookmarkPageWidget extends StatefulWidget {
  const BookmarkPageWidget({super.key});

  @override
  State<BookmarkPageWidget> createState() => _BookmarkPageWidgetState();
}

class _BookmarkPageWidgetState extends State<BookmarkPageWidget> {
  late BookmarkPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkPageModel());

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
                title: Text(
                  'Bookmarks',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
          child: Builder(
            builder: (context) {
              final favsItem = FFAppState()
                  .favs
                  .where((e) => FFAppState().favs.contains(e))
                  .toList();
              if (favsItem.isEmpty) {
                return const EmptyStateWidget(
                  message: 'Create your bookmarks',
                  sub:
                      'Add your favourite listings here to come and check out later!',
                );
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(favsItem.length, (favsItemIndex) {
                  final favsItemItem = favsItem[favsItemIndex];
                  return Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: StreamBuilder<AccomodationsRecord>(
                      stream: AccomodationsRecord.getDocument(favsItemItem),
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
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'homePageExpanded',
                              queryParameters: {
                                'expandedAccomodation': serializeParam(
                                  columnAccomodationsRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'expandedAccomodation':
                                    columnAccomodationsRecord,
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Container(
                                            width: 55.0,
                                            height: 55.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              columnAccomodationsRecord.logo,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  columnAccomodationsRecord
                                                      .name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                AutoSizeText(
                                                  columnAccomodationsRecord
                                                      .address.streetName,
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (!FFAppState()
                                            .favs
                                            .contains(favsItemItem))
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: Icon(
                                              FFIcons.kheartCopy,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 25.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        if (FFAppState()
                                            .favs
                                            .contains(favsItemItem))
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: const Icon(
                                              FFIcons.kheart,
                                              color: Color(0xFFC80E00),
                                              size: 25.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState().removeFromFavs(
                                                    columnAccomodationsRecord
                                                        .reference);
                                              });
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 10.0))
                                .around(const SizedBox(height: 10.0)),
                          ),
                        );
                      },
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
