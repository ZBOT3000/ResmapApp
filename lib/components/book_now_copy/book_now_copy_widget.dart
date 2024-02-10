import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'book_now_copy_model.dart';
export 'book_now_copy_model.dart';

class BookNowCopyWidget extends StatefulWidget {
  const BookNowCopyWidget({
    super.key,
    this.myBooking,
    this.leaseTerm,
    this.funding,
    this.identity,
    this.proofOfFunding,
    this.studentCard,
    this.proofOfReg,
    this.notes,
  });

  final AccomodationsRecord? myBooking;
  final String? leaseTerm;
  final String? funding;
  final String? identity;
  final String? proofOfFunding;
  final String? studentCard;
  final String? proofOfReg;
  final String? notes;

  @override
  State<BookNowCopyWidget> createState() => _BookNowCopyWidgetState();
}

class _BookNowCopyWidgetState extends State<BookNowCopyWidget> {
  late BookNowCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookNowCopyModel());

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
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Divider(
                height: 0.0,
                thickness: 0.5,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 25.0, 25.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Text(
                                'Back',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 25.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: widget.myBooking!.enquirers
                                .contains(currentUserReference)
                            ? null
                            : () async {
                                final firestoreBatch =
                                    FirebaseFirestore.instance.batch();
                                try {
                                  firestoreBatch.set(
                                      EnquiriesRecord.collection.doc(),
                                      createEnquiriesRecordData(
                                        listing: widget.myBooking?.reference,
                                        tenant: currentUserReference,
                                        leaseTerm: widget.leaseTerm,
                                        funding: widget.funding,
                                        status: 'Pending',
                                        docs: createDocumentsStruct(
                                          identity: widget.identity,
                                          studentCard: widget.studentCard,
                                          funding: widget.proofOfFunding,
                                          registration: widget.proofOfReg,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        timeBooked: getCurrentTimestamp,
                                        notes: widget.notes,
                                        landlord:
                                            widget.myBooking?.management.admin,
                                      ));

                                  firestoreBatch
                                      .update(widget.myBooking!.reference, {
                                    ...mapToFirestore(
                                      {
                                        'enquirers': FieldValue.arrayUnion(
                                            [currentUserReference]),
                                      },
                                    ),
                                  });

                                  context.pushNamed('bookingsPage');
                                } finally {
                                  await firestoreBatch.commit();
                                }
                              },
                        text: 'Book Now',
                        options: FFButtonOptions(
                          width: 120.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                          disabledColor: const Color(0xFFF7F7F7),
                          disabledTextColor: Colors.white,
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
    );
  }
}
