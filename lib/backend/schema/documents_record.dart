import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'documents_record.g.dart';

abstract class DocumentsRecord
    implements Built<DocumentsRecord, DocumentsRecordBuilder> {
  static Serializer<DocumentsRecord> get serializer =>
      _$documentsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserIDRef')
  DocumentReference get userIDRef;

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
  @BuiltValueField(wireName: 'DL_No')
  String get dLNo;

  @nullable
  @BuiltValueField(wireName: 'DL_Date')
  DateTime get dLDate;

  @nullable
  @BuiltValueField(wireName: 'DL_Image')
  String get dLImage;

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
  @BuiltValueField(wireName: 'ID_UploadDate')
  DateTime get iDUploadDate;

  @nullable
  @BuiltValueField(wireName: 'DLUploadDate')
  DateTime get dLUploadDate;

  @nullable
  @BuiltValueField(wireName: 'PPUploadDate')
  DateTime get pPUploadDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DocumentsRecordBuilder builder) => builder
    ..iDNo = ''
    ..iDImage = ''
    ..dLNo = ''
    ..dLImage = ''
    ..pPNo = ''
    ..pPImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Documents');

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DocumentsRecord._();
  factory DocumentsRecord([void Function(DocumentsRecordBuilder) updates]) =
      _$DocumentsRecord;

  static DocumentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDocumentsRecordData({
  DocumentReference userIDRef,
  String iDNo,
  DateTime iDDate,
  String iDImage,
  String dLNo,
  DateTime dLDate,
  String dLImage,
  String pPNo,
  DateTime pPDate,
  String pPImage,
  DateTime iDUploadDate,
  DateTime dLUploadDate,
  DateTime pPUploadDate,
}) =>
    serializers.toFirestore(
        DocumentsRecord.serializer,
        DocumentsRecord((d) => d
          ..userIDRef = userIDRef
          ..iDNo = iDNo
          ..iDDate = iDDate
          ..iDImage = iDImage
          ..dLNo = dLNo
          ..dLDate = dLDate
          ..dLImage = dLImage
          ..pPNo = pPNo
          ..pPDate = pPDate
          ..pPImage = pPImage
          ..iDUploadDate = iDUploadDate
          ..dLUploadDate = dLUploadDate
          ..pPUploadDate = pPUploadDate));
