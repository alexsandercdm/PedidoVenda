// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmpresasRecord> _$empresasRecordSerializer =
    new _$EmpresasRecordSerializer();

class _$EmpresasRecordSerializer
    implements StructuredSerializer<EmpresasRecord> {
  @override
  final Iterable<Type> types = const [EmpresasRecord, _$EmpresasRecord];
  @override
  final String wireName = 'EmpresasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EmpresasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.fantasyName;
    if (value != null) {
      result
        ..add('fantasy_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.socialReason;
    if (value != null) {
      result
        ..add('social_reason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cnpj;
    if (value != null) {
      result
        ..add('cnpj')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressIbge;
    if (value != null) {
      result
        ..add('address_ibge')
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
    value = object.inscricaoMunicipal;
    if (value != null) {
      result
        ..add('inscricao_municipal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inscricaoEstadual;
    if (value != null) {
      result
        ..add('inscricao_estadual')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.naturezaJuridica;
    if (value != null) {
      result
        ..add('natureza_juridica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regimeTributario;
    if (value != null) {
      result
        ..add('regime_tributario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.celular;
    if (value != null) {
      result
        ..add('celular')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  EmpresasRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmpresasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'fantasy_name':
          result.fantasyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'social_reason':
          result.socialReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cnpj':
          result.cnpj = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address_ibge':
          result.addressIbge = serializers.deserialize(value,
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
        case 'inscricao_municipal':
          result.inscricaoMunicipal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inscricao_estadual':
          result.inscricaoEstadual = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'natureza_juridica':
          result.naturezaJuridica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regime_tributario':
          result.regimeTributario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'celular':
          result.celular = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$EmpresasRecord extends EmpresasRecord {
  @override
  final String fantasyName;
  @override
  final String socialReason;
  @override
  final String cnpj;
  @override
  final String email;
  @override
  final String logo;
  @override
  final int addressIbge;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final String inscricaoMunicipal;
  @override
  final String inscricaoEstadual;
  @override
  final String naturezaJuridica;
  @override
  final String regimeTributario;
  @override
  final int telefone;
  @override
  final int celular;
  @override
  final DocumentReference<Object> reference;

  factory _$EmpresasRecord([void Function(EmpresasRecordBuilder) updates]) =>
      (new EmpresasRecordBuilder()..update(updates)).build();

  _$EmpresasRecord._(
      {this.fantasyName,
      this.socialReason,
      this.cnpj,
      this.email,
      this.logo,
      this.addressIbge,
      this.createdDate,
      this.modifieldDate,
      this.inscricaoMunicipal,
      this.inscricaoEstadual,
      this.naturezaJuridica,
      this.regimeTributario,
      this.telefone,
      this.celular,
      this.reference})
      : super._();

  @override
  EmpresasRecord rebuild(void Function(EmpresasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmpresasRecordBuilder toBuilder() =>
      new EmpresasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmpresasRecord &&
        fantasyName == other.fantasyName &&
        socialReason == other.socialReason &&
        cnpj == other.cnpj &&
        email == other.email &&
        logo == other.logo &&
        addressIbge == other.addressIbge &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        inscricaoMunicipal == other.inscricaoMunicipal &&
        inscricaoEstadual == other.inscricaoEstadual &&
        naturezaJuridica == other.naturezaJuridica &&
        regimeTributario == other.regimeTributario &&
        telefone == other.telefone &&
        celular == other.celular &&
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
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                fantasyName
                                                                    .hashCode),
                                                            socialReason
                                                                .hashCode),
                                                        cnpj.hashCode),
                                                    email.hashCode),
                                                logo.hashCode),
                                            addressIbge.hashCode),
                                        createdDate.hashCode),
                                    modifieldDate.hashCode),
                                inscricaoMunicipal.hashCode),
                            inscricaoEstadual.hashCode),
                        naturezaJuridica.hashCode),
                    regimeTributario.hashCode),
                telefone.hashCode),
            celular.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmpresasRecord')
          ..add('fantasyName', fantasyName)
          ..add('socialReason', socialReason)
          ..add('cnpj', cnpj)
          ..add('email', email)
          ..add('logo', logo)
          ..add('addressIbge', addressIbge)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('inscricaoMunicipal', inscricaoMunicipal)
          ..add('inscricaoEstadual', inscricaoEstadual)
          ..add('naturezaJuridica', naturezaJuridica)
          ..add('regimeTributario', regimeTributario)
          ..add('telefone', telefone)
          ..add('celular', celular)
          ..add('reference', reference))
        .toString();
  }
}

class EmpresasRecordBuilder
    implements Builder<EmpresasRecord, EmpresasRecordBuilder> {
  _$EmpresasRecord _$v;

  String _fantasyName;
  String get fantasyName => _$this._fantasyName;
  set fantasyName(String fantasyName) => _$this._fantasyName = fantasyName;

  String _socialReason;
  String get socialReason => _$this._socialReason;
  set socialReason(String socialReason) => _$this._socialReason = socialReason;

  String _cnpj;
  String get cnpj => _$this._cnpj;
  set cnpj(String cnpj) => _$this._cnpj = cnpj;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  int _addressIbge;
  int get addressIbge => _$this._addressIbge;
  set addressIbge(int addressIbge) => _$this._addressIbge = addressIbge;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DateTime _modifieldDate;
  DateTime get modifieldDate => _$this._modifieldDate;
  set modifieldDate(DateTime modifieldDate) =>
      _$this._modifieldDate = modifieldDate;

  String _inscricaoMunicipal;
  String get inscricaoMunicipal => _$this._inscricaoMunicipal;
  set inscricaoMunicipal(String inscricaoMunicipal) =>
      _$this._inscricaoMunicipal = inscricaoMunicipal;

  String _inscricaoEstadual;
  String get inscricaoEstadual => _$this._inscricaoEstadual;
  set inscricaoEstadual(String inscricaoEstadual) =>
      _$this._inscricaoEstadual = inscricaoEstadual;

  String _naturezaJuridica;
  String get naturezaJuridica => _$this._naturezaJuridica;
  set naturezaJuridica(String naturezaJuridica) =>
      _$this._naturezaJuridica = naturezaJuridica;

  String _regimeTributario;
  String get regimeTributario => _$this._regimeTributario;
  set regimeTributario(String regimeTributario) =>
      _$this._regimeTributario = regimeTributario;

  int _telefone;
  int get telefone => _$this._telefone;
  set telefone(int telefone) => _$this._telefone = telefone;

  int _celular;
  int get celular => _$this._celular;
  set celular(int celular) => _$this._celular = celular;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EmpresasRecordBuilder() {
    EmpresasRecord._initializeBuilder(this);
  }

  EmpresasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fantasyName = $v.fantasyName;
      _socialReason = $v.socialReason;
      _cnpj = $v.cnpj;
      _email = $v.email;
      _logo = $v.logo;
      _addressIbge = $v.addressIbge;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _inscricaoMunicipal = $v.inscricaoMunicipal;
      _inscricaoEstadual = $v.inscricaoEstadual;
      _naturezaJuridica = $v.naturezaJuridica;
      _regimeTributario = $v.regimeTributario;
      _telefone = $v.telefone;
      _celular = $v.celular;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmpresasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmpresasRecord;
  }

  @override
  void update(void Function(EmpresasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmpresasRecord build() {
    final _$result = _$v ??
        new _$EmpresasRecord._(
            fantasyName: fantasyName,
            socialReason: socialReason,
            cnpj: cnpj,
            email: email,
            logo: logo,
            addressIbge: addressIbge,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            inscricaoMunicipal: inscricaoMunicipal,
            inscricaoEstadual: inscricaoEstadual,
            naturezaJuridica: naturezaJuridica,
            regimeTributario: regimeTributario,
            telefone: telefone,
            celular: celular,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
