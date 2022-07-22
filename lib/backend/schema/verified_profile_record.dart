import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'verified_profile_record.g.dart';

abstract class VerifiedProfileRecord
    implements Built<VerifiedProfileRecord, VerifiedProfileRecordBuilder> {
  static Serializer<VerifiedProfileRecord> get serializer =>
      _$verifiedProfileRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get name;

  @nullable
  DateTime get verificationDate;

  @nullable
  @BuiltValueField(wireName: 'VerifiedRefToUser')
  DocumentReference get verifiedRefToUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(VerifiedProfileRecordBuilder builder) =>
      builder
        ..email = ''
        ..name = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('VerifiedProfile')
          : FirebaseFirestore.instance.collectionGroup('VerifiedProfile');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('VerifiedProfile').doc();

  static Stream<VerifiedProfileRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VerifiedProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  VerifiedProfileRecord._();
  factory VerifiedProfileRecord(
          [void Function(VerifiedProfileRecordBuilder) updates]) =
      _$VerifiedProfileRecord;

  static VerifiedProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVerifiedProfileRecordData({
  String email,
  String name,
  DateTime verificationDate,
  DocumentReference verifiedRefToUser,
}) =>
    serializers.toFirestore(
        VerifiedProfileRecord.serializer,
        VerifiedProfileRecord((v) => v
          ..email = email
          ..name = name
          ..verificationDate = verificationDate
          ..verifiedRefToUser = verifiedRefToUser));
