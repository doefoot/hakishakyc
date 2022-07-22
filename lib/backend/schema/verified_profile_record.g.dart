// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_profile_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VerifiedProfileRecord> _$verifiedProfileRecordSerializer =
    new _$VerifiedProfileRecordSerializer();

class _$VerifiedProfileRecordSerializer
    implements StructuredSerializer<VerifiedProfileRecord> {
  @override
  final Iterable<Type> types = const [
    VerifiedProfileRecord,
    _$VerifiedProfileRecord
  ];
  @override
  final String wireName = 'VerifiedProfileRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, VerifiedProfileRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationDate;
    if (value != null) {
      result
        ..add('verificationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.verifiedRefToUser;
    if (value != null) {
      result
        ..add('VerifiedRefToUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  VerifiedProfileRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifiedProfileRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verificationDate':
          result.verificationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'VerifiedRefToUser':
          result.verifiedRefToUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$VerifiedProfileRecord extends VerifiedProfileRecord {
  @override
  final String email;
  @override
  final String name;
  @override
  final DateTime verificationDate;
  @override
  final DocumentReference<Object> verifiedRefToUser;
  @override
  final DocumentReference<Object> reference;

  factory _$VerifiedProfileRecord(
          [void Function(VerifiedProfileRecordBuilder) updates]) =>
      (new VerifiedProfileRecordBuilder()..update(updates)).build();

  _$VerifiedProfileRecord._(
      {this.email,
      this.name,
      this.verificationDate,
      this.verifiedRefToUser,
      this.reference})
      : super._();

  @override
  VerifiedProfileRecord rebuild(
          void Function(VerifiedProfileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedProfileRecordBuilder toBuilder() =>
      new VerifiedProfileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedProfileRecord &&
        email == other.email &&
        name == other.name &&
        verificationDate == other.verificationDate &&
        verifiedRefToUser == other.verifiedRefToUser &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, email.hashCode), name.hashCode),
                verificationDate.hashCode),
            verifiedRefToUser.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VerifiedProfileRecord')
          ..add('email', email)
          ..add('name', name)
          ..add('verificationDate', verificationDate)
          ..add('verifiedRefToUser', verifiedRefToUser)
          ..add('reference', reference))
        .toString();
  }
}

class VerifiedProfileRecordBuilder
    implements Builder<VerifiedProfileRecord, VerifiedProfileRecordBuilder> {
  _$VerifiedProfileRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _verificationDate;
  DateTime get verificationDate => _$this._verificationDate;
  set verificationDate(DateTime verificationDate) =>
      _$this._verificationDate = verificationDate;

  DocumentReference<Object> _verifiedRefToUser;
  DocumentReference<Object> get verifiedRefToUser => _$this._verifiedRefToUser;
  set verifiedRefToUser(DocumentReference<Object> verifiedRefToUser) =>
      _$this._verifiedRefToUser = verifiedRefToUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VerifiedProfileRecordBuilder() {
    VerifiedProfileRecord._initializeBuilder(this);
  }

  VerifiedProfileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _verificationDate = $v.verificationDate;
      _verifiedRefToUser = $v.verifiedRefToUser;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedProfileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedProfileRecord;
  }

  @override
  void update(void Function(VerifiedProfileRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VerifiedProfileRecord build() {
    final _$result = _$v ??
        new _$VerifiedProfileRecord._(
            email: email,
            name: name,
            verificationDate: verificationDate,
            verifiedRefToUser: verifiedRefToUser,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
