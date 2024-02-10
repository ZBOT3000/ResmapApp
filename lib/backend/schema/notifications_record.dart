import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  void _initializeFields() {
    _logo = snapshotData['logo'] as String?;
    _type = snapshotData['type'] as String?;
    _title = snapshotData['title'] as String?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? logo,
  String? type,
  String? title,
  DateTime? timePosted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'logo': logo,
      'type': type,
      'title': title,
      'time_posted': timePosted,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.logo == e2?.logo &&
        e1?.type == e2?.type &&
        e1?.title == e2?.title &&
        e1?.timePosted == e2?.timePosted;
  }

  @override
  int hash(NotificationsRecord? e) =>
      const ListEquality().hash([e?.logo, e?.type, e?.title, e?.timePosted]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
