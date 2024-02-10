// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CameraPositionStruct extends FFFirebaseStruct {
  CameraPositionStruct({
    LatLng? target,
    double? zoom,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _target = target,
        _zoom = zoom,
        super(firestoreUtilData);

  // "target" field.
  LatLng? _target;
  LatLng? get target => _target;
  set target(LatLng? val) => _target = val;
  bool hasTarget() => _target != null;

  // "zoom" field.
  double? _zoom;
  double get zoom => _zoom ?? 0.0;
  set zoom(double? val) => _zoom = val;
  void incrementZoom(double amount) => _zoom = zoom + amount;
  bool hasZoom() => _zoom != null;

  static CameraPositionStruct fromMap(Map<String, dynamic> data) =>
      CameraPositionStruct(
        target: data['target'] as LatLng?,
        zoom: castToType<double>(data['zoom']),
      );

  static CameraPositionStruct? maybeFromMap(dynamic data) => data is Map
      ? CameraPositionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'target': _target,
        'zoom': _zoom,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'target': serializeParam(
          _target,
          ParamType.LatLng,
        ),
        'zoom': serializeParam(
          _zoom,
          ParamType.double,
        ),
      }.withoutNulls;

  static CameraPositionStruct fromSerializableMap(Map<String, dynamic> data) =>
      CameraPositionStruct(
        target: deserializeParam(
          data['target'],
          ParamType.LatLng,
          false,
        ),
        zoom: deserializeParam(
          data['zoom'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CameraPositionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CameraPositionStruct &&
        target == other.target &&
        zoom == other.zoom;
  }

  @override
  int get hashCode => const ListEquality().hash([target, zoom]);
}

CameraPositionStruct createCameraPositionStruct({
  LatLng? target,
  double? zoom,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CameraPositionStruct(
      target: target,
      zoom: zoom,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CameraPositionStruct? updateCameraPositionStruct(
  CameraPositionStruct? cameraPosition, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cameraPosition
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCameraPositionStructData(
  Map<String, dynamic> firestoreData,
  CameraPositionStruct? cameraPosition,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cameraPosition == null) {
    return;
  }
  if (cameraPosition.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cameraPosition.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cameraPositionData =
      getCameraPositionFirestoreData(cameraPosition, forFieldValue);
  final nestedData =
      cameraPositionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cameraPosition.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCameraPositionFirestoreData(
  CameraPositionStruct? cameraPosition, [
  bool forFieldValue = false,
]) {
  if (cameraPosition == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cameraPosition.toMap());

  // Add any Firestore field values
  cameraPosition.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCameraPositionListFirestoreData(
  List<CameraPositionStruct>? cameraPositions,
) =>
    cameraPositions
        ?.map((e) => getCameraPositionFirestoreData(e, true))
        .toList() ??
    [];
