import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NurseRecord extends FirestoreRecord {
  NurseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nurse');

  static Stream<NurseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NurseRecord.fromSnapshot(s));

  static Future<NurseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NurseRecord.fromSnapshot(s));

  static NurseRecord fromSnapshot(DocumentSnapshot snapshot) => NurseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NurseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NurseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NurseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NurseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNurseRecordData({
  String? email,
  DateTime? createdTime,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class NurseRecordDocumentEquality implements Equality<NurseRecord> {
  const NurseRecordDocumentEquality();

  @override
  bool equals(NurseRecord? e1, NurseRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(NurseRecord? e) => const ListEquality().hash(
      [e?.email, e?.createdTime, e?.displayName, e?.photoUrl, e?.phoneNumber]);

  @override
  bool isValidKey(Object? o) => o is NurseRecord;
}
