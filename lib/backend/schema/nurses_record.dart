import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NursesRecord extends FirestoreRecord {
  NursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "domain" field.
  String? _domain;
  String get domain => _domain ?? '';
  bool hasDomain() => _domain != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _domain = snapshotData['domain'] as String?;
    _about = snapshotData['about'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nurses');

  static Stream<NursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NursesRecord.fromSnapshot(s));

  static Future<NursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NursesRecord.fromSnapshot(s));

  static NursesRecord fromSnapshot(DocumentSnapshot snapshot) => NursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNursesRecordData({
  DateTime? createdTime,
  String? displayName,
  String? email,
  String? phoneNumber,
  String? photoUrl,
  LatLng? location,
  String? domain,
  String? about,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'display_name': displayName,
      'email': email,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'location': location,
      'domain': domain,
      'about': about,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class NursesRecordDocumentEquality implements Equality<NursesRecord> {
  const NursesRecordDocumentEquality();

  @override
  bool equals(NursesRecord? e1, NursesRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.location == e2?.location &&
        e1?.domain == e2?.domain &&
        e1?.about == e2?.about &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(NursesRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.displayName,
        e?.email,
        e?.phoneNumber,
        e?.photoUrl,
        e?.location,
        e?.domain,
        e?.about,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is NursesRecord;
}
