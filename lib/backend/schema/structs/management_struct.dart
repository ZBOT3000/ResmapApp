// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ManagementStruct extends FFFirebaseStruct {
  ManagementStruct({
    String? name,
    String? number,
    String? email,
    String? company,
    DocumentReference? admin,
    DocumentReference? adminRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _number = number,
        _email = email,
        _company = company,
        _admin = admin,
        _adminRef = adminRef,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;
  bool hasNumber() => _number != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  set company(String? val) => _company = val;
  bool hasCompany() => _company != null;

  // "admin" field.
  DocumentReference? _admin;
  DocumentReference? get admin => _admin;
  set admin(DocumentReference? val) => _admin = val;
  bool hasAdmin() => _admin != null;

  // "admin_ref" field.
  DocumentReference? _adminRef;
  DocumentReference? get adminRef => _adminRef;
  set adminRef(DocumentReference? val) => _adminRef = val;
  bool hasAdminRef() => _adminRef != null;

  static ManagementStruct fromMap(Map<String, dynamic> data) =>
      ManagementStruct(
        name: data['name'] as String?,
        number: data['number'] as String?,
        email: data['email'] as String?,
        company: data['company'] as String?,
        admin: data['admin'] as DocumentReference?,
        adminRef: data['admin_ref'] as DocumentReference?,
      );

  static ManagementStruct? maybeFromMap(dynamic data) => data is Map
      ? ManagementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'number': _number,
        'email': _email,
        'company': _company,
        'admin': _admin,
        'admin_ref': _adminRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'company': serializeParam(
          _company,
          ParamType.String,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.DocumentReference,
        ),
        'admin_ref': serializeParam(
          _adminRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ManagementStruct fromSerializableMap(Map<String, dynamic> data) =>
      ManagementStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        company: deserializeParam(
          data['company'],
          ParamType.String,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        adminRef: deserializeParam(
          data['admin_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'ManagementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ManagementStruct &&
        name == other.name &&
        number == other.number &&
        email == other.email &&
        company == other.company &&
        admin == other.admin &&
        adminRef == other.adminRef;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, number, email, company, admin, adminRef]);
}

ManagementStruct createManagementStruct({
  String? name,
  String? number,
  String? email,
  String? company,
  DocumentReference? admin,
  DocumentReference? adminRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ManagementStruct(
      name: name,
      number: number,
      email: email,
      company: company,
      admin: admin,
      adminRef: adminRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ManagementStruct? updateManagementStruct(
  ManagementStruct? management, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    management
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addManagementStructData(
  Map<String, dynamic> firestoreData,
  ManagementStruct? management,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (management == null) {
    return;
  }
  if (management.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && management.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final managementData = getManagementFirestoreData(management, forFieldValue);
  final nestedData = managementData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = management.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getManagementFirestoreData(
  ManagementStruct? management, [
  bool forFieldValue = false,
]) {
  if (management == null) {
    return {};
  }
  final firestoreData = mapToFirestore(management.toMap());

  // Add any Firestore field values
  management.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getManagementListFirestoreData(
  List<ManagementStruct>? managements,
) =>
    managements?.map((e) => getManagementFirestoreData(e, true)).toList() ?? [];
