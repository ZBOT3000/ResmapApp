// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DocumentsStruct extends FFFirebaseStruct {
  DocumentsStruct({
    String? identity,
    String? studentCard,
    String? funding,
    String? registration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _identity = identity,
        _studentCard = studentCard,
        _funding = funding,
        _registration = registration,
        super(firestoreUtilData);

  // "identity" field.
  String? _identity;
  String get identity => _identity ?? '';
  set identity(String? val) => _identity = val;
  bool hasIdentity() => _identity != null;

  // "studentCard" field.
  String? _studentCard;
  String get studentCard => _studentCard ?? '';
  set studentCard(String? val) => _studentCard = val;
  bool hasStudentCard() => _studentCard != null;

  // "funding" field.
  String? _funding;
  String get funding => _funding ?? '';
  set funding(String? val) => _funding = val;
  bool hasFunding() => _funding != null;

  // "registration" field.
  String? _registration;
  String get registration => _registration ?? '';
  set registration(String? val) => _registration = val;
  bool hasRegistration() => _registration != null;

  static DocumentsStruct fromMap(Map<String, dynamic> data) => DocumentsStruct(
        identity: data['identity'] as String?,
        studentCard: data['studentCard'] as String?,
        funding: data['funding'] as String?,
        registration: data['registration'] as String?,
      );

  static DocumentsStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identity': _identity,
        'studentCard': _studentCard,
        'funding': _funding,
        'registration': _registration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identity': serializeParam(
          _identity,
          ParamType.String,
        ),
        'studentCard': serializeParam(
          _studentCard,
          ParamType.String,
        ),
        'funding': serializeParam(
          _funding,
          ParamType.String,
        ),
        'registration': serializeParam(
          _registration,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentsStruct(
        identity: deserializeParam(
          data['identity'],
          ParamType.String,
          false,
        ),
        studentCard: deserializeParam(
          data['studentCard'],
          ParamType.String,
          false,
        ),
        funding: deserializeParam(
          data['funding'],
          ParamType.String,
          false,
        ),
        registration: deserializeParam(
          data['registration'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentsStruct &&
        identity == other.identity &&
        studentCard == other.studentCard &&
        funding == other.funding &&
        registration == other.registration;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([identity, studentCard, funding, registration]);
}

DocumentsStruct createDocumentsStruct({
  String? identity,
  String? studentCard,
  String? funding,
  String? registration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentsStruct(
      identity: identity,
      studentCard: studentCard,
      funding: funding,
      registration: registration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentsStruct? updateDocumentsStruct(
  DocumentsStruct? documents, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    documents
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentsStructData(
  Map<String, dynamic> firestoreData,
  DocumentsStruct? documents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documents == null) {
    return;
  }
  if (documents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentsData = getDocumentsFirestoreData(documents, forFieldValue);
  final nestedData = documentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documents.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentsFirestoreData(
  DocumentsStruct? documents, [
  bool forFieldValue = false,
]) {
  if (documents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documents.toMap());

  // Add any Firestore field values
  documents.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentsListFirestoreData(
  List<DocumentsStruct>? documentss,
) =>
    documentss?.map((e) => getDocumentsFirestoreData(e, true)).toList() ?? [];
