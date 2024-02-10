import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'onboard_model.dart';
export 'onboard_model.dart';

class OnboardWidget extends StatefulWidget {
  const OnboardWidget({super.key});

  @override
  State<OnboardWidget> createState() => _OnboardWidgetState();
}

class _OnboardWidgetState extends State<OnboardWidget> {
  late OnboardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode9 ??= FocusNode();

    _model.textController10 ??= TextEditingController();
    _model.textFieldFocusNode10 ??= FocusNode();

    _model.textController11 ??= TextEditingController();
    _model.textFieldFocusNode11 ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode12 ??= FocusNode();

    _model.textController13 ??= TextEditingController();
    _model.textFieldFocusNode13 ??= FocusNode();

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.7,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
              child: PageView(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Text(
                              'Student Info',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Personal Details',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 25.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController1,
                            focusNode: _model.textFieldFocusNode1,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Full Names',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController1 ??=
                                    FormFieldController<String>(null),
                                options: const ['Female', 'Male'],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue1 = val),
                                width: 180.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                    ),
                                hintText: 'Gender',
                                fillColor:
                                    FlutterFlowTheme.of(context).textFill,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                borderWidth: 0.5,
                                borderRadius: 4.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 20.0),
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Age',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      filled: true,
                                      fillColor:
                                          FlutterFlowTheme.of(context).textFill,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    minLines: 1,
                                    keyboardType: TextInputType.number,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController3,
                            focusNode: _model.textFieldFocusNode3,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Address',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            maxLines: 3,
                            validator: _model.textController3Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController4,
                            focusNode: _model.textFieldFocusNode4,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Student number',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController4Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController2 ??=
                                FormFieldController<String>(null),
                            options: const [
                              'University of Johannesburg',
                              'Wits',
                              'Rosebank College',
                              'Damelin'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue2 = val),
                            width: 180.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                            hintText: 'Institution',
                            fillColor: FlutterFlowTheme.of(context).textFill,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).lineColor,
                            borderWidth: 0.5,
                            borderRadius: 4.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Text(
                              'Upload Documents',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Personal Details',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 20.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController5,
                            focusNode: _model.textFieldFocusNode5,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Copy of ID',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                              prefixIcon: const Icon(
                                FFIcons.kdocument1,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController5Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController6,
                            focusNode: _model.textFieldFocusNode6,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Proof of Registration',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                              prefixIcon: const Icon(
                                FFIcons.kdocument1,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController6Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 25.0),
                          child: TextFormField(
                            controller: _model.textController7,
                            focusNode: _model.textFieldFocusNode7,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Copy Of Student Card',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                              prefixIcon: const Icon(
                                FFIcons.kdocument1,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController7Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController3 ??=
                                FormFieldController<String>(null),
                            options: const [
                              'NSFAS',
                              'GCRA',
                              'Private Bursary',
                              'Self Funded'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue3 = val),
                            width: 180.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                            hintText: 'Source of funding',
                            fillColor: FlutterFlowTheme.of(context).textFill,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).lineColor,
                            borderWidth: 0.5,
                            borderRadius: 4.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _model.textController8,
                            focusNode: _model.textFieldFocusNode8,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Upload Proof of Funding',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                              prefixIcon: const Icon(
                                FFIcons.kdocument1,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController8Validator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Text(
                              'Student Info',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Next of Kin',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 25.0, 5.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController9,
                                  focusNode: _model.textFieldFocusNode9,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).textFill,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController9Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 25.0, 25.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController10,
                                  focusNode: _model.textFieldFocusNode10,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).textFill,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController10Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 25.0, 25.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController11,
                            focusNode: _model.textFieldFocusNode11,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Relationship to student',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).textFill,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textController11Validator
                                .asValidator(context),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 25.0, 10.0, 20.0),
                                child: TextFormField(
                                  controller: _model.textController12,
                                  focusNode: _model.textFieldFocusNode12,
                                  readOnly: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: '+27',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).textFill,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController12Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 25.0, 20.0),
                                child: TextFormField(
                                  controller: _model.textController13,
                                  focusNode: _model.textFieldFocusNode13,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Mobile Number',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).textFill,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController13Validator
                                      .asValidator(context),
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
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Skip',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 18.0,
                      ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 15.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                  icon: Icon(
                    FFIcons.karrowRight3Copy,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    await _model.pageViewController?.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
