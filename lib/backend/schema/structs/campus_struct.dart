// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampusStruct extends FFFirebaseStruct {
  CampusStruct({
    String? name,
    LatLng? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _address = address,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  set address(LatLng? val) => _address = val;
  bool hasAddress() => _address != null;

  static CampusStruct fromMap(Map<String, dynamic> data) => CampusStruct(
        name: data['name'] as String?,
        address: data['address'] as LatLng?,
      );

  static CampusStruct? maybeFromMap(dynamic data) =>
      data is Map ? CampusStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static CampusStruct fromSerializableMap(Map<String, dynamic> data) =>
      CampusStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'CampusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CampusStruct &&
        name == other.name &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([name, address]);
}

CampusStruct createCampusStruct({
  String? name,
  LatLng? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CampusStruct(
      name: name,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CampusStruct? updateCampusStruct(
  CampusStruct? campus, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    campus
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCampusStructData(
  Map<String, dynamic> firestoreData,
  CampusStruct? campus,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (campus == null) {
    return;
  }
  if (campus.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && campus.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final campusData = getCampusFirestoreData(campus, forFieldValue);
  final nestedData = campusData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = campus.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCampusFirestoreData(
  CampusStruct? campus, [
  bool forFieldValue = false,
]) {
  if (campus == null) {
    return {};
  }
  final firestoreData = mapToFirestore(campus.toMap());

  // Add any Firestore field values
  campus.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCampusListFirestoreData(
  List<CampusStruct>? campuss,
) =>
    campuss?.map((e) => getCampusFirestoreData(e, true)).toList() ?? [];
