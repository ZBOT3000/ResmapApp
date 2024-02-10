import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "joined" field.
  DateTime? _joined;
  DateTime? get joined => _joined;
  bool hasJoined() => _joined != null;

  // "listings" field.
  List<DocumentReference>? _listings;
  List<DocumentReference> get listings => _listings ?? const [];
  bool hasListings() => _listings != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _company = snapshotData['company'] as String?;
    _logo = snapshotData['logo'] as String?;
    _joined = snapshotData['joined'] as DateTime?;
    _listings = getDataList(snapshotData['listings']);
    _members = getDataList(snapshotData['members']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('company')
          : FirebaseFirestore.instance.collectionGroup('company');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('company').doc(id);

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  String? company,
  String? logo,
  DateTime? joined,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company': company,
      'logo': logo,
      'joined': joined,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.company == e2?.company &&
        e1?.logo == e2?.logo &&
        e1?.joined == e2?.joined &&
        listEquality.equals(e1?.listings, e2?.listings) &&
        listEquality.equals(e1?.members, e2?.members);
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality()
      .hash([e?.company, e?.logo, e?.joined, e?.listings, e?.members]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
