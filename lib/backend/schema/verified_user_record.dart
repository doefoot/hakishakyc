import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'verified_user_record.g.dart';

abstract class VerifiedUserRecord
    implements Built<VerifiedUserRecord, VerifiedUserRecordBuilder> {
  static Serializer<VerifiedUserRecord> get serializer =>
      _$verifiedUserRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserIDRef')
  DocumentReference get userIDRef;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'VerificationDate')
  DateTime get verificationDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VerifiedUserRecordBuilder builder) => builder
    ..email = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VerifiedUser');

  static Stream<VerifiedUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VerifiedUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  VerifiedUserRecord._();
  factory VerifiedUserRecord(
          [void Function(VerifiedUserRecordBuilder) updates]) =
      _$VerifiedUserRecord;

  static VerifiedUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVerifiedUserRecordData({
  DocumentReference userIDRef,
  String email,
  String name,
  DateTime verificationDate,
}) =>
    serializers.toFirestore(
        VerifiedUserRecord.serializer,
        VerifiedUserRecord((v) => v
          ..userIDRef = userIDRef
          ..email = email
          ..name = name
          ..verificationDate = verificationDate));
