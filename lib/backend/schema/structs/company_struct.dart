// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends FFFirebaseStruct {
  CompanyStruct({
    String? name,
    DateTime? joined,
    List<String>? members,
    String? logo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _joined = joined,
        _members = members,
        _logo = logo,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "joined" field.
  DateTime? _joined;
  DateTime? get joined => _joined;
  set joined(DateTime? val) => _joined = val;
  bool hasJoined() => _joined != null;

  // "members" field.
  List<String>? _members;
  List<String> get members => _members ?? const [];
  set members(List<String>? val) => _members = val;
  void updateMembers(Function(List<String>) updateFn) =>
      updateFn(_members ??= []);
  bool hasMembers() => _members != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        name: data['name'] as String?,
        joined: data['joined'] as DateTime?,
        members: getDataList(data['members']),
        logo: data['logo'] as String?,
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'joined': _joined,
        'members': _members,
        'logo': _logo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'joined': serializeParam(
          _joined,
          ParamType.DateTime,
        ),
        'members': serializeParam(
          _members,
          ParamType.String,
          true,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        joined: deserializeParam(
          data['joined'],
          ParamType.DateTime,
          false,
        ),
        members: deserializeParam<String>(
          data['members'],
          ParamType.String,
          true,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStruct &&
        name == other.name &&
        joined == other.joined &&
        listEquality.equals(members, other.members) &&
        logo == other.logo;
  }

  @override
  int get hashCode => const ListEquality().hash([name, joined, members, logo]);
}

CompanyStruct createCompanyStruct({
  String? name,
  DateTime? joined,
  String? logo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyStruct(
      name: name,
      joined: joined,
      logo: logo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyStruct? updateCompanyStruct(
  CompanyStruct? company, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    company
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyStructData(
  Map<String, dynamic> firestoreData,
  CompanyStruct? company,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (company == null) {
    return;
  }
  if (company.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && company.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyData = getCompanyFirestoreData(company, forFieldValue);
  final nestedData = companyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = company.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyFirestoreData(
  CompanyStruct? company, [
  bool forFieldValue = false,
]) {
  if (company == null) {
    return {};
  }
  final firestoreData = mapToFirestore(company.toMap());

  // Add any Firestore field values
  company.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyListFirestoreData(
  List<CompanyStruct>? companys,
) =>
    companys?.map((e) => getCompanyFirestoreData(e, true)).toList() ?? [];
