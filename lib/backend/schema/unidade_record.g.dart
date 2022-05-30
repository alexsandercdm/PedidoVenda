// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unidade_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnidadeRecord> _$unidadeRecordSerializer =
    new _$UnidadeRecordSerializer();

class _$UnidadeRecordSerializer implements StructuredSerializer<UnidadeRecord> {
  @override
  final Iterable<Type> types = const [UnidadeRecord, _$UnidadeRecord];
  @override
  final String wireName = 'UnidadeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UnidadeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.descripritionUnity;
    if (value != null) {
      result
        ..add('descriprition_unity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idUnity;
    if (value != null) {
      result
        ..add('id_unity')
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
  UnidadeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnidadeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'descriprition_unity':
          result.descripritionUnity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_unity':
          result.idUnity = serializers.deserialize(value,
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

class _$UnidadeRecord extends UnidadeRecord {
  @override
  final String descripritionUnity;
  @override
  final int idUnity;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$UnidadeRecord([void Function(UnidadeRecordBuilder) updates]) =>
      (new UnidadeRecordBuilder()..update(updates)).build();

  _$UnidadeRecord._(
      {this.descripritionUnity,
      this.idUnity,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  UnidadeRecord rebuild(void Function(UnidadeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnidadeRecordBuilder toBuilder() => new UnidadeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnidadeRecord &&
        descripritionUnity == other.descripritionUnity &&
        idUnity == other.idUnity &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, descripritionUnity.hashCode), idUnity.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnidadeRecord')
          ..add('descripritionUnity', descripritionUnity)
          ..add('idUnity', idUnity)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class UnidadeRecordBuilder
    implements Builder<UnidadeRecord, UnidadeRecordBuilder> {
  _$UnidadeRecord _$v;

  String _descripritionUnity;
  String get descripritionUnity => _$this._descripritionUnity;
  set descripritionUnity(String descripritionUnity) =>
      _$this._descripritionUnity = descripritionUnity;

  int _idUnity;
  int get idUnity => _$this._idUnity;
  set idUnity(int idUnity) => _$this._idUnity = idUnity;

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

  UnidadeRecordBuilder() {
    UnidadeRecord._initializeBuilder(this);
  }

  UnidadeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descripritionUnity = $v.descripritionUnity;
      _idUnity = $v.idUnity;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnidadeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnidadeRecord;
  }

  @override
  void update(void Function(UnidadeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnidadeRecord build() {
    final _$result = _$v ??
        new _$UnidadeRecord._(
            descripritionUnity: descripritionUnity,
            idUnity: idUnity,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
