import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_chats_model.dart';
export 'view_chats_model.dart';

class ViewChatsWidget extends StatefulWidget {
  const ViewChatsWidget({
    super.key,
    this.chatUser,
    this.chatRef,
    this.newChatUser,
  });

  final UsersRecord? chatUser;
  final DocumentReference? chatRef;
  final AccomodationsRecord? newChatUser;

  @override
  State<ViewChatsWidget> createState() => _ViewChatsWidgetState();
}

class _ViewChatsWidgetState extends State<ViewChatsWidget> {
  late ViewChatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewChatsModel());

    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, _) => [
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget.newChatUser?.logo,
                        'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              actions: const [],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(85.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        widget.newChatUser!.management.company,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 55.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF368DC5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Text(
                                  widget.newChatUser!.name.maybeHandleOverflow(
                                    maxChars: 20,
                                    replacement: '…',
                                  ),
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'homePageExpanded',
                                  queryParameters: {
                                    'expandedAccomodation': serializeParam(
                                      widget.newChatUser,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'expandedAccomodation': widget.newChatUser,
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Text(
                                'View Details',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
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
              centerTitle: true,
              elevation: 0.0,
            )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              top: false,
              child: StreamBuilder<FFChatInfo>(
                stream: FFChatManager.instance.getChatInfo(
                  otherUserRecord: widget.chatUser,
                  chatReference: widget.chatRef,
                ),
                builder: (context, snapshot) => snapshot.hasData
                    ? FFChatPage(
                        chatInfo: snapshot.data!,
                        allowImages: true,
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                        currentUserBoxDecoration: BoxDecoration(
                          color: const Color(0xFF368DC5),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        otherUsersBoxDecoration: BoxDecoration(
                          color: const Color(0xFF1C2025),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        currentUserTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                        ),
                        otherUsersTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                        inputHintTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: const Color(0xFF95A1AC),
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                        inputTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                        emptyChatWidget: Image.asset(
                          'assets/images/messagesEmpty@2x.png',
                          width: MediaQuery.sizeOf(context).width * 0.76,
                        ),
                      )
                    : const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitThreeBounce(
                            color: Color(0xFF368DC5),
                            size: 50.0,
                          ),
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
