import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'error_snack_model.dart';
export 'error_snack_model.dart';

class ErrorSnackWidget extends StatefulWidget {
  const ErrorSnackWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<ErrorSnackWidget> createState() => _ErrorSnackWidgetState();
}

class _ErrorSnackWidgetState extends State<ErrorSnackWidget> {
  late ErrorSnackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorSnackModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF101213),
            borderRadius: BorderRadius.circular(45.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 15.0, 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: Text(
                    widget.message!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF191919),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
                      child: Text(
                        'Cancel',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: const Color(0xFF0F53DB),
                            ),
                      ),
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
