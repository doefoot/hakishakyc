import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get fName;

  @nullable
  String get mName;

  @nullable
  String get lName;

  @nullable
  @BuiltValueField(wireName: 'Gender')
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'DateOfBirth')
  DateTime get dateOfBirth;

  @nullable
  @BuiltValueField(wireName: 'Address1')
  String get address1;

  @nullable
  @BuiltValueField(wireName: 'Address2')
  String get address2;

  @nullable
  @BuiltValueField(wireName: 'County')
  String get county;

  @nullable
  @BuiltValueField(wireName: 'PostalCode')
  String get postalCode;

  @nullable
  @BuiltValueField(wireName: 'ProfilePic')
  String get profilePic;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..fName = ''
    ..mName = ''
    ..lName = ''
    ..gender = ''
    ..address1 = ''
    ..address2 = ''
    ..county = ''
    ..postalCode = ''
    ..profilePic = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String fName,
  String mName,
  String lName,
  String gender,
  DateTime dateOfBirth,
  String address1,
  String address2,
  String county,
  String postalCode,
  String profilePic,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..fName = fName
          ..mName = mName
          ..lName = lName
          ..gender = gender
          ..dateOfBirth = dateOfBirth
          ..address1 = address1
          ..address2 = address2
          ..county = county
          ..postalCode = postalCode
          ..profilePic = profilePic));
