import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_room_prices_model.dart';
export 'view_room_prices_model.dart';

class ViewRoomPricesWidget extends StatefulWidget {
  const ViewRoomPricesWidget({
    super.key,
    required this.test,
  });

  final RoomTypesStruct? test;

  @override
  State<ViewRoomPricesWidget> createState() => _ViewRoomPricesWidgetState();
}

class _ViewRoomPricesWidgetState extends State<ViewRoomPricesWidget> {
  late ViewRoomPricesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewRoomPricesModel());

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

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 5.0,
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            Navigator.pop(context);
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 550.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Builder(
                        builder: (context) {
                          final test =
                              widget.test?.roomPictures.toList() ?? [];
                          return SizedBox(
                            width: double.infinity,
                            height: 550.0,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: PageView.builder(
                                    controller: _model.pageViewController ??=
                                        PageController(
                                            initialPage:
                                                min(0, test.length - 1)),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: test.length,
                                    itemBuilder: (context, testIndex) {
                                      final testItem = test[testIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  testItem,
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: testItem,
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: testItem,
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            child: Image.network(
                                              testItem,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 550.0,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(
                                              initialPage:
                                                  min(0, test.length - 1)),
                                      count: test.length,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: const smooth_page_indicator
                                          .ExpandingDotsEffect(
                                        expansionFactor: 2.0,
                                        spacing: 8.0,
                                        radius: 16.0,
                                        dotWidth: 10.0,
                                        dotHeight: 10.0,
                                        dotColor: Color(0xFF9E9E9E),
                                        activeDotColor: Color(0xFFDA380C),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
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
