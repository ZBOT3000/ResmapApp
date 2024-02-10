import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/disability_menu/disability_menu_widget.dart';
import '/components/empty_widget/empty_widget_widget.dart';
import '/components/student_main_menu/student_main_menu_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();

    _model.expandableController = ExpandableController(initialExpanded: false);
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

    return StreamBuilder<List<AccomodationsRecord>>(
      stream: _model.reses(
        requestFn: () => queryAccomodationsRecord(
          queryBuilder: (accomodationsRecord) => accomodationsRecord.where(
            'status',
            isEqualTo: Status.approved.serialize(),
          ),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitThreeBounce(
                  color: Color(0xFF368DC5),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AccomodationsRecord> homePageAccomodationsRecordList =
            snapshot.data!;
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
                ? PreferredSize(
                    preferredSize: Size.fromHeight(
                        MediaQuery.sizeOf(context).height * 0.1),
                    child: AppBar(
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      automaticallyImplyLeading: false,
                      title: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Autocomplete<String>(
                              initialValue: const TextEditingValue(),
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return [
                                  'University of Witwatersrand',
                                  'University of Johannesburg',
                                  'University of Cape Town',
                                  'University of Pretoria',
                                  'Rosebank College',
                                  'Damelin College',
                                  'Boston College',
                                  'AFDA'
                                ].where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey: _model.textFieldKey,
                                  textController: _model.textController!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  textHighlightStyle: const TextStyle(),
                                  elevation: 4.0,
                                  optionBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  optionHighlightColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  maxHeight: 200.0,
                                );
                              },
                              onSelected: (String selection) {
                                setState(() =>
                                    _model.textFieldSelectedOption = selection);
                                FocusScope.of(context).unfocus();
                              },
                              fieldViewBuilder: (
                                context,
                                textEditingController,
                                focusNode,
                                onEditingComplete,
                              ) {
                                _model.textFieldFocusNode = focusNode;

                                _model.textController = textEditingController;
                                return TextFormField(
                                  key: _model.textFieldKey,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onEditingComplete: onEditingComplete,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  onFieldSubmitted: (_) async {
                                    setState(() {
                                      FFAppState().city =
                                          _model.textController.text;
                                    });
                                  },
                                  textInputAction: TextInputAction.search,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: 'Search University/College',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).textFill,
                                    contentPadding: const EdgeInsets.all(15.0),
                                    prefixIcon: const Icon(
                                      FFIcons.ksearchOutline,
                                      size: 20.0,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                );
                              },
                            ),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  barrierColor: const Color(0x0B000000),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.8, -0.3)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: const StudentMainMenuWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Container(
                                width: 45.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Icon(
                                  FFIcons.kmenuOutline,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 20.0)),
                      ),
                      actions: const [],
                      centerTitle: false,
                      elevation: 0.0,
                    ),
                  )
                : null,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 10.0),
                              child: FlutterFlowChoiceChips(
                                options: const [
                                  ChipData('Johannesburg'),
                                  ChipData('Pretoria'),
                                  ChipData('Bloemfontein'),
                                  ChipData('Cape Town'),
                                  ChipData('Gqeberha'),
                                  ChipData('Durban'),
                                  ChipData('East London')
                                ],
                                onChanged: (val) => setState(
                                    () => _model.choiceChipsValue = val?.first),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor: const Color(0xFF3A96D0),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  iconColor: Colors.white,
                                  iconSize: 18.0,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 7.0, 15.0, 7.0),
                                  elevation: 0.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Colors.transparent,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  iconSize: 18.0,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 7.0, 15.0, 7.0),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                chipSpacing: 12.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                initialized: _model.choiceChipsValue != null,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController ??=
                                        FormFieldController<List<String>>(
                                  ['Johannesburg'],
                                ),
                                wrapped: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: StreamBuilder<List<AccomodationsRecord>>(
                          stream: queryAccomodationsRecord(
                            queryBuilder: (accomodationsRecord) =>
                                accomodationsRecord
                                    .where(
                                      'promoted',
                                      isEqualTo: true,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: Status.approved.serialize(),
                                    )
                                    .orderBy('created', descending: true),
                            limit: 5,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitThreeBounce(
                                    color: Color(0xFF368DC5),
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<AccomodationsRecord>
                                carouselAccomodationsRecordList =
                                snapshot.data!;
                            return SizedBox(
                              width: double.infinity,
                              height: 250.0,
                              child: CarouselSlider.builder(
                                itemCount:
                                    carouselAccomodationsRecordList.length,
                                itemBuilder: (context, carouselIndex, _) {
                                  final carouselAccomodationsRecord =
                                      carouselAccomodationsRecordList[
                                          carouselIndex];
                                  return Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'homePageExpanded',
                                          queryParameters: {
                                            'expandedAccomodation':
                                                serializeParam(
                                              carouselAccomodationsRecord,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'expandedAccomodation':
                                                carouselAccomodationsRecord,
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              carouselAccomodationsRecord
                                                  .header,
                                              width: 350.0,
                                              height: 120.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          AutoSizeText(
                                            carouselAccomodationsRecord.name,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            minFontSize: 12.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                carouselAccomodationsRecord
                                                    .management.company,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              RichText(
                                                textScaleFactor:
                                                    MediaQuery.of(context)
                                                        .textScaleFactor,
                                                text: TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text: 'From',
                                                      style: TextStyle(),
                                                    ),
                                                    const TextSpan(
                                                      text: ' R',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF3590CA),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        functions.fromLowest(
                                                            carouselAccomodationsRecord
                                                                .roomTypes
                                                                .map((e) =>
                                                                    e.roomPrice)
                                                                .toList()),
                                                        '0',
                                                      ),
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xFF3590CA),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 5.0)),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    ),
                                  );
                                },
                                carouselController:
                                    _model.carouselController ??=
                                        CarouselController(),
                                options: CarouselOptions(
                                  initialPage: min(
                                      0,
                                      carouselAccomodationsRecordList.length -
                                          1),
                                  viewportFraction: 0.5,
                                  disableCenter: false,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.4,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayInterval:
                                      const Duration(milliseconds: (800 + 3000)),
                                  autoPlayCurve: Curves.linear,
                                  pauseAutoPlayInFiniteScroll: true,
                                  onPageChanged: (index, _) =>
                                      _model.carouselCurrentIndex = index,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 20.0, 15.0, 0.0),
                            child: StreamBuilder<List<AccomodationsRecord>>(
                              stream: queryAccomodationsRecord(
                                queryBuilder: (accomodationsRecord) =>
                                    accomodationsRecord
                                        .where(
                                          'address.city',
                                          isEqualTo:
                                              _model.choiceChipsValue != ''
                                                  ? _model.choiceChipsValue
                                                  : null,
                                        )
                                        .where(
                                          'main_campus.name',
                                          isEqualTo:
                                              _model.textFieldSelectedOption !=
                                                      ''
                                                  ? _model
                                                      .textFieldSelectedOption
                                                  : null,
                                        )
                                        .orderBy('created', descending: true),
                                limit: 8,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return const Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitThreeBounce(
                                        color: Color(0xFF368DC5),
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<AccomodationsRecord>
                                    column2AccomodationsRecordList =
                                    snapshot.data!;
                                if (column2AccomodationsRecordList.isEmpty) {
                                  return const EmptyWidgetWidget();
                                }
                                return SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        column2AccomodationsRecordList.length,
                                        (column2Index) {
                                      final column2AccomodationsRecord =
                                          column2AccomodationsRecordList[
                                              column2Index];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'homePageExpanded',
                                              queryParameters: {
                                                'expandedAccomodation':
                                                    serializeParam(
                                                  column2AccomodationsRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'expandedAccomodation':
                                                    column2AccomodationsRecord,
                                              },
                                            );
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 250.0,
                                                        child: Stack(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, -1.0),
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                              child:
                                                                  Image.network(
                                                                column2AccomodationsRecord
                                                                    .header,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 250.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    height: 22.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: const Color(0xFF22A666),
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                          children: [
                                                                                            const Icon(
                                                                                              Icons.verified_user_rounded,
                                                                                              color: Colors.white,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Text(
                                                                                              'ACCREDITTED',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Open Sans',
                                                                                                    color: Colors.white,
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 5.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Builder(
                                                                                    builder: (context) => InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await showDialog(
                                                                                          barrierColor: const Color(0x13000000),
                                                                                          context: context,
                                                                                          builder: (dialogContext) {
                                                                                            return Dialog(
                                                                                              elevation: 0,
                                                                                              insetPadding: EdgeInsets.zero,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                              child: WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: const DisabilityMenuWidget(),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                      child: Container(
                                                                                        height: 22.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: const Color(0xE0432DB2),
                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                              children: [
                                                                                                const Icon(
                                                                                                  FFIcons.khandicapSymbol,
                                                                                                  color: Colors.white,
                                                                                                  size: 16.0,
                                                                                                ),
                                                                                                Text(
                                                                                                  'ACCESSIBILITY',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Open Sans',
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 12.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                      ),
                                                                                                ),
                                                                                              ].divide(const SizedBox(width: 5.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 5.0)),
                                                                        ),
                                                                      ),
                                                                      if (FFAppState()
                                                                          .favs
                                                                          .contains(
                                                                              column2AccomodationsRecord.reference))
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              15.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                BackdropFilter(
                                                                              filter: ImageFilter.blur(
                                                                                sigmaX: 2.0,
                                                                                sigmaY: 2.0,
                                                                              ),
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderRadius: 5.0,
                                                                                borderWidth: 0.0,
                                                                                buttonSize: 45.0,
                                                                                fillColor: const Color(0x3F616161),
                                                                                icon: Icon(
                                                                                  FFIcons.kheart,
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().removeFromFavs(column2AccomodationsRecord.reference);
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (!FFAppState()
                                                                          .favs
                                                                          .contains(
                                                                              column2AccomodationsRecord.reference))
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              15.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                BackdropFilter(
                                                                              filter: ImageFilter.blur(
                                                                                sigmaX: 2.0,
                                                                                sigmaY: 2.0,
                                                                              ),
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderRadius: 5.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 40.0,
                                                                                fillColor: const Color(0x3F616161),
                                                                                icon: const Icon(
                                                                                  FFIcons.kheartCopy,
                                                                                  color: Colors.white,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  setState(() {
                                                                                    FFAppState().addToFavs(column2AccomodationsRecord.reference);
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    15.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              FFIcons.kmapCopy,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${functions.newCustomFunction(column2AccomodationsRecord.address.latlong, column2AccomodationsRecord.mainCampus.address)} km from ${column2AccomodationsRecord.mainCampus.name}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    5.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'R${functions.fromLowest(column2AccomodationsRecord.roomTypes.map((e) => e.roomPrice).toList())}',
                                                                style:
                                                                    const TextStyle(
                                                                  color: Color(
                                                                      0xFF3891CA),
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                              ),
                                                              const TextSpan(
                                                                text:
                                                                    ' / per month',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    15.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Text(
                                                                  '${column2AccomodationsRecord.address.streetName}, ${column2AccomodationsRecord.address.city}. ${column2AccomodationsRecord.address.province}. ${column2AccomodationsRecord.address.zip}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    5.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              FFIcons.kbedss,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .kcarCopy,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 16.0,
                                                              ),
                                                            ),
                                                            Icon(
                                                              FFIcons.kwifi,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 16.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    5.0,
                                                                    15.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 30.0,
                                                                  height: 30.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      column2AccomodationsRecord
                                                                          .logo,
                                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZfA2PH0vbyt1EAeaRVbUyQc7ie7JJWlt2MqQH5lTva2dGjcEHrdZUsW7xkE-J2Fy-yE&usqp=CAU',
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '${column2AccomodationsRecord.totalRoomsNumber} rooms available',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 40.0,
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                  ),
                                                                  child: const Icon(
                                                                    FFIcons
                                                                        .kmessage,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 22.0,
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchUrl(
                                                                        Uri(
                                                                      scheme:
                                                                          'tel',
                                                                      path: column2AccomodationsRecord
                                                                          .management
                                                                          .number,
                                                                    ));
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 40.0,
                                                                    height:
                                                                        38.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF00C928),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                    ),
                                                                    child: const Icon(
                                                                      FFIcons
                                                                          .kwhatsapp,
                                                                      color: Colors
                                                                          .white,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            child: ExpandableNotifier(
                              controller: _model.expandableController,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      14.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'View All',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                collapsed: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 0.0, 15.0),
                                  child:
                                      StreamBuilder<List<AccomodationsRecord>>(
                                    stream: queryAccomodationsRecord(
                                      queryBuilder: (accomodationsRecord) =>
                                          accomodationsRecord
                                              .where(
                                                'address.city',
                                                isEqualTo: _model
                                                            .choiceChipsValue !=
                                                        ''
                                                    ? _model.choiceChipsValue
                                                    : null,
                                              )
                                              .orderBy('created',
                                                  descending: true),
                                      limit: 10,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitThreeBounce(
                                              color: Color(0xFF368DC5),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<AccomodationsRecord>
                                          rowAccomodationsRecordList =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: List.generate(
                                              rowAccomodationsRecordList.length,
                                              (rowIndex) {
                                            final rowAccomodationsRecord =
                                                rowAccomodationsRecordList[
                                                    rowIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 10.0, 5.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'homePageExpanded',
                                                    queryParameters: {
                                                      'expandedAccomodation':
                                                          serializeParam(
                                                        rowAccomodationsRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'expandedAccomodation':
                                                          rowAccomodationsRecord,
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.65,
                                                  height: 300.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x15000000),
                                                        offset:
                                                            Offset(0.0, 2.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              rowAccomodationsRecord
                                                                  .header,
                                                              width: 350.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          if (FFAppState()
                                                              .favs
                                                              .contains(
                                                                  rowAccomodationsRecord
                                                                      .reference))
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      30.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  icon: const Icon(
                                                                    FFIcons
                                                                        .kheart,
                                                                    color: Color(
                                                                        0xFFC80E00),
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .removeFromFavs(
                                                                              rowAccomodationsRecord.reference);
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          if (!FFAppState()
                                                              .favs
                                                              .contains(
                                                                  rowAccomodationsRecord
                                                                      .reference))
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      30.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kheartCopy,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .addToFavs(
                                                                              rowAccomodationsRecord.reference);
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    10.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rowAccomodationsRecord
                                                                        .logo,
                                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZfA2PH0vbyt1EAeaRVbUyQc7ie7JJWlt2MqQH5lTva2dGjcEHrdZUsW7xkE-J2Fy-yE&usqp=CAU',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    AutoSizeText(
                                                                      rowAccomodationsRecord
                                                                          .name,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            fontSize:
                                                                                11.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    AutoSizeText(
                                                                      rowAccomodationsRecord
                                                                          .address
                                                                          .streetName,
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                10.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
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
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${functions.newCustomFunction(rowAccomodationsRecord.mainCampus.address, rowAccomodationsRecord.address.latlong)} km from ${rowAccomodationsRecord.mainCampus.name}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      10.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'From',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'R${functions.fromLowest(rowAccomodationsRecord.roomTypes.map((e) => e.roomPrice).toList())}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        fontSize:
                                                                            12.0,
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
                                              ),
                                            );
                                          }).divide(const SizedBox(width: 10.0)),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                expanded: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 0.0),
                                  child:
                                      StreamBuilder<List<AccomodationsRecord>>(
                                    stream: queryAccomodationsRecord(
                                      queryBuilder: (accomodationsRecord) =>
                                          accomodationsRecord
                                              .where(
                                                'address.city',
                                                isEqualTo: _model
                                                            .choiceChipsValue !=
                                                        ''
                                                    ? _model.choiceChipsValue
                                                    : null,
                                              )
                                              .where(
                                                'status',
                                                isEqualTo:
                                                    Status.approved.serialize(),
                                              )
                                              .orderBy('created',
                                                  descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitThreeBounce(
                                              color: Color(0xFF368DC5),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<AccomodationsRecord>
                                          columnAccomodationsRecordList =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              columnAccomodationsRecordList
                                                  .length, (columnIndex) {
                                            final columnAccomodationsRecord =
                                                columnAccomodationsRecordList[
                                                    columnIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 15.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'homePageExpanded',
                                                    queryParameters: {
                                                      'expandedAccomodation':
                                                          serializeParam(
                                                        columnAccomodationsRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'expandedAccomodation':
                                                          columnAccomodationsRecord,
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        columnAccomodationsRecord
                                                            .header,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        height: 80.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Container(
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: CachedNetworkImage(
                                                                                  fadeInDuration: const Duration(milliseconds: 500),
                                                                                  fadeOutDuration: const Duration(milliseconds: 500),
                                                                                  imageUrl: columnAccomodationsRecord.logo,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          columnAccomodationsRecord.name,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Open Sans',
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      columnAccomodationsRecord.address.streetName,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const Divider(
                                                              thickness: 1.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
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
      },
    );
  }
}
