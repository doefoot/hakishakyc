// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentsRecord> _$documentsRecordSerializer =
    new _$DocumentsRecordSerializer();

class _$DocumentsRecordSerializer
    implements StructuredSerializer<DocumentsRecord> {
  @override
  final Iterable<Type> types = const [DocumentsRecord, _$DocumentsRecord];
  @override
  final String wireName = 'DocumentsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DocumentsRecord object,
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
    value = object.dLNo;
    if (value != null) {
      result
        ..add('DL_No')
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
    value = object.iDUploadDate;
    if (value != null) {
      result
        ..add('ID_UploadDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dLUploadDate;
    if (value != null) {
      result
        ..add('DLUploadDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pPUploadDate;
    if (value != null) {
      result
        ..add('PPUploadDate')
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
  DocumentsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentsRecordBuilder();

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
        case 'DL_No':
          result.dLNo = serializers.deserialize(value,
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
        case 'ID_UploadDate':
          result.iDUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'DLUploadDate':
          result.dLUploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'PPUploadDate':
          result.pPUploadDate = serializers.deserialize(value,
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

class _$DocumentsRecord extends DocumentsRecord {
  @override
  final DocumentReference<Object> userIDRef;
  @override
  final String iDNo;
  @override
  final DateTime iDDate;
  @override
  final String iDImage;
  @override
  final String dLNo;
  @override
  final DateTime dLDate;
  @override
  final String dLImage;
  @override
  final String pPNo;
  @override
  final DateTime pPDate;
  @override
  final String pPImage;
  @override
  final DateTime iDUploadDate;
  @override
  final DateTime dLUploadDate;
  @override
  final DateTime pPUploadDate;
  @override
  final DocumentReference<Object> reference;

  factory _$DocumentsRecord([void Function(DocumentsRecordBuilder) updates]) =>
      (new DocumentsRecordBuilder()..update(updates)).build();

  _$DocumentsRecord._(
      {this.userIDRef,
      this.iDNo,
      this.iDDate,
      this.iDImage,
      this.dLNo,
      this.dLDate,
      this.dLImage,
      this.pPNo,
      this.pPDate,
      this.pPImage,
      this.iDUploadDate,
      this.dLUploadDate,
      this.pPUploadDate,
      this.reference})
      : super._();

  @override
  DocumentsRecord rebuild(void Function(DocumentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentsRecordBuilder toBuilder() =>
      new DocumentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentsRecord &&
        userIDRef == other.userIDRef &&
        iDNo == other.iDNo &&
        iDDate == other.iDDate &&
        iDImage == other.iDImage &&
        dLNo == other.dLNo &&
        dLDate == other.dLDate &&
        dLImage == other.dLImage &&
        pPNo == other.pPNo &&
        pPDate == other.pPDate &&
        pPImage == other.pPImage &&
        iDUploadDate == other.iDUploadDate &&
        dLUploadDate == other.dLUploadDate &&
        pPUploadDate == other.pPUploadDate &&
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
                                                    $jc(
                                                        $jc(0,
                                                            userIDRef.hashCode),
                                                        iDNo.hashCode),
                                                    iDDate.hashCode),
                                                iDImage.hashCode),
                                            dLNo.hashCode),
                                        dLDate.hashCode),
                                    dLImage.hashCode),
                                pPNo.hashCode),
                            pPDate.hashCode),
                        pPImage.hashCode),
                    iDUploadDate.hashCode),
                dLUploadDate.hashCode),
            pPUploadDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentsRecord')
          ..add('userIDRef', userIDRef)
          ..add('iDNo', iDNo)
          ..add('iDDate', iDDate)
          ..add('iDImage', iDImage)
          ..add('dLNo', dLNo)
          ..add('dLDate', dLDate)
          ..add('dLImage', dLImage)
          ..add('pPNo', pPNo)
          ..add('pPDate', pPDate)
          ..add('pPImage', pPImage)
          ..add('iDUploadDate', iDUploadDate)
          ..add('dLUploadDate', dLUploadDate)
          ..add('pPUploadDate', pPUploadDate)
          ..add('reference', reference))
        .toString();
  }
}

