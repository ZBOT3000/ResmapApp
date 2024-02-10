// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomTypesStruct extends FFFirebaseStruct {
  RoomTypesStruct({
    String? roomName,
    String? roomPrice,
    String? roomDescription,
    List<String>? roomPictures,
    String? noPeople,
    List<String>? furniture,
    String? furnishType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _roomName = roomName,
        _roomPrice = roomPrice,
        _roomDescription = roomDescription,
        _roomPictures = roomPictures,
        _noPeople = noPeople,
        _furniture = furniture,
        _furnishType = furnishType,
        super(firestoreUtilData);

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  set roomName(String? val) => _roomName = val;
  bool hasRoomName() => _roomName != null;

  // "room_price" field.
  String? _roomPrice;
  String get roomPrice => _roomPrice ?? '';
  set roomPrice(String? val) => _roomPrice = val;
  bool hasRoomPrice() => _roomPrice != null;

  // "room_description" field.
  String? _roomDescription;
  String get roomDescription => _roomDescription ?? '';
  set roomDescription(String? val) => _roomDescription = val;
  bool hasRoomDescription() => _roomDescription != null;

  // "room_pictures" field.
  List<String>? _roomPictures;
  List<String> get roomPictures => _roomPictures ?? const [];
  set roomPictures(List<String>? val) => _roomPictures = val;
  void updateRoomPictures(Function(List<String>) updateFn) =>
      updateFn(_roomPictures ??= []);
  bool hasRoomPictures() => _roomPictures != null;

  // "no_People" field.
  String? _noPeople;
  String get noPeople => _noPeople ?? '';
  set noPeople(String? val) => _noPeople = val;
  bool hasNoPeople() => _noPeople != null;

  // "furniture" field.
  List<String>? _furniture;
  List<String> get furniture => _furniture ?? const [];
  set furniture(List<String>? val) => _furniture = val;
  void updateFurniture(Function(List<String>) updateFn) =>
      updateFn(_furniture ??= []);
  bool hasFurniture() => _furniture != null;

  // "furnish_Type" field.
  String? _furnishType;
  String get furnishType => _furnishType ?? '';
  set furnishType(String? val) => _furnishType = val;
  bool hasFurnishType() => _furnishType != null;

  static RoomTypesStruct fromMap(Map<String, dynamic> data) => RoomTypesStruct(
        roomName: data['room_name'] as String?,
        roomPrice: data['room_price'] as String?,
        roomDescription: data['room_description'] as String?,
        roomPictures: getDataList(data['room_pictures']),
        noPeople: data['no_People'] as String?,
        furniture: getDataList(data['furniture']),
        furnishType: data['furnish_Type'] as String?,
      );

  static RoomTypesStruct? maybeFromMap(dynamic data) => data is Map
      ? RoomTypesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'room_name': _roomName,
        'room_price': _roomPrice,
        'room_description': _roomDescription,
        'room_pictures': _roomPictures,
        'no_People': _noPeople,
        'furniture': _furniture,
        'furnish_Type': _furnishType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'room_name': serializeParam(
          _roomName,
          ParamType.String,
        ),
        'room_price': serializeParam(
          _roomPrice,
          ParamType.String,
        ),
        'room_description': serializeParam(
          _roomDescription,
          ParamType.String,
        ),
        'room_pictures': serializeParam(
          _roomPictures,
          ParamType.String,
          true,
        ),
        'no_People': serializeParam(
          _noPeople,
          ParamType.String,
        ),
        'furniture': serializeParam(
          _furniture,
          ParamType.String,
          true,
        ),
        'furnish_Type': serializeParam(
          _furnishType,
          ParamType.String,
        ),
      }.withoutNulls;

  static RoomTypesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoomTypesStruct(
        roomName: deserializeParam(
          data['room_name'],
          ParamType.String,
          false,
        ),
        roomPrice: deserializeParam(
          data['room_price'],
          ParamType.String,
          false,
        ),
        roomDescription: deserializeParam(
          data['room_description'],
          ParamType.String,
          false,
        ),
        roomPictures: deserializeParam<String>(
          data['room_pictures'],
          ParamType.String,
          true,
        ),
        noPeople: deserializeParam(
          data['no_People'],
          ParamType.String,
          false,
        ),
        furniture: deserializeParam<String>(
          data['furniture'],
          ParamType.String,
          true,
        ),
        furnishType: deserializeParam(
          data['furnish_Type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RoomTypesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RoomTypesStruct &&
        roomName == other.roomName &&
        roomPrice == other.roomPrice &&
        roomDescription == other.roomDescription &&
        listEquality.equals(roomPictures, other.roomPictures) &&
        noPeople == other.noPeople &&
        listEquality.equals(furniture, other.furniture) &&
        furnishType == other.furnishType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        roomName,
        roomPrice,
        roomDescription,
        roomPictures,
        noPeople,
        furniture,
        furnishType
      ]);
}

RoomTypesStruct createRoomTypesStruct({
  String? roomName,
  String? roomPrice,
  String? roomDescription,
  String? noPeople,
  String? furnishType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoomTypesStruct(
      roomName: roomName,
      roomPrice: roomPrice,
      roomDescription: roomDescription,
      noPeople: noPeople,
      furnishType: furnishType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoomTypesStruct? updateRoomTypesStruct(
  RoomTypesStruct? roomTypes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    roomTypes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoomTypesStructData(
  Map<String, dynamic> firestoreData,
  RoomTypesStruct? roomTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roomTypes == null) {
    return;
  }
  if (roomTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && roomTypes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roomTypesData = getRoomTypesFirestoreData(roomTypes, forFieldValue);
  final nestedData = roomTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = roomTypes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoomTypesFirestoreData(
  RoomTypesStruct? roomTypes, [
  bool forFieldValue = false,
]) {
  if (roomTypes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(roomTypes.toMap());

  // Add any Firestore field values
  roomTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoomTypesListFirestoreData(
  List<RoomTypesStruct>? roomTypess,
) =>
    roomTypess?.map((e) => getRoomTypesFirestoreData(e, true)).toList() ?? [];
