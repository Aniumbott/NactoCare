import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DomainsRecord extends FirestoreRecord {
  DomainsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _icon = snapshotData['icon'] as String?;
    _color = getSchemaColor(snapshotData['color']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('domains');

  static Stream<DomainsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DomainsRecord.fromSnapshot(s));

  static Future<DomainsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DomainsRecord.fromSnapshot(s));

  static DomainsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DomainsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DomainsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DomainsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DomainsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DomainsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDomainsRecordData({
  String? name,
  String? description,
  String? icon,
  Color? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'icon': icon,
      'color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class DomainsRecordDocumentEquality implements Equality<DomainsRecord> {
  const DomainsRecordDocumentEquality();

  @override
  bool equals(DomainsRecord? e1, DomainsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.icon == e2?.icon &&
        e1?.color == e2?.color;
  }

  @override
  int hash(DomainsRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.icon, e?.color]);

  @override
  bool isValidKey(Object? o) => o is DomainsRecord;
}
