import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'no_messages_model.dart';
export 'no_messages_model.dart';

class NoMessagesWidget extends StatefulWidget {
  const NoMessagesWidget({super.key});

  @override
  State<NoMessagesWidget> createState() => _NoMessagesWidgetState();
}

class _NoMessagesWidgetState extends State<NoMessagesWidget> {
  late NoMessagesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoMessagesModel());

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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          FFIcons.kmessageCopy,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 40.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Text(
            'No new messages',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Open Sans',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}
