// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaRecord> _$categoriaRecordSerializer =
    new _$CategoriaRecordSerializer();

class _$CategoriaRecordSerializer
    implements StructuredSerializer<CategoriaRecord> {
  @override
  final Iterable<Type> types = const [CategoriaRecord, _$CategoriaRecord];
  @override
  final String wireName = 'CategoriaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.categoryName;
    if (value != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCategory;
    if (value != null) {
      result
        ..add('id_category')
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
  CategoriaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_category':
          result.idCategory = serializers.deserialize(value,
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

class _$CategoriaRecord extends CategoriaRecord {
  @override
  final String categoryName;
  @override
  final int idCategory;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$CategoriaRecord([void Function(CategoriaRecordBuilder) updates]) =>
      (new CategoriaRecordBuilder()..update(updates)).build();

  _$CategoriaRecord._(
      {this.categoryName,
      this.idCategory,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  CategoriaRecord rebuild(void Function(CategoriaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaRecordBuilder toBuilder() =>
      new CategoriaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaRecord &&
        categoryName == other.categoryName &&
        idCategory == other.idCategory &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, categoryName.hashCode), idCategory.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriaRecord')
          ..add('categoryName', categoryName)
          ..add('idCategory', idCategory)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class CategoriaRecordBuilder
    implements Builder<CategoriaRecord, CategoriaRecordBuilder> {
  _$CategoriaRecord _$v;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

  int _idCategory;
  int get idCategory => _$this._idCategory;
  set idCategory(int idCategory) => _$this._idCategory = idCategory;

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

  CategoriaRecordBuilder() {
    CategoriaRecord._initializeBuilder(this);
  }

  CategoriaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryName = $v.categoryName;
      _idCategory = $v.idCategory;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaRecord;
  }

  @override
  void update(void Function(CategoriaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriaRecord build() {
    final _$result = _$v ??
        new _$CategoriaRecord._(
            categoryName: categoryName,
            idCategory: idCategory,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