class DocumentsRecordBuilder
    implements Builder<DocumentsRecord, DocumentsRecordBuilder> {
  _$DocumentsRecord _$v;

  DocumentReference<Object> _userIDRef;
  DocumentReference<Object> get userIDRef => _$this._userIDRef;
  set userIDRef(DocumentReference<Object> userIDRef) =>
      _$this._userIDRef = userIDRef;

  String _iDNo;
  String get iDNo => _$this._iDNo;
  set iDNo(String iDNo) => _$this._iDNo = iDNo;

  DateTime _iDDate;
  DateTime get iDDate => _$this._iDDate;
  set iDDate(DateTime iDDate) => _$this._iDDate = iDDate;

  String _iDImage;
  String get iDImage => _$this._iDImage;
  set iDImage(String iDImage) => _$this._iDImage = iDImage;

  String _dLNo;
  String get dLNo => _$this._dLNo;
  set dLNo(String dLNo) => _$this._dLNo = dLNo;

  DateTime _dLDate;
  DateTime get dLDate => _$this._dLDate;
  set dLDate(DateTime dLDate) => _$this._dLDate = dLDate;

  String _dLImage;
  String get dLImage => _$this._dLImage;
  set dLImage(String dLImage) => _$this._dLImage = dLImage;

  String _pPNo;
  String get pPNo => _$this._pPNo;
  set pPNo(String pPNo) => _$this._pPNo = pPNo;

  DateTime _pPDate;
  DateTime get pPDate => _$this._pPDate;
  set pPDate(DateTime pPDate) => _$this._pPDate = pPDate;

  String _pPImage;
  String get pPImage => _$this._pPImage;
  set pPImage(String pPImage) => _$this._pPImage = pPImage;

  DateTime _iDUploadDate;
  DateTime get iDUploadDate => _$this._iDUploadDate;
  set iDUploadDate(DateTime iDUploadDate) =>
      _$this._iDUploadDate = iDUploadDate;

  DateTime _dLUploadDate;
  DateTime get dLUploadDate => _$this._dLUploadDate;
  set dLUploadDate(DateTime dLUploadDate) =>
      _$this._dLUploadDate = dLUploadDate;

  DateTime _pPUploadDate;
  DateTime get pPUploadDate => _$this._pPUploadDate;
  set pPUploadDate(DateTime pPUploadDate) =>
      _$this._pPUploadDate = pPUploadDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DocumentsRecordBuilder() {
    DocumentsRecord._initializeBuilder(this);
  }

  DocumentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userIDRef = $v.userIDRef;
      _iDNo = $v.iDNo;
      _iDDate = $v.iDDate;
      _iDImage = $v.iDImage;
      _dLNo = $v.dLNo;
      _dLDate = $v.dLDate;
      _dLImage = $v.dLImage;
      _pPNo = $v.pPNo;
      _pPDate = $v.pPDate;
      _pPImage = $v.pPImage;
      _iDUploadDate = $v.iDUploadDate;
      _dLUploadDate = $v.dLUploadDate;
      _pPUploadDate = $v.pPUploadDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentsRecord;
  }

  @override
  void update(void Function(DocumentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentsRecord build() {
    final _$result = _$v ??
        new _$DocumentsRecord._(
            userIDRef: userIDRef,
            iDNo: iDNo,
            iDDate: iDDate,
            iDImage: iDImage,
            dLNo: dLNo,
            dLDate: dLDate,
            dLImage: dLImage,
            pPNo: pPNo,
            pPDate: pPDate,
            pPImage: pPImage,
            iDUploadDate: iDUploadDate,
            dLUploadDate: dLUploadDate,
            pPUploadDate: pPUploadDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
