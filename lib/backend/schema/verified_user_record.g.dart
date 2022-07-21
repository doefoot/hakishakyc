// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VerifiedUserRecord> _$verifiedUserRecordSerializer =
    new _$VerifiedUserRecordSerializer();

class _$VerifiedUserRecordSerializer
    implements StructuredSerializer<VerifiedUserRecord> {
  @override
  final Iterable<Type> types = const [VerifiedUserRecord, _$VerifiedUserRecord];
  @override
  final String wireName = 'VerifiedUserRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VerifiedUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userIDRef;
    if (value != null) {
      result
        ..add('UserIDRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
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
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationDate;
    if (value != null) {
      result
        ..add('VerificationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  VerifiedUserRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifiedUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'UserIDRef':
          result.userIDRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VerificationDate':
          result.verificationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$VerifiedUserRecord extends VerifiedUserRecord {
  @override
  final DocumentReference<Object> userIDRef;
  @override
  final String email;
  @override
  final String name;
  @override
  final DateTime verificationDate;
  @override
  final DocumentReference<Object> reference;

  factory _$VerifiedUserRecord(
          [void Function(VerifiedUserRecordBuilder) updates]) =>
      (new VerifiedUserRecordBuilder()..update(updates)).build();

  _$VerifiedUserRecord._(
      {this.userIDRef,
      this.email,
      this.name,
      this.verificationDate,
      this.reference})
      : super._();

  @override
  VerifiedUserRecord rebuild(
          void Function(VerifiedUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedUserRecordBuilder toBuilder() =>
      new VerifiedUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedUserRecord &&
        userIDRef == other.userIDRef &&
        email == other.email &&
        name == other.name &&
        verificationDate == other.verificationDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, userIDRef.hashCode), email.hashCode), name.hashCode),
            verificationDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VerifiedUserRecord')
          ..add('userIDRef', userIDRef)
          ..add('email', email)
          ..add('name', name)
          ..add('verificationDate', verificationDate)
          ..add('reference', reference))
        .toString();
  }
}

class VerifiedUserRecordBuilder
    implements Builder<VerifiedUserRecord, VerifiedUserRecordBuilder> {
  _$VerifiedUserRecord _$v;

  DocumentReference<Object> _userIDRef;
  DocumentReference<Object> get userIDRef => _$this._userIDRef;
  set userIDRef(DocumentReference<Object> userIDRef) =>
      _$this._userIDRef = userIDRef;

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

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VerifiedUserRecordBuilder() {
    VerifiedUserRecord._initializeBuilder(this);
  }

  VerifiedUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userIDRef = $v.userIDRef;
      _email = $v.email;
      _name = $v.name;
      _verificationDate = $v.verificationDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedUserRecord;
  }

  @override
  void update(void Function(VerifiedUserRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VerifiedUserRecord build() {
    final _$result = _$v ??
        new _$VerifiedUserRecord._(
            userIDRef: userIDRef,
            email: email,
            name: name,
            verificationDate: verificationDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
