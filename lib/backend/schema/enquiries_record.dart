import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class EnquiriesRecord extends FirestoreRecord {
  EnquiriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "listing" field.
  DocumentReference? _listing;
  DocumentReference? get listing => _listing;
  bool hasListing() => _listing != null;

  // "tenant" field.
  DocumentReference? _tenant;
  DocumentReference? get tenant => _tenant;
  bool hasTenant() => _tenant != null;

  // "leaseTerm" field.
  String? _leaseTerm;
  String get leaseTerm => _leaseTerm ?? '';
  bool hasLeaseTerm() => _leaseTerm != null;

  // "moveIn" field.
  DateTime? _moveIn;
  DateTime? get moveIn => _moveIn;
  bool hasMoveIn() => _moveIn != null;

  // "funding" field.
  String? _funding;
  String get funding => _funding ?? '';
  bool hasFunding() => _funding != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "docs" field.
  DocumentsStruct? _docs;
  DocumentsStruct get docs => _docs ?? DocumentsStruct();
  bool hasDocs() => _docs != null;

  // "timeBooked" field.
  DateTime? _timeBooked;
  DateTime? get timeBooked => _timeBooked;
  bool hasTimeBooked() => _timeBooked != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "landlord" field.
  DocumentReference? _landlord;
  DocumentReference? get landlord => _landlord;
  bool hasLandlord() => _landlord != null;

  // "status_listing" field.
  Status? _statusListing;
  Status? get statusListing => _statusListing;
  bool hasStatusListing() => _statusListing != null;

  void _initializeFields() {
    _listing = snapshotData['listing'] as DocumentReference?;
    _tenant = snapshotData['tenant'] as DocumentReference?;
    _leaseTerm = snapshotData['leaseTerm'] as String?;
    _moveIn = snapshotData['moveIn'] as DateTime?;
    _funding = snapshotData['funding'] as String?;
    _status = snapshotData['status'] as String?;
    _docs = DocumentsStruct.maybeFromMap(snapshotData['docs']);
    _timeBooked = snapshotData['timeBooked'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
    _landlord = snapshotData['landlord'] as DocumentReference?;
    _statusListing = deserializeEnum<Status>(snapshotData['status_listing']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enquiries');

  static Stream<EnquiriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnquiriesRecord.fromSnapshot(s));

  static Future<EnquiriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnquiriesRecord.fromSnapshot(s));

  static EnquiriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnquiriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnquiriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnquiriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnquiriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnquiriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnquiriesRecordData({
  DocumentReference? listing,
  DocumentReference? tenant,
  String? leaseTerm,
  DateTime? moveIn,
  String? funding,
  String? status,
  DocumentsStruct? docs,
  DateTime? timeBooked,
  String? notes,
  DocumentReference? landlord,
  Status? statusListing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'listing': listing,
      'tenant': tenant,
      'leaseTerm': leaseTerm,
      'moveIn': moveIn,
      'funding': funding,
      'status': status,
      'docs': DocumentsStruct().toMap(),
      'timeBooked': timeBooked,
      'notes': notes,
      'landlord': landlord,
      'status_listing': statusListing,
    }.withoutNulls,
  );

  // Handle nested data for "docs" field.
  addDocumentsStructData(firestoreData, docs, 'docs');

  return firestoreData;
}

class EnquiriesRecordDocumentEquality implements Equality<EnquiriesRecord> {
  const EnquiriesRecordDocumentEquality();

  @override
  bool equals(EnquiriesRecord? e1, EnquiriesRecord? e2) {
    return e1?.listing == e2?.listing &&
        e1?.tenant == e2?.tenant &&
        e1?.leaseTerm == e2?.leaseTerm &&
        e1?.moveIn == e2?.moveIn &&
        e1?.funding == e2?.funding &&
        e1?.status == e2?.status &&
        e1?.docs == e2?.docs &&
        e1?.timeBooked == e2?.timeBooked &&
        e1?.notes == e2?.notes &&
        e1?.landlord == e2?.landlord &&
        e1?.statusListing == e2?.statusListing;
  }

  @override
  int hash(EnquiriesRecord? e) => const ListEquality().hash([
        e?.listing,
        e?.tenant,
        e?.leaseTerm,
        e?.moveIn,
        e?.funding,
        e?.status,
        e?.docs,
        e?.timeBooked,
        e?.notes,
        e?.landlord,
        e?.statusListing
      ]);

  @override
  bool isValidKey(Object? o) => o is EnquiriesRecord;
}
