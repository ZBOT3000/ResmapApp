// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? streetName,
    String? city,
    String? country,
    String? name,
    String? zip,
    LatLng? latlong,
    String? province,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _streetName = streetName,
        _city = city,
        _country = country,
        _name = name,
        _zip = zip,
        _latlong = latlong,
        _province = province,
        super(firestoreUtilData);

  // "streetName" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  set streetName(String? val) => _streetName = val;
  bool hasStreetName() => _streetName != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  set zip(String? val) => _zip = val;
  bool hasZip() => _zip != null;

  // "latlong" field.
  LatLng? _latlong;
  LatLng? get latlong => _latlong;
  set latlong(LatLng? val) => _latlong = val;
  bool hasLatlong() => _latlong != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;
  bool hasProvince() => _province != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        streetName: data['streetName'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        name: data['name'] as String?,
        zip: data['zip'] as String?,
        latlong: data['latlong'] as LatLng?,
        province: data['province'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'streetName': _streetName,
        'city': _city,
        'country': _country,
        'name': _name,
        'zip': _zip,
        'latlong': _latlong,
        'province': _province,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'streetName': serializeParam(
          _streetName,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'zip': serializeParam(
          _zip,
          ParamType.String,
        ),
        'latlong': serializeParam(
          _latlong,
          ParamType.LatLng,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        streetName: deserializeParam(
          data['streetName'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        zip: deserializeParam(
          data['zip'],
          ParamType.String,
          false,
        ),
        latlong: deserializeParam(
          data['latlong'],
          ParamType.LatLng,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        streetName == other.streetName &&
        city == other.city &&
        country == other.country &&
        name == other.name &&
        zip == other.zip &&
        latlong == other.latlong &&
        province == other.province;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([streetName, city, country, name, zip, latlong, province]);
}

AddressStruct createAddressStruct({
  String? streetName,
  String? city,
  String? country,
  String? name,
  String? zip,
  LatLng? latlong,
  String? province,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      streetName: streetName,
      city: city,
      country: country,
      name: name,
      zip: zip,
      latlong: latlong,
      province: province,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
