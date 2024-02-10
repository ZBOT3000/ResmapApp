import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'test_message_model.dart';
export 'test_message_model.dart';

class TestMessageWidget extends StatefulWidget {
  const TestMessageWidget({
    super.key,
    this.chat,
    this.users,
  });

  final DocumentReference? chat;
  final UsersRecord? users;

  @override
  State<TestMessageWidget> createState() => _TestMessageWidgetState();
}

class _TestMessageWidgetState extends State<TestMessageWidget> {
  late TestMessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestMessageModel());

    _model.messageController ??= TextEditingController();
    _model.messageFocusNode ??= FocusNode();

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
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: Colors.transparent,
                  icon: Icon(
                    FFIcons.karrowBackOutline,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                title: Text(
                  'Message',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 100.0),
                child: StreamBuilder<List<ChatMessagesRecord>>(
                  stream: queryChatMessagesRecord(
                    queryBuilder: (chatMessagesRecord) => chatMessagesRecord
                        .where(
                          'chat',
                          isEqualTo: widget.chat,
                        )
                        .orderBy('timestamp', descending: true),
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
                    List<ChatMessagesRecord> messageChatMessagesRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      reverse: true,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: messageChatMessagesRecordList.length,
                      itemBuilder: (context, messageIndex) {
                        final messageChatMessagesRecord =
                            messageChatMessagesRecordList[messageIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (messageChatMessagesRecord.user ==
                                currentUserReference)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.65,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF368DC5),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                10.0,
                                                                12.0,
                                                                10.0),
                                                    child: Text(
                                                      messageChatMessagesRecord
                                                          .text,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            color: Colors.white,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            lineHeight: 1.5,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 10.0, 6.0, 10.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'Hm',
                                                      messageChatMessagesRecord
                                                          .timestamp!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Icon(
                                                  FFIcons.kdoneAllOutline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
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
                            if (messageChatMessagesRecord.user !=
                                currentUserReference)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 25.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 25.0,
                                                      height: 25.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            minWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.2,
                                                            maxWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.65,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFF6F6F6),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Text(
                                                                    messageChatMessagesRecord
                                                                        .text,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              15.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        10.0,
                                                                        16.0,
                                                                        10.0),
                                                                child: Text(
                                                                  dateTimeFormat(
                                                                      'Hm',
                                                                      messageChatMessagesRecord
                                                                          .timestamp!),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 6.0, 10.0, 6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 45.0,
                                  borderWidth: 1.0,
                                  buttonSize: 35.0,
                                  fillColor: const Color(0xFF368DC5),
                                  icon: const Icon(
                                    FFIcons.kcameraCopy,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  onPressed: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                      allowVideo: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(1.0, 1.0),
                                      children: [
                                        Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: TextFormField(
                                            controller:
                                                _model.messageController,
                                            focusNode: _model.messageFocusNode,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Message...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00DADADA),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 55.0, 8.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.normal,
                                                  lineHeight: 1.5,
                                                ),
                                            maxLines: 5,
                                            minLines: 1,
                                            validator: _model
                                                .messageControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                StreamBuilder<ChatsRecord>(
                                  stream: ChatsRecord.getDocument(widget.chat!),
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
                                    final iconButtonChatsRecord =
                                        snapshot.data!;
                                    return FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 45.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: Colors.transparent,
                                      icon: const Icon(
                                        FFIcons.ksend1,
                                        color: Color(0xFF368DC5),
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        final firestoreBatch =
                                            FirebaseFirestore.instance.batch();
                                        try {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }

                                          var chatMessagesRecordReference =
                                              ChatMessagesRecord.collection
                                                  .doc();
                                          firestoreBatch.set(
                                              chatMessagesRecordReference,
                                              createChatMessagesRecordData(
                                                user: currentUserReference,
                                                chat: widget.chat,
                                                text: _model
                                                    .messageController.text,
                                                timestamp: getCurrentTimestamp,
                                              ));
                                          _model.message = ChatMessagesRecord
                                              .getDocumentFromData(
                                                  createChatMessagesRecordData(
                                                    user: currentUserReference,
                                                    chat: widget.chat,
                                                    text: _model
                                                        .messageController.text,
                                                    timestamp:
                                                        getCurrentTimestamp,
                                                  ),
                                                  chatMessagesRecordReference);

                                          firestoreBatch.update(widget.chat!, {
                                            ...createChatsRecordData(
                                              lastMessage:
                                                  _model.messageController.text,
                                              lastMessageTime:
                                                  getCurrentTimestamp,
                                              lastMessageSentBy:
                                                  currentUserReference,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'last_message_seen_by':
                                                    FieldValue.arrayRemove([
                                                  iconButtonChatsRecord.userA ==
                                                          currentUserReference
                                                      ? iconButtonChatsRecord
                                                          .userB
                                                      : iconButtonChatsRecord
                                                          .userA
                                                ]),
                                              },
                                            ),
                                          });
                                          setState(() {
                                            _model.messageController?.clear();
                                          });
                                        } finally {
                                          await firestoreBatch.commit();
                                        }

                                        setState(() {});
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
