// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsRecord> _$itemsRecordSerializer = new _$ItemsRecordSerializer();

class _$ItemsRecordSerializer implements StructuredSerializer<ItemsRecord> {
  @override
  final Iterable<Type> types = const [ItemsRecord, _$ItemsRecord];
  @override
  final String wireName = 'ItemsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.produto;
    if (value != null) {
      result
        ..add('produto')
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
  ItemsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'produto':
          result.produto = serializers.deserialize(value,
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

class _$ItemsRecord extends ItemsRecord {
  @override
  final DocumentReference<Object> produto;
  @override
  final DocumentReference<Object> reference;

  factory _$ItemsRecord([void Function(ItemsRecordBuilder) updates]) =>
      (new ItemsRecordBuilder()..update(updates)).build();

  _$ItemsRecord._({this.produto, this.reference}) : super._();

  @override
  ItemsRecord rebuild(void Function(ItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRecordBuilder toBuilder() => new ItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRecord &&
        produto == other.produto &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, produto.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemsRecord')
          ..add('produto', produto)
          ..add('reference', reference))
        .toString();
  }
}

class ItemsRecordBuilder implements Builder<ItemsRecord, ItemsRecordBuilder> {
  _$ItemsRecord _$v;

  DocumentReference<Object> _produto;
  DocumentReference<Object> get produto => _$this._produto;
  set produto(DocumentReference<Object> produto) => _$this._produto = produto;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ItemsRecordBuilder() {
    ItemsRecord._initializeBuilder(this);
  }

  ItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _produto = $v.produto;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsRecord;
  }

  @override
  void update(void Function(ItemsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemsRecord build() {
    final _$result =
        _$v ?? new _$ItemsRecord._(produto: produto, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
