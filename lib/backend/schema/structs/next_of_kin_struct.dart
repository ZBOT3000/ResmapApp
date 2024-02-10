// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NextOfKinStruct extends FFFirebaseStruct {
  NextOfKinStruct({
    String? fullNames,
    String? relationship,
    String? contacts,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fullNames = fullNames,
        _relationship = relationship,
        _contacts = contacts,
        super(firestoreUtilData);

  // "fullNames" field.
  String? _fullNames;
  String get fullNames => _fullNames ?? '';
  set fullNames(String? val) => _fullNames = val;
  bool hasFullNames() => _fullNames != null;

  // "relationship" field.
  String? _relationship;
  String get relationship => _relationship ?? '';
  set relationship(String? val) => _relationship = val;
  bool hasRelationship() => _relationship != null;

  // "contacts" field.
  String? _contacts;
  String get contacts => _contacts ?? '';
  set contacts(String? val) => _contacts = val;
  bool hasContacts() => _contacts != null;

  static NextOfKinStruct fromMap(Map<String, dynamic> data) => NextOfKinStruct(
        fullNames: data['fullNames'] as String?,
        relationship: data['relationship'] as String?,
        contacts: data['contacts'] as String?,
      );

  static NextOfKinStruct? maybeFromMap(dynamic data) => data is Map
      ? NextOfKinStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fullNames': _fullNames,
        'relationship': _relationship,
        'contacts': _contacts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fullNames': serializeParam(
          _fullNames,
          ParamType.String,
        ),
        'relationship': serializeParam(
          _relationship,
          ParamType.String,
        ),
        'contacts': serializeParam(
          _contacts,
          ParamType.String,
        ),
      }.withoutNulls;

  static NextOfKinStruct fromSerializableMap(Map<String, dynamic> data) =>
      NextOfKinStruct(
        fullNames: deserializeParam(
          data['fullNames'],
          ParamType.String,
          false,
        ),
        relationship: deserializeParam(
          data['relationship'],
          ParamType.String,
          false,
        ),
        contacts: deserializeParam(
          data['contacts'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NextOfKinStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NextOfKinStruct &&
        fullNames == other.fullNames &&
        relationship == other.relationship &&
        contacts == other.contacts;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullNames, relationship, contacts]);
}

NextOfKinStruct createNextOfKinStruct({
  String? fullNames,
  String? relationship,
  String? contacts,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NextOfKinStruct(
      fullNames: fullNames,
      relationship: relationship,
      contacts: contacts,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NextOfKinStruct? updateNextOfKinStruct(
  NextOfKinStruct? nextOfKin, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nextOfKin
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNextOfKinStructData(
  Map<String, dynamic> firestoreData,
  NextOfKinStruct? nextOfKin,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nextOfKin == null) {
    return;
  }
  if (nextOfKin.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nextOfKin.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nextOfKinData = getNextOfKinFirestoreData(nextOfKin, forFieldValue);
  final nestedData = nextOfKinData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nextOfKin.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNextOfKinFirestoreData(
  NextOfKinStruct? nextOfKin, [
  bool forFieldValue = false,
]) {
  if (nextOfKin == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nextOfKin.toMap());

  // Add any Firestore field values
  nextOfKin.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNextOfKinListFirestoreData(
  List<NextOfKinStruct>? nextOfKins,
) =>
    nextOfKins?.map((e) => getNextOfKinFirestoreData(e, true)).toList() ?? [];
