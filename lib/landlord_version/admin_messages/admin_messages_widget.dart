import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_states/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'admin_messages_model.dart';
export 'admin_messages_model.dart';

class AdminMessagesWidget extends StatefulWidget {
  const AdminMessagesWidget({
    super.key,
    this.list,
  });

  final AccomodationsRecord? list;

  @override
  State<AdminMessagesWidget> createState() => _AdminMessagesWidgetState();
}

class _AdminMessagesWidgetState extends State<AdminMessagesWidget> {
  late AdminMessagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMessagesModel());

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Inbox',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        FFIcons.kuserCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 25.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: StreamBuilder<List<ChatsRecord>>(
                      stream: queryChatsRecord(
                        queryBuilder: (chatsRecord) => chatsRecord
                            .where(
                              'users',
                              arrayContains: currentUserReference,
                            )
                            .orderBy('last_message_time', descending: true),
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
                        List<ChatsRecord> listViewChatsRecordList =
                            snapshot.data!;
                        if (listViewChatsRecordList.isEmpty) {
                          return SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            child: const EmptyStateWidget(
                              message: 'You have no new messages',
                              sub:
                                  'When you enquire with the landlord or send messages, you\'ll see your messages here',
                            ),
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewChatsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewChatsRecord =
                                listViewChatsRecordList[listViewIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 15.0),
                              child: StreamBuilder<UsersRecord>(
                                stream: UsersRecord.getDocument(
                                    listViewChatsRecord.lastMessageSentBy ==
                                            currentUserReference
                                        ? listViewChatsRecord.userB!
                                        : listViewChatsRecord.userA!),
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
                                        'testMessage',
                                        queryParameters: {
                                          'chat': serializeParam(
                                            listViewChatsRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                          'users': serializeParam(
                                            rowUsersRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'users': rowUsersRecord,
                                        },
                                      );
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          alignment: const AlignmentDirectional(
                                              0.8999999999999999,
                                              0.8500000000000001),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width: 45.0,
                                                  height: 45.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: const Duration(
                                                        milliseconds: 500),
                                                    fadeOutDuration: const Duration(
                                                        milliseconds: 500),
                                                    imageUrl:
                                                        valueOrDefault<String>(
                                                      currentUserPhoto,
                                                      'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: AutoSizeText(
                                                        rowUsersRecord
                                                            .personal.fullnames,
                                                        maxLines: 1,
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
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: AutoSizeText(
                                                        dateTimeFormat(
                                                            'relative',
                                                            listViewChatsRecord
                                                                .lastMessageTime!),
                                                        maxLines: 1,
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
                                                                      10.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    if (listViewChatsRecord
                                                            .lastMessageSentBy ==
                                                        currentUserReference)
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.done_all_sharp,
                                                          color:
                                                              Color(0xFF303030),
                                                          size: 14.0,
                                                        ),
                                                      ),
                                                    Expanded(
                                                      child: AutoSizeText(
                                                        listViewChatsRecord
                                                            .lastMessage
                                                            .maybeHandleOverflow(
                                                          maxChars: 80,
                                                          replacement: '…',
                                                        ),
                                                        maxLines: 2,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ],
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
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 15.0),
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
                        context.pushNamed('mainPage');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      fillColor: Colors.transparent,
                      icon: Icon(
                        FFIcons.kcalendar1Copy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('enquiries');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      fillColor: Colors.transparent,
                      icon: const Icon(
                        FFIcons.kmessagesCopy,
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
          ],
        ),
      ),
    );
  }
}
