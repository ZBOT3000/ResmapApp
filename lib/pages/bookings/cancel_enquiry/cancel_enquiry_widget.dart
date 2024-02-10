import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'cancel_enquiry_model.dart';
export 'cancel_enquiry_model.dart';

class CancelEnquiryWidget extends StatefulWidget {
  const CancelEnquiryWidget({
    super.key,
    this.listingExp,
    this.enqExp,
  });

  final AccomodationsRecord? listingExp;
  final EnquiriesRecord? enqExp;

  @override
  State<CancelEnquiryWidget> createState() => _CancelEnquiryWidgetState();
}

class _CancelEnquiryWidgetState extends State<CancelEnquiryWidget> {
  late CancelEnquiryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelEnquiryModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                    Icons.arrow_back_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                title: Text(
                  'Cancel Booking',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Text(
                      'Why are you canceling this enquiry',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 15.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: const [
                        'Landlord took too long to respond',
                        'I found another place',
                        'I changed my mind',
                        'Place is too expensive',
                        'Other'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 300.0,
                      height: 50.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.normal,
                              ),
                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.normal,
                              ),
                      hintText: 'Select a reason',
                      searchHintText: 'Search for an item...',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).lineColor,
                      borderWidth: 1.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: true,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Additional explaination (Optional)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 15.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintText: 'Type here...',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      maxLines: 4,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    thickness: 0.5,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final firestoreBatch =
                            FirebaseFirestore.instance.batch();
                        try {
                          firestoreBatch.update(widget.listingExp!.reference, {
                            ...mapToFirestore(
                              {
                                'enquirers': FieldValue.arrayRemove(
                                    [currentUserReference]),
                              },
                            ),
                          });
                          firestoreBatch.delete(widget.enqExp!.reference);

                          context.pushNamed(
                            'bookingsPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        } finally {
                          await firestoreBatch.commit();
                        }
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 55.0,
                        padding: const EdgeInsets.all(0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF3992CB),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
