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

  // "nurse" field.
  DocumentReference? _nurse;
  DocumentReference? get nurse => _nurse;
  bool hasNurse() => _nurse != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
    _happened = snapshotData['happened'] as DateTime?;
    _nurse = snapshotData['nurse'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
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
  DocumentReference? nurse,
  DocumentReference? user,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'duration': duration,
      'happened': happened,
      'nurse': nurse,
      'user': user,
      'rating': rating,
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
        e1?.nurse == e2?.nurse &&
        e1?.user == e2?.user &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(SessionsRecord? e) => const ListEquality().hash(
      [e?.createdTime, e?.duration, e?.happened, e?.nurse, e?.user, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is SessionsRecord;
}
