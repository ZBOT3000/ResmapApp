// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PersonalStruct extends FFFirebaseStruct {
  PersonalStruct({
    String? fullnames,
    String? idNumber,
    String? gender,
    String? age,
    String? studentNo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fullnames = fullnames,
        _idNumber = idNumber,
        _gender = gender,
        _age = age,
        _studentNo = studentNo,
        super(firestoreUtilData);

  // "fullnames" field.
  String? _fullnames;
  String get fullnames => _fullnames ?? '';
  set fullnames(String? val) => _fullnames = val;
  bool hasFullnames() => _fullnames != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  set idNumber(String? val) => _idNumber = val;
  bool hasIdNumber() => _idNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  set age(String? val) => _age = val;
  bool hasAge() => _age != null;

  // "studentNo" field.
  String? _studentNo;
  String get studentNo => _studentNo ?? '';
  set studentNo(String? val) => _studentNo = val;
  bool hasStudentNo() => _studentNo != null;

  static PersonalStruct fromMap(Map<String, dynamic> data) => PersonalStruct(
        fullnames: data['fullnames'] as String?,
        idNumber: data['idNumber'] as String?,
        gender: data['gender'] as String?,
        age: data['age'] as String?,
        studentNo: data['studentNo'] as String?,
      );

  static PersonalStruct? maybeFromMap(dynamic data) =>
      data is Map ? PersonalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fullnames': _fullnames,
        'idNumber': _idNumber,
        'gender': _gender,
        'age': _age,
        'studentNo': _studentNo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fullnames': serializeParam(
          _fullnames,
          ParamType.String,
        ),
        'idNumber': serializeParam(
          _idNumber,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.String,
        ),
        'studentNo': serializeParam(
          _studentNo,
          ParamType.String,
        ),
      }.withoutNulls;

  static PersonalStruct fromSerializableMap(Map<String, dynamic> data) =>
      PersonalStruct(
        fullnames: deserializeParam(
          data['fullnames'],
          ParamType.String,
          false,
        ),
        idNumber: deserializeParam(
          data['idNumber'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.String,
          false,
        ),
        studentNo: deserializeParam(
          data['studentNo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PersonalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PersonalStruct &&
        fullnames == other.fullnames &&
        idNumber == other.idNumber &&
        gender == other.gender &&
        age == other.age &&
        studentNo == other.studentNo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullnames, idNumber, gender, age, studentNo]);
}

PersonalStruct createPersonalStruct({
  String? fullnames,
  String? idNumber,
  String? gender,
  String? age,
  String? studentNo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PersonalStruct(
      fullnames: fullnames,
      idNumber: idNumber,
      gender: gender,
      age: age,
      studentNo: studentNo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PersonalStruct? updatePersonalStruct(
  PersonalStruct? personal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    personal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPersonalStructData(
  Map<String, dynamic> firestoreData,
  PersonalStruct? personal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (personal == null) {
    return;
  }
  if (personal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && personal.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final personalData = getPersonalFirestoreData(personal, forFieldValue);
  final nestedData = personalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = personal.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPersonalFirestoreData(
  PersonalStruct? personal, [
  bool forFieldValue = false,
]) {
  if (personal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(personal.toMap());

  // Add any Firestore field values
  personal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPersonalListFirestoreData(
  List<PersonalStruct>? personals,
) =>
    personals?.map((e) => getPersonalFirestoreData(e, true)).toList() ?? [];
