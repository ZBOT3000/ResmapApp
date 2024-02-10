import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'info_booking_model.dart';
export 'info_booking_model.dart';

class InfoBookingWidget extends StatefulWidget {
  const InfoBookingWidget({super.key});

  @override
  State<InfoBookingWidget> createState() => _InfoBookingWidgetState();
}

class _InfoBookingWidgetState extends State<InfoBookingWidget> {
  late InfoBookingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoBookingModel());

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
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
          child: Stack(
            alignment: const AlignmentDirectional(0.6000000000000001, -1.6),
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Thank you for considering our student accommodation for your stay. We want to inform you that canceling your booking may result in a non-refundable fee and the room may not be reserved for anyone else.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_up,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 150.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
