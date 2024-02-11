import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionsRecord extends FirestoreRecord {
  SessionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "happened" field.
  DateTime? _happened;
  DateTime? get happened => _happened;
  bool hasHappened() => _happened != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "nurse" field.
  DocumentReference? _nurse;
  DocumentReference? get nurse => _nurse;
  bool hasNurse() => _nurse != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
    _happened = snapshotData['happened'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _nurse = snapshotData['nurse'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _cost = castToType<int>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sessions');

  static Stream<SessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionsRecord.fromSnapshot(s));

  static Future<SessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionsRecord.fromSnapshot(s));

  static SessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionsRecordData({
  DateTime? createdTime,
  int? duration,
  DateTime? happened,
  DocumentReference? user,
  String? status,
  DocumentReference? nurse,
  double? rating,
  int? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'duration': duration,
      'happened': happened,
      'user': user,
      'status': status,
      'nurse': nurse,
      'rating': rating,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionsRecordDocumentEquality implements Equality<SessionsRecord> {
  const SessionsRecordDocumentEquality();

  @override
  bool equals(SessionsRecord? e1, SessionsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.duration == e2?.duration &&
        e1?.happened == e2?.happened &&
        e1?.user == e2?.user &&
        e1?.status == e2?.status &&
        e1?.nurse == e2?.nurse &&
        e1?.rating == e2?.rating &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(SessionsRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.duration,
        e?.happened,
        e?.user,
        e?.status,
        e?.nurse,
        e?.rating,
        e?.cost
      ]);

  @override
  bool isValidKey(Object? o) => o is SessionsRecord;
}
