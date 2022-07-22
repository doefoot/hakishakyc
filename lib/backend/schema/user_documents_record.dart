import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_documents_record.g.dart';

abstract class UserDocumentsRecord
    implements Built<UserDocumentsRecord, UserDocumentsRecordBuilder> {
  static Serializer<UserDocumentsRecord> get serializer =>
      _$userDocumentsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ID_No')
  String get iDNo;

  @nullable
  @BuiltValueField(wireName: 'ID_Date')
  DateTime get iDDate;

  @nullable
  @BuiltValueField(wireName: 'ID_Image')
  String get iDImage;

  @nullable
  @BuiltValueField(wireName: 'ID_Upload_Date')
  DateTime get iDUploadDate;

  @nullable
  @BuiltValueField(wireName: 'DL_NO')
  String get dlNo;

  @nullable
  @BuiltValueField(wireName: 'DL_Date')
  DateTime get dLDate;

  @nullable
  @BuiltValueField(wireName: 'DL_Image')
  String get dLImage;

  @nullable
  @BuiltValueField(wireName: 'DL_UploadDate')
  DateTime get dLUploadDate;

  @nullable
  @BuiltValueField(wireName: 'PP_No')
  String get pPNo;

  @nullable
  @BuiltValueField(wireName: 'PP_Date')
  DateTime get pPDate;

  @nullable
  @BuiltValueField(wireName: 'PP_Image')
  String get pPImage;

  @nullable
  @BuiltValueField(wireName: 'PP_UploadDate')
  DateTime get pPUploadDate;

  @nullable
  @BuiltValueField(wireName: 'DocRefToUsers')
  DocumentReference get docRefToUsers;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(UserDocumentsRecordBuilder builder) => builder
    ..iDNo = ''
    ..iDImage = ''
    ..dlNo = ''
    ..dLImage = ''
    ..pPNo = ''
    ..pPImage = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('userDocuments')
          : FirebaseFirestore.instance.collectionGroup('userDocuments');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userDocuments').doc();

  static Stream<UserDocumentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserDocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserDocumentsRecord._();
  factory UserDocumentsRecord(
          [void Function(UserDocumentsRecordBuilder) updates]) =
      _$UserDocumentsRecord;

  static UserDocumentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserDocumentsRecordData({
  String iDNo,
  DateTime iDDate,
  String iDImage,
  DateTime iDUploadDate,
  String dlNo,
  DateTime dLDate,
  String dLImage,
  DateTime dLUploadDate,
  String pPNo,
  DateTime pPDate,
  String pPImage,
  DateTime pPUploadDate,
  DocumentReference docRefToUsers,
}) =>
    serializers.toFirestore(
        UserDocumentsRecord.serializer,
        UserDocumentsRecord((u) => u
          ..iDNo = iDNo
          ..iDDate = iDDate
          ..iDImage = iDImage
          ..iDUploadDate = iDUploadDate
          ..dlNo = dlNo
          ..dLDate = dLDate
          ..dLImage = dLImage
          ..dLUploadDate = dLUploadDate
          ..pPNo = pPNo
          ..pPDate = pPDate
          ..pPImage = pPImage
          ..pPUploadDate = pPUploadDate
          ..docRefToUsers = docRefToUsers));
