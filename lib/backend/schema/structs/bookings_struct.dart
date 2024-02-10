// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsStruct extends FFFirebaseStruct {
  BookingsStruct({
    String? resName,
    String? status,
    DateTime? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _resName = resName,
        _status = status,
        _date = date,
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

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  static BookingsStruct fromMap(Map<String, dynamic> data) => BookingsStruct(
        resName: data['res_name'] as String?,
        status: data['status'] as String?,
        date: data['date'] as DateTime?,
      );

  static BookingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? BookingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'res_name': _resName,
        'status': _status,
        'date': _date,
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
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static BookingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingsStruct(
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
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'BookingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingsStruct &&
        resName == other.resName &&
        status == other.status &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([resName, status, date]);
}

BookingsStruct createBookingsStruct({
  String? resName,
  String? status,
  DateTime? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BookingsStruct(
      resName: resName,
      status: status,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BookingsStruct? updateBookingsStruct(
  BookingsStruct? bookings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    bookings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBookingsStructData(
  Map<String, dynamic> firestoreData,
  BookingsStruct? bookings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (bookings == null) {
    return;
  }
  if (bookings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && bookings.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final bookingsData = getBookingsFirestoreData(bookings, forFieldValue);
  final nestedData = bookingsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = bookings.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBookingsFirestoreData(
  BookingsStruct? bookings, [
  bool forFieldValue = false,
]) {
  if (bookings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(bookings.toMap());

  // Add any Firestore field values
  bookings.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBookingsListFirestoreData(
  List<BookingsStruct>? bookingss,
) =>
    bookingss?.map((e) => getBookingsFirestoreData(e, true)).toList() ?? [];
