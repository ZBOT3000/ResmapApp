import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/help_info/help_info_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'settings_page_model.dart';
export 'settings_page_model.dart';

class SettingsPageWidget extends StatefulWidget {
  const SettingsPageWidget({super.key});

  @override
  State<SettingsPageWidget> createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  late SettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsPageModel());

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
                  'Profile',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: Stack(
                          alignment: const AlignmentDirectional(1.5, 1.0),
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
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
                                          image: Image.network(
                                            valueOrDefault<String>(
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
                                      child: Image.network(
                                        valueOrDefault<String>(
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
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
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
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
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    setState(() {});
                                    showUploadMessage(
                                        context, 'Failed to upload data');
                                    return;
                                  }
                                }

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  photoUrl: _model.uploadedFileUrl,
                                ));
                              },
                              child: Container(
                                width: 23.0,
                                height: 23.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3A96D0),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add_outlined,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault<String>(
                                    currentUserDocument?.personal.fullnames,
                                    'Name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Text(
                                'Show profile',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
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
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 30.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('accountPage');
                    },
                    child: ListTile(
                      leading: Icon(
                        FFIcons.kuserCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18.0,
                      ),
                      title: Text(
                        'Personal info',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: FlutterFlowTheme.of(context).lineColor,
                        size: 12.0,
                      ),
                      tileColor: Colors.transparent,
                      dense: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('bookmarkPage');
                    },
                    child: ListTile(
                      leading: Icon(
                        FFIcons.kheartCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      title: Text(
                        'Bookmark',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).lineColor,
                        size: 12.0,
                      ),
                      tileColor: Colors.transparent,
                      dense: true,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'notificationsPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        FFIcons.knotificationCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      title: Text(
                        'Notifications',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).lineColor,
                        size: 12.0,
                      ),
                      tileColor: Colors.transparent,
                      dense: true,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Hosting',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
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
                    child: ListTile(
                      leading: Icon(
                        FFIcons.kbriefcaseCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      title: Text(
                        'Switch to landlord',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).lineColor,
                        size: 12.0,
                      ),
                      tileColor: Colors.transparent,
                      dense: true,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Appearance & Referrals',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Share.share(
                          'https://resmap.page.link${GoRouter.of(context).location}',
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          FFIcons.kgiftCopy,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
                        title: Text(
                          'Invite a friend',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).lineColor,
                          size: 12.0,
                        ),
                        tileColor: Colors.transparent,
                        dense: true,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Support',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                  child: ListTile(
                    leading: Icon(
                      FFIcons.kshieldTickCopy,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    title: Text(
                      'Privacy & Security',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).lineColor,
                      size: 12.0,
                    ),
                    tileColor: Colors.transparent,
                    dense: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: const Color(0x00000000),
                        isDismissible: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const HelpInfoWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) =>
                          safeSetState(() => _model.needHelp = value));

                      await launchUrl(Uri(
                          scheme: 'mailto',
                          path: 'inf0@resmap.co.za',
                          query: {
                            'subject': 'Help with Resmap',
                            'body': _model.needHelp!,
                          }
                              .entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&')));

                      setState(() {});
                    },
                    child: ListTile(
                      leading: Icon(
                        FFIcons.kinfoCircleCopy,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      title: Text(
                        'Help',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).lineColor,
                        size: 12.0,
                      ),
                      tileColor: Colors.transparent,
                      dense: true,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('Onboarding3', context.mounted);
                        },
                        text: 'Logout',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFB90000),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
