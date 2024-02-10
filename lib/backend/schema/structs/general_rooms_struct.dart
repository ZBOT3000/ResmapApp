// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralRoomsStruct extends FFFirebaseStruct {
  GeneralRoomsStruct({
    List<String>? gallery,
    String? lowestPrice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _gallery = gallery,
        _lowestPrice = lowestPrice,
        super(firestoreUtilData);

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  set gallery(List<String>? val) => _gallery = val;
  void updateGallery(Function(List<String>) updateFn) =>
      updateFn(_gallery ??= []);
  bool hasGallery() => _gallery != null;

  // "lowest_Price" field.
  String? _lowestPrice;
  String get lowestPrice => _lowestPrice ?? '';
  set lowestPrice(String? val) => _lowestPrice = val;
  bool hasLowestPrice() => _lowestPrice != null;

  static GeneralRoomsStruct fromMap(Map<String, dynamic> data) =>
      GeneralRoomsStruct(
        gallery: getDataList(data['gallery']),
        lowestPrice: data['lowest_Price'] as String?,
      );

  static GeneralRoomsStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneralRoomsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'gallery': _gallery,
        'lowest_Price': _lowestPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gallery': serializeParam(
          _gallery,
          ParamType.String,
          true,
        ),
        'lowest_Price': serializeParam(
          _lowestPrice,
          ParamType.String,
        ),
      }.withoutNulls;

  static GeneralRoomsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeneralRoomsStruct(
        gallery: deserializeParam<String>(
          data['gallery'],
          ParamType.String,
          true,
        ),
        lowestPrice: deserializeParam(
          data['lowest_Price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GeneralRoomsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GeneralRoomsStruct &&
        listEquality.equals(gallery, other.gallery) &&
        lowestPrice == other.lowestPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([gallery, lowestPrice]);
}

GeneralRoomsStruct createGeneralRoomsStruct({
  String? lowestPrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeneralRoomsStruct(
      lowestPrice: lowestPrice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeneralRoomsStruct? updateGeneralRoomsStruct(
  GeneralRoomsStruct? generalRooms, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    generalRooms
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeneralRoomsStructData(
  Map<String, dynamic> firestoreData,
  GeneralRoomsStruct? generalRooms,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (generalRooms == null) {
    return;
  }
  if (generalRooms.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && generalRooms.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final generalRoomsData =
      getGeneralRoomsFirestoreData(generalRooms, forFieldValue);
  final nestedData =
      generalRoomsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = generalRooms.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeneralRoomsFirestoreData(
  GeneralRoomsStruct? generalRooms, [
  bool forFieldValue = false,
]) {
  if (generalRooms == null) {
    return {};
  }
  final firestoreData = mapToFirestore(generalRooms.toMap());

  // Add any Firestore field values
  generalRooms.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeneralRoomsListFirestoreData(
  List<GeneralRoomsStruct>? generalRoomss,
) =>
    generalRoomss?.map((e) => getGeneralRoomsFirestoreData(e, true)).toList() ??
    [];
