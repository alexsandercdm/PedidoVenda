// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabela_preco_products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabelaPrecoProductsRecord> _$tabelaPrecoProductsRecordSerializer =
    new _$TabelaPrecoProductsRecordSerializer();

class _$TabelaPrecoProductsRecordSerializer
    implements StructuredSerializer<TabelaPrecoProductsRecord> {
  @override
  final Iterable<Type> types = const [
    TabelaPrecoProductsRecord,
    _$TabelaPrecoProductsRecord
  ];
  @override
  final String wireName = 'TabelaPrecoProductsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TabelaPrecoProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.idTable;
    if (value != null) {
      result
        ..add('id_table')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.product;
    if (value != null) {
      result
        ..add('product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.saleValue;
    if (value != null) {
      result
        ..add('sale_value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  TabelaPrecoProductsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabelaPrecoProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id_table':
          result.idTable = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'product':
          result.product = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'sale_value':
          result.saleValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$TabelaPrecoProductsRecord extends TabelaPrecoProductsRecord {
  @override
  final DocumentReference<Object> idTable;
  @override
  final DocumentReference<Object> product;
  @override
  final double saleValue;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$TabelaPrecoProductsRecord(
          [void Function(TabelaPrecoProductsRecordBuilder) updates]) =>
      (new TabelaPrecoProductsRecordBuilder()..update(updates)).build();

  _$TabelaPrecoProductsRecord._(
      {this.idTable,
      this.product,
      this.saleValue,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  TabelaPrecoProductsRecord rebuild(
          void Function(TabelaPrecoProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabelaPrecoProductsRecordBuilder toBuilder() =>
      new TabelaPrecoProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabelaPrecoProductsRecord &&
        idTable == other.idTable &&
        product == other.product &&
        saleValue == other.saleValue &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idTable.hashCode), product.hashCode),
                    saleValue.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabelaPrecoProductsRecord')
          ..add('idTable', idTable)
          ..add('product', product)
          ..add('saleValue', saleValue)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class TabelaPrecoProductsRecordBuilder
    implements
        Builder<TabelaPrecoProductsRecord, TabelaPrecoProductsRecordBuilder> {
  _$TabelaPrecoProductsRecord _$v;

  DocumentReference<Object> _idTable;
  DocumentReference<Object> get idTable => _$this._idTable;
  set idTable(DocumentReference<Object> idTable) => _$this._idTable = idTable;

  DocumentReference<Object> _product;
  DocumentReference<Object> get product => _$this._product;
  set product(DocumentReference<Object> product) => _$this._product = product;

  double _saleValue;
  double get saleValue => _$this._saleValue;
  set saleValue(double saleValue) => _$this._saleValue = saleValue;

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

  TabelaPrecoProductsRecordBuilder() {
    TabelaPrecoProductsRecord._initializeBuilder(this);
  }

  TabelaPrecoProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idTable = $v.idTable;
      _product = $v.product;
      _saleValue = $v.saleValue;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabelaPrecoProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabelaPrecoProductsRecord;
  }

  @override
  void update(void Function(TabelaPrecoProductsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabelaPrecoProductsRecord build() {
    final _$result = _$v ??
        new _$TabelaPrecoProductsRecord._(
            idTable: idTable,
            product: product,
            saleValue: saleValue,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
