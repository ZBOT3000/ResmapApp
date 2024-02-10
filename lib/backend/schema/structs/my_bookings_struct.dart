// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyBookingsStruct extends FFFirebaseStruct {
  MyBookingsStruct({
    String? resName,
    String? status,
    String? refNumber,
    DateTime? date,
    String? logo,
    String? roomType,
    String? institution,
    String? funding,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _resName = resName,
        _status = status,
        _refNumber = refNumber,
        _date = date,
        _logo = logo,
        _roomType = roomType,
        _institution = institution,
        _funding = funding,
        super(firestoreUtilData);

  // "res_name" field.
  String? _resName;
  String get resName => _resName ?? '';
  set resName(String? val) => _resName = val;
  bool hasResName() => _resName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "ref_number" field.
  String? _refNumber;
  String get refNumber => _refNumber ?? '';
  set refNumber(String? val) => _refNumber = val;
  bool hasRefNumber() => _refNumber != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "roomType" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  set roomType(String? val) => _roomType = val;
  bool hasRoomType() => _roomType != null;

  // "Institution" field.
  String? _institution;
  String get institution => _institution ?? '';
  set institution(String? val) => _institution = val;
  bool hasInstitution() => _institution != null;

  // "funding" field.
  String? _funding;
  String get funding => _funding ?? '';
  set funding(String? val) => _funding = val;
  bool hasFunding() => _funding != null;

  static MyBookingsStruct fromMap(Map<String, dynamic> data) =>
      MyBookingsStruct(
        resName: data['res_name'] as String?,
        status: data['status'] as String?,
        refNumber: data['ref_number'] as String?,
        date: data['date'] as DateTime?,
        logo: data['logo'] as String?,
        roomType: data['roomType'] as String?,
        institution: data['Institution'] as String?,
        funding: data['funding'] as String?,
      );

  static MyBookingsStruct? maybeFromMap(dynamic data) => data is Map
      ? MyBookingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'res_name': _resName,
        'status': _status,
        'ref_number': _refNumber,
        'date': _date,
        'logo': _logo,
        'roomType': _roomType,
        'Institution': _institution,
        'funding': _funding,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'res_name': serializeParam(
          _resName,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'ref_number': serializeParam(
          _refNumber,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'roomType': serializeParam(
          _roomType,
          ParamType.String,
        ),
        'Institution': serializeParam(
          _institution,
          ParamType.String,
        ),
        'funding': serializeParam(
          _funding,
          ParamType.String,
        ),
      }.withoutNulls;

  static MyBookingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MyBookingsStruct(
        resName: deserializeParam(
          data['res_name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        refNumber: deserializeParam(
          data['ref_number'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        roomType: deserializeParam(
          data['roomType'],
          ParamType.String,
          false,
        ),
        institution: deserializeParam(
          data['Institution'],
          ParamType.String,
          false,
        ),
        funding: deserializeParam(
          data['funding'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MyBookingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MyBookingsStruct &&
        resName == other.resName &&
        status == other.status &&
        refNumber == other.refNumber &&
        date == other.date &&
        logo == other.logo &&
        roomType == other.roomType &&
        institution == other.institution &&
        funding == other.funding;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [resName, status, refNumber, date, logo, roomType, institution, funding]);
}

MyBookingsStruct createMyBookingsStruct({
  String? resName,
  String? status,
  String? refNumber,
  DateTime? date,
  String? logo,
  String? roomType,
  String? institution,
  String? funding,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MyBookingsStruct(
      resName: resName,
      status: status,
      refNumber: refNumber,
      date: date,
      logo: logo,
      roomType: roomType,
      institution: institution,
      funding: funding,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MyBookingsStruct? updateMyBookingsStruct(
  MyBookingsStruct? myBookings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    myBookings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMyBookingsStructData(
  Map<String, dynamic> firestoreData,
  MyBookingsStruct? myBookings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (myBookings == null) {
    return;
  }
  if (myBookings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && myBookings.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final myBookingsData = getMyBookingsFirestoreData(myBookings, forFieldValue);
  final nestedData = myBookingsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = myBookings.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMyBookingsFirestoreData(
  MyBookingsStruct? myBookings, [
  bool forFieldValue = false,
]) {
  if (myBookings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(myBookings.toMap());

  // Add any Firestore field values
  myBookings.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMyBookingsListFirestoreData(
  List<MyBookingsStruct>? myBookingss,
) =>
    myBookingss?.map((e) => getMyBookingsFirestoreData(e, true)).toList() ?? [];
