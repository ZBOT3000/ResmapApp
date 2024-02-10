// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InstitutionStruct extends FFFirebaseStruct {
  InstitutionStruct({
    String? studentNumber,
    String? proofOfReg,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _studentNumber = studentNumber,
        _proofOfReg = proofOfReg,
        super(firestoreUtilData);

  // "studentNumber" field.
  String? _studentNumber;
  String get studentNumber => _studentNumber ?? '';
  set studentNumber(String? val) => _studentNumber = val;
  bool hasStudentNumber() => _studentNumber != null;

  // "proofOfReg" field.
  String? _proofOfReg;
  String get proofOfReg => _proofOfReg ?? '';
  set proofOfReg(String? val) => _proofOfReg = val;
  bool hasProofOfReg() => _proofOfReg != null;

  static InstitutionStruct fromMap(Map<String, dynamic> data) =>
      InstitutionStruct(
        studentNumber: data['studentNumber'] as String?,
        proofOfReg: data['proofOfReg'] as String?,
      );

  static InstitutionStruct? maybeFromMap(dynamic data) => data is Map
      ? InstitutionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'studentNumber': _studentNumber,
        'proofOfReg': _proofOfReg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'studentNumber': serializeParam(
          _studentNumber,
          ParamType.String,
        ),
        'proofOfReg': serializeParam(
          _proofOfReg,
          ParamType.String,
        ),
      }.withoutNulls;

  static InstitutionStruct fromSerializableMap(Map<String, dynamic> data) =>
      InstitutionStruct(
        studentNumber: deserializeParam(
          data['studentNumber'],
          ParamType.String,
          false,
        ),
        proofOfReg: deserializeParam(
          data['proofOfReg'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InstitutionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstitutionStruct &&
        studentNumber == other.studentNumber &&
        proofOfReg == other.proofOfReg;
  }

  @override
  int get hashCode => const ListEquality().hash([studentNumber, proofOfReg]);
}

InstitutionStruct createInstitutionStruct({
  String? studentNumber,
  String? proofOfReg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstitutionStruct(
      studentNumber: studentNumber,
      proofOfReg: proofOfReg,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstitutionStruct? updateInstitutionStruct(
  InstitutionStruct? institution, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    institution
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstitutionStructData(
  Map<String, dynamic> firestoreData,
  InstitutionStruct? institution,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (institution == null) {
    return;
  }
  if (institution.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && institution.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final institutionData =
      getInstitutionFirestoreData(institution, forFieldValue);
  final nestedData =
      institutionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = institution.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstitutionFirestoreData(
  InstitutionStruct? institution, [
  bool forFieldValue = false,
]) {
  if (institution == null) {
    return {};
  }
  final firestoreData = mapToFirestore(institution.toMap());

  // Add any Firestore field values
  institution.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstitutionListFirestoreData(
  List<InstitutionStruct>? institutions,
) =>
    institutions?.map((e) => getInstitutionFirestoreData(e, true)).toList() ??
    [];
