// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marca_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarcaRecord> _$marcaRecordSerializer = new _$MarcaRecordSerializer();

class _$MarcaRecordSerializer implements StructuredSerializer<MarcaRecord> {
  @override
  final Iterable<Type> types = const [MarcaRecord, _$MarcaRecord];
  @override
  final String wireName = 'MarcaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MarcaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.brandName;
    if (value != null) {
      result
        ..add('brand_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idBrand;
    if (value != null) {
      result
        ..add('id_brand')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifieldDate;
    if (value != null) {
      result
        ..add('modifield_date')
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
  MarcaRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarcaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'brand_name':
          result.brandName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_brand':
          result.idBrand = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'modifield_date':
          result.modifieldDate = serializers.deserialize(value,
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

class _$MarcaRecord extends MarcaRecord {
  @override
  final String brandName;
  @override
  final int idBrand;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$MarcaRecord([void Function(MarcaRecordBuilder) updates]) =>
      (new MarcaRecordBuilder()..update(updates)).build();

  _$MarcaRecord._(
      {this.brandName,
      this.idBrand,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  MarcaRecord rebuild(void Function(MarcaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarcaRecordBuilder toBuilder() => new MarcaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarcaRecord &&
        brandName == other.brandName &&
        idBrand == other.idBrand &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, brandName.hashCode), idBrand.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarcaRecord')
          ..add('brandName', brandName)
          ..add('idBrand', idBrand)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class MarcaRecordBuilder implements Builder<MarcaRecord, MarcaRecordBuilder> {
  _$MarcaRecord _$v;

  String _brandName;
  String get brandName => _$this._brandName;
  set brandName(String brandName) => _$this._brandName = brandName;

  int _idBrand;
  int get idBrand => _$this._idBrand;
  set idBrand(int idBrand) => _$this._idBrand = idBrand;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DateTime _modifieldDate;
  DateTime get modifieldDate => _$this._modifieldDate;
  set modifieldDate(DateTime modifieldDate) =>
      _$this._modifieldDate = modifieldDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MarcaRecordBuilder() {
    MarcaRecord._initializeBuilder(this);
  }

  MarcaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _brandName = $v.brandName;
      _idBrand = $v.idBrand;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarcaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MarcaRecord;
  }

  @override
  void update(void Function(MarcaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarcaRecord build() {
    final _$result = _$v ??
        new _$MarcaRecord._(
            brandName: brandName,
            idBrand: idBrand,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
