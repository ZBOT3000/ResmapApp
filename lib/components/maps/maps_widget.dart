import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'maps_model.dart';
export 'maps_model.dart';

class MapsWidget extends StatefulWidget {
  const MapsWidget({
    super.key,
    this.mapReses,
  });

  final List<AccomodationsRecord>? mapReses;

  @override
  State<MapsWidget> createState() => _MapsWidgetState();
}

class _MapsWidgetState extends State<MapsWidget> {
  late MapsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapsModel());

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
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 0.75,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: FlutterFlowGoogleMap(
                      controller: _model.googleMapsController,
                      onCameraIdle: (latLng) =>
                          _model.googleMapsCenter = latLng,
                      initialLocation: _model.googleMapsCenter ??=
                          const LatLng(-26.195246, 28.034088),
                      markers: (widget.mapReses
                                  ?.map((e) => e.address.latlong)
                                  .withoutNulls
                                  .toList() ??
                              [])
                          .map(
                            (marker) => FlutterFlowMarker(
                              marker.serialize(),
                              marker,
                            ),
                          )
                          .toList(),
                      markerColor: GoogleMarkerColor.red,
                      mapType: MapType.terrain,
                      style: GoogleMapStyle.standard,
                      initialZoom: 15.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: false,
                      showLocation: true,
                      showCompass: false,
                      showMapToolbar: true,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
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
