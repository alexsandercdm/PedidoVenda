// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabela_preco_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabelaPrecoRecord> _$tabelaPrecoRecordSerializer =
    new _$TabelaPrecoRecordSerializer();

class _$TabelaPrecoRecordSerializer
    implements StructuredSerializer<TabelaPrecoRecord> {
  @override
  final Iterable<Type> types = const [TabelaPrecoRecord, _$TabelaPrecoRecord];
  @override
  final String wireName = 'TabelaPrecoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TabelaPrecoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tableName;
    if (value != null) {
      result
        ..add('table_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idTable;
    if (value != null) {
      result
        ..add('id_table')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.products;
    if (value != null) {
      result
        ..add('products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  TabelaPrecoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabelaPrecoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'table_name':
          result.tableName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_table':
          result.idTable = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$TabelaPrecoRecord extends TabelaPrecoRecord {
  @override
  final String tableName;
  @override
  final int idTable;
  @override
  final BuiltList<DocumentReference<Object>> products;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$TabelaPrecoRecord(
          [void Function(TabelaPrecoRecordBuilder) updates]) =>
      (new TabelaPrecoRecordBuilder()..update(updates)).build();

  _$TabelaPrecoRecord._(
      {this.tableName,
      this.idTable,
      this.products,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  TabelaPrecoRecord rebuild(void Function(TabelaPrecoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabelaPrecoRecordBuilder toBuilder() =>
      new TabelaPrecoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabelaPrecoRecord &&
        tableName == other.tableName &&
        idTable == other.idTable &&
        products == other.products &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, tableName.hashCode), idTable.hashCode),
                    products.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabelaPrecoRecord')
          ..add('tableName', tableName)
          ..add('idTable', idTable)
          ..add('products', products)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class TabelaPrecoRecordBuilder
    implements Builder<TabelaPrecoRecord, TabelaPrecoRecordBuilder> {
  _$TabelaPrecoRecord _$v;

  String _tableName;
  String get tableName => _$this._tableName;
  set tableName(String tableName) => _$this._tableName = tableName;

  int _idTable;
  int get idTable => _$this._idTable;
  set idTable(int idTable) => _$this._idTable = idTable;

  ListBuilder<DocumentReference<Object>> _products;
  ListBuilder<DocumentReference<Object>> get products =>
      _$this._products ??= new ListBuilder<DocumentReference<Object>>();
  set products(ListBuilder<DocumentReference<Object>> products) =>
      _$this._products = products;

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

  TabelaPrecoRecordBuilder() {
    TabelaPrecoRecord._initializeBuilder(this);
  }

  TabelaPrecoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _idTable = $v.idTable;
      _products = $v.products?.toBuilder();
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabelaPrecoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabelaPrecoRecord;
  }

  @override
  void update(void Function(TabelaPrecoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabelaPrecoRecord build() {
    _$TabelaPrecoRecord _$result;
    try {
      _$result = _$v ??
          new _$TabelaPrecoRecord._(
              tableName: tableName,
              idTable: idTable,
              products: _products?.build(),
              createdDate: createdDate,
              modifieldDate: modifieldDate,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TabelaPrecoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
