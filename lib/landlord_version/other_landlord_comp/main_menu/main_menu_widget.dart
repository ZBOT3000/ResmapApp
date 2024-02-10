import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_menu_model.dart';
export 'main_menu_model.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({super.key});

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  late MainMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Container(
          width: 300.0,
          height: 430.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
              width: 1.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 0.0, 20.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
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
                  child: Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Divider(
                thickness: 0.4,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    var accomodationsRecordReference =
                        AccomodationsRecord.collection.doc();
                    await accomodationsRecordReference
                        .set(createAccomodationsRecordData(
                      company: createCompanyStruct(
                        fieldValues: {
                          'members': [currentUserEmail],
                        },
                        clearUnsetFields: false,
                        create: true,
                      ),
                      status: Status.draft,
                    ));
                    _model.accomodationRef =
                        AccomodationsRecord.getDocumentFromData(
                            createAccomodationsRecordData(
                              company: createCompanyStruct(
                                fieldValues: {
                                  'members': [currentUserEmail],
                                },
                                clearUnsetFields: false,
                                create: true,
                              ),
                              status: Status.draft,
                            ),
                            accomodationsRecordReference);

                    context.pushNamed(
                      'ListCopy',
                      queryParameters: {
                        'accomodation': serializeParam(
                          _model.accomodationRef,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'accomodation': _model.accomodationRef,
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    setState(() {});
                  },
                  child: Text(
                    'Create a listing',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'homePage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Text(
                    'Switch to student',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'enquiries',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Text(
                    'Enquiries',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Divider(
                thickness: 0.4,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 10.0),
                child: Text(
                  'Terms of use',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
                child: Text(
                  'Privacy Policy',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Divider(
                thickness: 0.4,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'settingsPage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Text(
                    'Settings',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
