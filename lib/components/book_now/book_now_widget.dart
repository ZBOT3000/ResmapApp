import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'book_now_model.dart';
export 'book_now_model.dart';

class BookNowWidget extends StatefulWidget {
  const BookNowWidget({
    super.key,
    this.myBooking,
  });

  final AccomodationsRecord? myBooking;

  @override
  State<BookNowWidget> createState() => _BookNowWidgetState();
}

class _BookNowWidgetState extends State<BookNowWidget> {
  late BookNowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookNowModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 90.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'makeBooking',
                          queryParameters: {
                            'booking': serializeParam(
                              widget.myBooking,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'booking': widget.myBooking,
                          },
                        );
                      },
                      text: 'Enquire',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF00C928),
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'compareRes',
                          queryParameters: {
                            'subject1': serializeParam(
                              widget.myBooking,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'subject1': widget.myBooking,
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: 'Compare',
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).alternate,
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ]
                    .divide(const SizedBox(width: 15.0))
                    .addToStart(const SizedBox(width: 25.0))
                    .addToEnd(const SizedBox(width: 25.0)),
              ),
              Divider(
                height: 0.0,
                thickness: 0.5,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
