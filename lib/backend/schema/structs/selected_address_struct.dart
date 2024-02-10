// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedAddressStruct extends FFFirebaseStruct {
  SelectedAddressStruct({
    LatLng? location,
    String? country,
    String? countryCode,
    String? city,
    String? streetName,
    String? postalCode,
    String? province,
    String? fullAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _location = location,
        _country = country,
        _countryCode = countryCode,
        _city = city,
        _streetName = streetName,
        _postalCode = postalCode,
        _province = province,
        _fullAddress = fullAddress,
        super(firestoreUtilData);

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;
  bool hasLocation() => _location != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "streetName" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  set streetName(String? val) => _streetName = val;
  bool hasStreetName() => _streetName != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;
  bool hasPostalCode() => _postalCode != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;
  bool hasProvince() => _province != null;

  // "fullAddress" field.
  String? _fullAddress;
  String get fullAddress => _fullAddress ?? '';
  set fullAddress(String? val) => _fullAddress = val;
  bool hasFullAddress() => _fullAddress != null;

  static SelectedAddressStruct fromMap(Map<String, dynamic> data) =>
      SelectedAddressStruct(
        location: data['location'] as LatLng?,
        country: data['country'] as String?,
        countryCode: data['countryCode'] as String?,
        city: data['city'] as String?,
        streetName: data['streetName'] as String?,
        postalCode: data['postalCode'] as String?,
        province: data['province'] as String?,
        fullAddress: data['fullAddress'] as String?,
      );

  static SelectedAddressStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedAddressStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'location': _location,
        'country': _country,
        'countryCode': _countryCode,
        'city': _city,
        'streetName': _streetName,
        'postalCode': _postalCode,
        'province': _province,
        'fullAddress': _fullAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'streetName': serializeParam(
          _streetName,
          ParamType.String,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
        'fullAddress': serializeParam(
          _fullAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelectedAddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedAddressStruct(
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        streetName: deserializeParam(
          data['streetName'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.String,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
        fullAddress: deserializeParam(
          data['fullAddress'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelectedAddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedAddressStruct &&
        location == other.location &&
        country == other.country &&
        countryCode == other.countryCode &&
        city == other.city &&
        streetName == other.streetName &&
        postalCode == other.postalCode &&
        province == other.province &&
        fullAddress == other.fullAddress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        location,
        country,
        countryCode,
        city,
        streetName,
        postalCode,
        province,
        fullAddress
      ]);
}

SelectedAddressStruct createSelectedAddressStruct({
  LatLng? location,
  String? country,
  String? countryCode,
  String? city,
  String? streetName,
  String? postalCode,
  String? province,
  String? fullAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedAddressStruct(
      location: location,
      country: country,
      countryCode: countryCode,
      city: city,
      streetName: streetName,
      postalCode: postalCode,
      province: province,
      fullAddress: fullAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedAddressStruct? updateSelectedAddressStruct(
  SelectedAddressStruct? selectedAddress, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedAddress
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedAddressStructData(
  Map<String, dynamic> firestoreData,
  SelectedAddressStruct? selectedAddress,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedAddress == null) {
    return;
  }
  if (selectedAddress.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedAddress.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedAddressData =
      getSelectedAddressFirestoreData(selectedAddress, forFieldValue);
  final nestedData =
      selectedAddressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedAddress.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedAddressFirestoreData(
  SelectedAddressStruct? selectedAddress, [
  bool forFieldValue = false,
]) {
  if (selectedAddress == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedAddress.toMap());

  // Add any Firestore field values
  selectedAddress.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedAddressListFirestoreData(
  List<SelectedAddressStruct>? selectedAddresss,
) =>
    selectedAddresss
        ?.map((e) => getSelectedAddressFirestoreData(e, true))
        .toList() ??
    [];
