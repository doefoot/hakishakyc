// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_documents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDocumentsRecord> _$userDocumentsRecordSerializer =
    new _$UserDocumentsRecordSerializer();

class _$UserDocumentsRecordSerializer
    implements StructuredSerializer<UserDocumentsRecord> {
  @override
  final Iterable<Type> types = const [
    UserDocumentsRecord,
    _$UserDocumentsRecord
  ];
  @override
  final String wireName = 'UserDocumentsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UserDocumentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.iDNo;
    if (value != null) {
      result
        ..add('ID_No')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iDDate;
    if (value != null) {
      result
        ..add('ID_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.iDImage;
    if (value != null) {
      result
        ..add('ID_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iDUploadDate;
    if (value != null) {
      result
        ..add('ID_Upload_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dlNo;
    if (value != null) {
      result
        ..add('DL_NO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dLDate;
    if (value != null) {
      result
        ..add('DL_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dLImage;
    if (value != null) {
      result
        ..add('DL_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dLUploadDate;
    if (value != null) {
      result
        ..add('DL_UploadDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pPNo;
    if (value != null) {
      result
        ..add('PP_No')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pPDate;
    if (value != null) {
      result
        ..add('PP_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pPImage;
    if (value != null) {
      result
        ..add('PP_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pPUploadDate;
    if (value != null) {
      result
        ..add('PP_UploadDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.docRefToUsers;
    if (value != null) {
      result
        ..add('DocRefToUsers')
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
  UserDocumentsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDocumentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ID_No':
          result.iDNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ID_Date':
          result.iDDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ID_Image':
          result.iDImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ID_Upload_Date':
          result.iDUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'DL_NO':
          result.dlNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DL_Date':
          result.dLDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'DL_Image':
          result.dLImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DL_UploadDate':
          result.dLUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'PP_No':
          result.pPNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PP_Date':
          result.pPDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'PP_Image':
          result.pPImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PP_UploadDate':
          result.pPUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'DocRefToUsers':
          result.docRefToUsers = serializers.deserialize(value,
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

class _$UserDocumentsRecord extends UserDocumentsRecord {
  @override
  final String iDNo;
  @override
  final DateTime iDDate;
  @override
  final String iDImage;
  @override
  final DateTime iDUploadDate;
  @override
  final String dlNo;
  @override
  final DateTime dLDate;
  @override
  final String dLImage;
  @override
  final DateTime dLUploadDate;
  @override
  final String pPNo;
  @override
  final DateTime pPDate;
  @override
  final String pPImage;
  @override
  final DateTime pPUploadDate;
  @override
  final DocumentReference<Object> docRefToUsers;
  @override
  final DocumentReference<Object> reference;

  factory _$UserDocumentsRecord(
          [void Function(UserDocumentsRecordBuilder) updates]) =>
      (new UserDocumentsRecordBuilder()..update(updates)).build();

  _$UserDocumentsRecord._(
      {this.iDNo,
      this.iDDate,
      this.iDImage,
      this.iDUploadDate,
      this.dlNo,
      this.dLDate,
      this.dLImage,
      this.dLUploadDate,
      this.pPNo,
      this.pPDate,
      this.pPImage,
      this.pPUploadDate,
      this.docRefToUsers,
      this.reference})
      : super._();

  @override
  UserDocumentsRecord rebuild(
          void Function(UserDocumentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDocumentsRecordBuilder toBuilder() =>
      new UserDocumentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDocumentsRecord &&
        iDNo == other.iDNo &&
        iDDate == other.iDDate &&
        iDImage == other.iDImage &&
        iDUploadDate == other.iDUploadDate &&
        dlNo == other.dlNo &&
        dLDate == other.dLDate &&
        dLImage == other.dLImage &&
        dLUploadDate == other.dLUploadDate &&
        pPNo == other.pPNo &&
        pPDate == other.pPDate &&
        pPImage == other.pPImage &&
        pPUploadDate == other.pPUploadDate &&
        docRefToUsers == other.docRefToUsers &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, iDNo.hashCode),
                                                        iDDate.hashCode),
                                                    iDImage.hashCode),
                                                iDUploadDate.hashCode),
                                            dlNo.hashCode),
                                        dLDate.hashCode),
                                    dLImage.hashCode),
                                dLUploadDate.hashCode),
                            pPNo.hashCode),
                        pPDate.hashCode),
                    pPImage.hashCode),
                pPUploadDate.hashCode),
            docRefToUsers.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDocumentsRecord')
          ..add('iDNo', iDNo)
          ..add('iDDate', iDDate)
          ..add('iDImage', iDImage)
          ..add('iDUploadDate', iDUploadDate)
          ..add('dlNo', dlNo)
          ..add('dLDate', dLDate)
          ..add('dLImage', dLImage)
          ..add('dLUploadDate', dLUploadDate)
          ..add('pPNo', pPNo)
          ..add('pPDate', pPDate)
          ..add('pPImage', pPImage)
          ..add('pPUploadDate', pPUploadDate)
          ..add('docRefToUsers', docRefToUsers)
          ..add('reference', reference))
        .toString();
  }
}

class UserDocumentsRecordBuilder
    implements Builder<UserDocumentsRecord, UserDocumentsRecordBuilder> {
  _$UserDocumentsRecord _$v;

  String _iDNo;
  String get iDNo => _$this._iDNo;
  set iDNo(String iDNo) => _$this._iDNo = iDNo;

  DateTime _iDDate;
  DateTime get iDDate => _$this._iDDate;
  set iDDate(DateTime iDDate) => _$this._iDDate = iDDate;

  String _iDImage;
  String get iDImage => _$this._iDImage;
  set iDImage(String iDImage) => _$this._iDImage = iDImage;

  DateTime _iDUploadDate;
  DateTime get iDUploadDate => _$this._iDUploadDate;
  set iDUploadDate(DateTime iDUploadDate) =>
      _$this._iDUploadDate = iDUploadDate;

  String _dlNo;
  String get dlNo => _$this._dlNo;
  set dlNo(String dlNo) => _$this._dlNo = dlNo;

  DateTime _dLDate;
  DateTime get dLDate => _$this._dLDate;
  set dLDate(DateTime dLDate) => _$this._dLDate = dLDate;

  String _dLImage;
  String get dLImage => _$this._dLImage;
  set dLImage(String dLImage) => _$this._dLImage = dLImage;

  DateTime _dLUploadDate;
  DateTime get dLUploadDate => _$this._dLUploadDate;
  set dLUploadDate(DateTime dLUploadDate) =>
      _$this._dLUploadDate = dLUploadDate;

  String _pPNo;
  String get pPNo => _$this._pPNo;
  set pPNo(String pPNo) => _$this._pPNo = pPNo;

  DateTime _pPDate;
  DateTime get pPDate => _$this._pPDate;
  set pPDate(DateTime pPDate) => _$this._pPDate = pPDate;

  String _pPImage;
  String get pPImage => _$this._pPImage;
  set pPImage(String pPImage) => _$this._pPImage = pPImage;

  DateTime _pPUploadDate;
  DateTime get pPUploadDate => _$this._pPUploadDate;
  set pPUploadDate(DateTime pPUploadDate) =>
      _$this._pPUploadDate = pPUploadDate;

  DocumentReference<Object> _docRefToUsers;
  DocumentReference<Object> get docRefToUsers => _$this._docRefToUsers;
  set docRefToUsers(DocumentReference<Object> docRefToUsers) =>
      _$this._docRefToUsers = docRefToUsers;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserDocumentsRecordBuilder() {
    UserDocumentsRecord._initializeBuilder(this);
  }

  UserDocumentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iDNo = $v.iDNo;
      _iDDate = $v.iDDate;
      _iDImage = $v.iDImage;
      _iDUploadDate = $v.iDUploadDate;
      _dlNo = $v.dlNo;
      _dLDate = $v.dLDate;
      _dLImage = $v.dLImage;
      _dLUploadDate = $v.dLUploadDate;
      _pPNo = $v.pPNo;
      _pPDate = $v.pPDate;
      _pPImage = $v.pPImage;
      _pPUploadDate = $v.pPUploadDate;
      _docRefToUsers = $v.docRefToUsers;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDocumentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDocumentsRecord;
  }

  @override
  void update(void Function(UserDocumentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDocumentsRecord build() {
    final _$result = _$v ??
        new _$UserDocumentsRecord._(
            iDNo: iDNo,
            iDDate: iDDate,
            iDImage: iDImage,
            iDUploadDate: iDUploadDate,
            dlNo: dlNo,
            dLDate: dLDate,
            dLImage: dLImage,
            dLUploadDate: dLUploadDate,
            pPNo: pPNo,
            pPDate: pPDate,
            pPImage: pPImage,
            pPUploadDate: pPUploadDate,
            docRefToUsers: docRefToUsers,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
