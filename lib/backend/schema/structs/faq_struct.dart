// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FaqStruct extends FFFirebaseStruct {
  FaqStruct({
    String? howToBook,
    String? cleaningServices,
    String? parkingAvailable,
    String? additionalInfo,
    String? cancellationPolicy,
    String? houseRules,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _howToBook = howToBook,
        _cleaningServices = cleaningServices,
        _parkingAvailable = parkingAvailable,
        _additionalInfo = additionalInfo,
        _cancellationPolicy = cancellationPolicy,
        _houseRules = houseRules,
        super(firestoreUtilData);

  // "how_to_book" field.
  String? _howToBook;
  String get howToBook => _howToBook ?? '';
  set howToBook(String? val) => _howToBook = val;
  bool hasHowToBook() => _howToBook != null;

  // "cleaning_services" field.
  String? _cleaningServices;
  String get cleaningServices => _cleaningServices ?? '';
  set cleaningServices(String? val) => _cleaningServices = val;
  bool hasCleaningServices() => _cleaningServices != null;

  // "parking_available" field.
  String? _parkingAvailable;
  String get parkingAvailable => _parkingAvailable ?? '';
  set parkingAvailable(String? val) => _parkingAvailable = val;
  bool hasParkingAvailable() => _parkingAvailable != null;

  // "additional_info" field.
  String? _additionalInfo;
  String get additionalInfo => _additionalInfo ?? '';
  set additionalInfo(String? val) => _additionalInfo = val;
  bool hasAdditionalInfo() => _additionalInfo != null;

  // "cancellation_policy" field.
  String? _cancellationPolicy;
  String get cancellationPolicy => _cancellationPolicy ?? '';
  set cancellationPolicy(String? val) => _cancellationPolicy = val;
  bool hasCancellationPolicy() => _cancellationPolicy != null;

  // "house_rules" field.
  String? _houseRules;
  String get houseRules => _houseRules ?? '';
  set houseRules(String? val) => _houseRules = val;
  bool hasHouseRules() => _houseRules != null;

  static FaqStruct fromMap(Map<String, dynamic> data) => FaqStruct(
        howToBook: data['how_to_book'] as String?,
        cleaningServices: data['cleaning_services'] as String?,
        parkingAvailable: data['parking_available'] as String?,
        additionalInfo: data['additional_info'] as String?,
        cancellationPolicy: data['cancellation_policy'] as String?,
        houseRules: data['house_rules'] as String?,
      );

  static FaqStruct? maybeFromMap(dynamic data) =>
      data is Map ? FaqStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'how_to_book': _howToBook,
        'cleaning_services': _cleaningServices,
        'parking_available': _parkingAvailable,
        'additional_info': _additionalInfo,
        'cancellation_policy': _cancellationPolicy,
        'house_rules': _houseRules,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'how_to_book': serializeParam(
          _howToBook,
          ParamType.String,
        ),
        'cleaning_services': serializeParam(
          _cleaningServices,
          ParamType.String,
        ),
        'parking_available': serializeParam(
          _parkingAvailable,
          ParamType.String,
        ),
        'additional_info': serializeParam(
          _additionalInfo,
          ParamType.String,
        ),
        'cancellation_policy': serializeParam(
          _cancellationPolicy,
          ParamType.String,
        ),
        'house_rules': serializeParam(
          _houseRules,
          ParamType.String,
        ),
      }.withoutNulls;

  static FaqStruct fromSerializableMap(Map<String, dynamic> data) => FaqStruct(
        howToBook: deserializeParam(
          data['how_to_book'],
          ParamType.String,
          false,
        ),
        cleaningServices: deserializeParam(
          data['cleaning_services'],
          ParamType.String,
          false,
        ),
        parkingAvailable: deserializeParam(
          data['parking_available'],
          ParamType.String,
          false,
        ),
        additionalInfo: deserializeParam(
          data['additional_info'],
          ParamType.String,
          false,
        ),
        cancellationPolicy: deserializeParam(
          data['cancellation_policy'],
          ParamType.String,
          false,
        ),
        houseRules: deserializeParam(
          data['house_rules'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FaqStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaqStruct &&
        howToBook == other.howToBook &&
        cleaningServices == other.cleaningServices &&
        parkingAvailable == other.parkingAvailable &&
        additionalInfo == other.additionalInfo &&
        cancellationPolicy == other.cancellationPolicy &&
        houseRules == other.houseRules;
  }

  @override
  int get hashCode => const ListEquality().hash([
        howToBook,
        cleaningServices,
        parkingAvailable,
        additionalInfo,
        cancellationPolicy,
        houseRules
      ]);
}

FaqStruct createFaqStruct({
  String? howToBook,
  String? cleaningServices,
  String? parkingAvailable,
  String? additionalInfo,
  String? cancellationPolicy,
  String? houseRules,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FaqStruct(
      howToBook: howToBook,
      cleaningServices: cleaningServices,
      parkingAvailable: parkingAvailable,
      additionalInfo: additionalInfo,
      cancellationPolicy: cancellationPolicy,
      houseRules: houseRules,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FaqStruct? updateFaqStruct(
  FaqStruct? faq, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    faq
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFaqStructData(
  Map<String, dynamic> firestoreData,
  FaqStruct? faq,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (faq == null) {
    return;
  }
  if (faq.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && faq.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final faqData = getFaqFirestoreData(faq, forFieldValue);
  final nestedData = faqData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = faq.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFaqFirestoreData(
  FaqStruct? faq, [
  bool forFieldValue = false,
]) {
  if (faq == null) {
    return {};
  }
  final firestoreData = mapToFirestore(faq.toMap());

  // Add any Firestore field values
  faq.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFaqListFirestoreData(
  List<FaqStruct>? faqs,
) =>
    faqs?.map((e) => getFaqFirestoreData(e, true)).toList() ?? [];
