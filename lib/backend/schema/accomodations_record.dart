import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class AccomodationsRecord extends FirestoreRecord {
  AccomodationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "header" field.
  String? _header;
  String get header => _header ?? '';
  bool hasHeader() => _header != null;

  // "promoted" field.
  bool? _promoted;
  bool get promoted => _promoted ?? false;
  bool hasPromoted() => _promoted != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "management" field.
  ManagementStruct? _management;
  ManagementStruct get management => _management ?? ManagementStruct();
  bool hasManagement() => _management != null;

  // "room_types" field.
  List<RoomTypesStruct>? _roomTypes;
  List<RoomTypesStruct> get roomTypes => _roomTypes ?? const [];
  bool hasRoomTypes() => _roomTypes != null;

  // "nsfas" field.
  bool? _nsfas;
  bool get nsfas => _nsfas ?? false;
  bool hasNsfas() => _nsfas != null;

  // "accomodation_description" field.
  String? _accomodationDescription;
  String get accomodationDescription => _accomodationDescription ?? '';
  bool hasAccomodationDescription() => _accomodationDescription != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "main_campus" field.
  CampusStruct? _mainCampus;
  CampusStruct get mainCampus => _mainCampus ?? CampusStruct();
  bool hasMainCampus() => _mainCampus != null;

  // "enquirers" field.
  List<DocumentReference>? _enquirers;
  List<DocumentReference> get enquirers => _enquirers ?? const [];
  bool hasEnquirers() => _enquirers != null;

  // "promVideo" field.
  String? _promVideo;
  String get promVideo => _promVideo ?? '';
  bool hasPromVideo() => _promVideo != null;

  // "bookingFee" field.
  String? _bookingFee;
  String get bookingFee => _bookingFee ?? '';
  bool hasBookingFee() => _bookingFee != null;

  // "FAQ" field.
  FaqStruct? _faq;
  FaqStruct get faq => _faq ?? FaqStruct();
  bool hasFaq() => _faq != null;

  // "rules" field.
  List<String>? _rules;
  List<String> get rules => _rules ?? const [];
  bool hasRules() => _rules != null;

  // "total_rooms_number" field.
  String? _totalRoomsNumber;
  String get totalRoomsNumber => _totalRoomsNumber ?? '';
  bool hasTotalRoomsNumber() => _totalRoomsNumber != null;

  // "listing_type" field.
  String? _listingType;
  String get listingType => _listingType ?? '';
  bool hasListingType() => _listingType != null;

  // "available_from" field.
  DateTime? _availableFrom;
  DateTime? get availableFrom => _availableFrom;
  bool hasAvailableFrom() => _availableFrom != null;

  // "amenities" field.
  List<String>? _amenities;
  List<String> get amenities => _amenities ?? const [];
  bool hasAmenities() => _amenities != null;

  // "all_images" field.
  List<String>? _allImages;
  List<String> get allImages => _allImages ?? const [];
  bool hasAllImages() => _allImages != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  bool hasCompany() => _company != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _header = snapshotData['header'] as String?;
    _promoted = snapshotData['promoted'] as bool?;
    _logo = snapshotData['logo'] as String?;
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _management = ManagementStruct.maybeFromMap(snapshotData['management']);
    _roomTypes = getStructList(
      snapshotData['room_types'],
      RoomTypesStruct.fromMap,
    );
    _nsfas = snapshotData['nsfas'] as bool?;
    _accomodationDescription =
        snapshotData['accomodation_description'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _mainCampus = CampusStruct.maybeFromMap(snapshotData['main_campus']);
    _enquirers = getDataList(snapshotData['enquirers']);
    _promVideo = snapshotData['promVideo'] as String?;
    _bookingFee = snapshotData['bookingFee'] as String?;
    _faq = FaqStruct.maybeFromMap(snapshotData['FAQ']);
    _rules = getDataList(snapshotData['rules']);
    _totalRoomsNumber = snapshotData['total_rooms_number'] as String?;
    _listingType = snapshotData['listing_type'] as String?;
    _availableFrom = snapshotData['available_from'] as DateTime?;
    _amenities = getDataList(snapshotData['amenities']);
    _allImages = getDataList(snapshotData['all_images']);
    _company = CompanyStruct.maybeFromMap(snapshotData['company']);
    _status = deserializeEnum<Status>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accomodations');

  static Stream<AccomodationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccomodationsRecord.fromSnapshot(s));

  static Future<AccomodationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccomodationsRecord.fromSnapshot(s));

  static AccomodationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccomodationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccomodationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccomodationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccomodationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccomodationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccomodationsRecordData({
  String? name,
  String? header,
  bool? promoted,
  String? logo,
  AddressStruct? address,
  ManagementStruct? management,
  bool? nsfas,
  String? accomodationDescription,
  DateTime? created,
  CampusStruct? mainCampus,
  String? promVideo,
  String? bookingFee,
  FaqStruct? faq,
  String? totalRoomsNumber,
  String? listingType,
  DateTime? availableFrom,
  CompanyStruct? company,
  Status? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'header': header,
      'promoted': promoted,
      'logo': logo,
      'address': AddressStruct().toMap(),
      'management': ManagementStruct().toMap(),
      'nsfas': nsfas,
      'accomodation_description': accomodationDescription,
      'created': created,
      'main_campus': CampusStruct().toMap(),
      'promVideo': promVideo,
      'bookingFee': bookingFee,
      'FAQ': FaqStruct().toMap(),
      'total_rooms_number': totalRoomsNumber,
      'listing_type': listingType,
      'available_from': availableFrom,
      'company': CompanyStruct().toMap(),
      'status': status,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "management" field.
  addManagementStructData(firestoreData, management, 'management');

  // Handle nested data for "main_campus" field.
  addCampusStructData(firestoreData, mainCampus, 'main_campus');

  // Handle nested data for "FAQ" field.
  addFaqStructData(firestoreData, faq, 'FAQ');

  // Handle nested data for "company" field.
  addCompanyStructData(firestoreData, company, 'company');

  return firestoreData;
}

class AccomodationsRecordDocumentEquality
    implements Equality<AccomodationsRecord> {
  const AccomodationsRecordDocumentEquality();

  @override
  bool equals(AccomodationsRecord? e1, AccomodationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.header == e2?.header &&
        e1?.promoted == e2?.promoted &&
        e1?.logo == e2?.logo &&
        e1?.address == e2?.address &&
        e1?.management == e2?.management &&
        listEquality.equals(e1?.roomTypes, e2?.roomTypes) &&
        e1?.nsfas == e2?.nsfas &&
        e1?.accomodationDescription == e2?.accomodationDescription &&
        e1?.created == e2?.created &&
        e1?.mainCampus == e2?.mainCampus &&
        listEquality.equals(e1?.enquirers, e2?.enquirers) &&
        e1?.promVideo == e2?.promVideo &&
        e1?.bookingFee == e2?.bookingFee &&
        e1?.faq == e2?.faq &&
        listEquality.equals(e1?.rules, e2?.rules) &&
        e1?.totalRoomsNumber == e2?.totalRoomsNumber &&
        e1?.listingType == e2?.listingType &&
        e1?.availableFrom == e2?.availableFrom &&
        listEquality.equals(e1?.amenities, e2?.amenities) &&
        listEquality.equals(e1?.allImages, e2?.allImages) &&
        e1?.company == e2?.company &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AccomodationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.header,
        e?.promoted,
        e?.logo,
        e?.address,
        e?.management,
        e?.roomTypes,
        e?.nsfas,
        e?.accomodationDescription,
        e?.created,
        e?.mainCampus,
        e?.enquirers,
        e?.promVideo,
        e?.bookingFee,
        e?.faq,
        e?.rules,
        e?.totalRoomsNumber,
        e?.listingType,
        e?.availableFrom,
        e?.amenities,
        e?.allImages,
        e?.company,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is AccomodationsRecord;
}
