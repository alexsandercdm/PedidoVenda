// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientesRecord> _$clientesRecordSerializer =
    new _$ClientesRecordSerializer();

class _$ClientesRecordSerializer
    implements StructuredSerializer<ClientesRecord> {
  @override
  final Iterable<Type> types = const [ClientesRecord, _$ClientesRecord];
  @override
  final String wireName = 'ClientesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ClientesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fantasyName;
    if (value != null) {
      result
        ..add('fantasy_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typePerson;
    if (value != null) {
      result
        ..add('type_person')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cnpjCpf;
    if (value != null) {
      result
        ..add('cnpj_cpf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.municipalRegistration;
    if (value != null) {
      result
        ..add('municipal_registration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateRegistration;
    if (value != null) {
      result
        ..add('state_registration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCustomer;
    if (value != null) {
      result
        ..add('id_customer')
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
    value = object.addressIbge;
    if (value != null) {
      result
        ..add('address_ibge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rg;
    if (value != null) {
      result
        ..add('rg')
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
  ClientesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fantasy_name':
          result.fantasyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_person':
          result.typePerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cnpj_cpf':
          result.cnpjCpf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'municipal_registration':
          result.municipalRegistration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state_registration':
          result.stateRegistration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_customer':
          result.idCustomer = serializers.deserialize(value,
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
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'celular':
          result.celular = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address_ibge':
          result.addressIbge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rg':
          result.rg = serializers.deserialize(value,
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

class _$ClientesRecord extends ClientesRecord {
  @override
  final String email;
  @override
  final String fantasyName;
  @override
  final String fullName;
  @override
  final String typePerson;
  @override
  final String cnpjCpf;
  @override
  final String municipalRegistration;
  @override
  final String stateRegistration;
  @override
  final int idCustomer;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final int telefone;
  @override
  final int celular;
  @override
  final int addressIbge;
  @override
  final int rg;
  @override
  final DocumentReference<Object> reference;

  factory _$ClientesRecord([void Function(ClientesRecordBuilder) updates]) =>
      (new ClientesRecordBuilder()..update(updates)).build();

  _$ClientesRecord._(
      {this.email,
      this.fantasyName,
      this.fullName,
      this.typePerson,
      this.cnpjCpf,
      this.municipalRegistration,
      this.stateRegistration,
      this.idCustomer,
      this.createdDate,
      this.modifieldDate,
      this.telefone,
      this.celular,
      this.addressIbge,
      this.rg,
      this.reference})
      : super._();

  @override
  ClientesRecord rebuild(void Function(ClientesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientesRecordBuilder toBuilder() =>
      new ClientesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientesRecord &&
        email == other.email &&
        fantasyName == other.fantasyName &&
        fullName == other.fullName &&
        typePerson == other.typePerson &&
        cnpjCpf == other.cnpjCpf &&
        municipalRegistration == other.municipalRegistration &&
        stateRegistration == other.stateRegistration &&
        idCustomer == other.idCustomer &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        telefone == other.telefone &&
        celular == other.celular &&
        addressIbge == other.addressIbge &&
        rg == other.rg &&
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
                                                            $jc(0,
                                                                email.hashCode),
                                                            fantasyName
                                                                .hashCode),
                                                        fullName.hashCode),
                                                    typePerson.hashCode),
                                                cnpjCpf.hashCode),
                                            municipalRegistration.hashCode),
                                        stateRegistration.hashCode),
                                    idCustomer.hashCode),
                                createdDate.hashCode),
                            modifieldDate.hashCode),
                        telefone.hashCode),
                    celular.hashCode),
                addressIbge.hashCode),
            rg.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClientesRecord')
          ..add('email', email)
          ..add('fantasyName', fantasyName)
          ..add('fullName', fullName)
          ..add('typePerson', typePerson)
          ..add('cnpjCpf', cnpjCpf)
          ..add('municipalRegistration', municipalRegistration)
          ..add('stateRegistration', stateRegistration)
          ..add('idCustomer', idCustomer)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('telefone', telefone)
          ..add('celular', celular)
          ..add('addressIbge', addressIbge)
          ..add('rg', rg)
          ..add('reference', reference))
        .toString();
  }
}

class ClientesRecordBuilder
    implements Builder<ClientesRecord, ClientesRecordBuilder> {
  _$ClientesRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _fantasyName;
  String get fantasyName => _$this._fantasyName;
  set fantasyName(String fantasyName) => _$this._fantasyName = fantasyName;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _typePerson;
  String get typePerson => _$this._typePerson;
  set typePerson(String typePerson) => _$this._typePerson = typePerson;

  String _cnpjCpf;
  String get cnpjCpf => _$this._cnpjCpf;
  set cnpjCpf(String cnpjCpf) => _$this._cnpjCpf = cnpjCpf;

  String _municipalRegistration;
  String get municipalRegistration => _$this._municipalRegistration;
  set municipalRegistration(String municipalRegistration) =>
      _$this._municipalRegistration = municipalRegistration;

  String _stateRegistration;
  String get stateRegistration => _$this._stateRegistration;
  set stateRegistration(String stateRegistration) =>
      _$this._stateRegistration = stateRegistration;

  int _idCustomer;
  int get idCustomer => _$this._idCustomer;
  set idCustomer(int idCustomer) => _$this._idCustomer = idCustomer;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DateTime _modifieldDate;
  DateTime get modifieldDate => _$this._modifieldDate;
  set modifieldDate(DateTime modifieldDate) =>
      _$this._modifieldDate = modifieldDate;

  int _telefone;
  int get telefone => _$this._telefone;
  set telefone(int telefone) => _$this._telefone = telefone;

  int _celular;
  int get celular => _$this._celular;
  set celular(int celular) => _$this._celular = celular;

  int _addressIbge;
  int get addressIbge => _$this._addressIbge;
  set addressIbge(int addressIbge) => _$this._addressIbge = addressIbge;

  int _rg;
  int get rg => _$this._rg;
  set rg(int rg) => _$this._rg = rg;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ClientesRecordBuilder() {
    ClientesRecord._initializeBuilder(this);
  }

  ClientesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _fantasyName = $v.fantasyName;
      _fullName = $v.fullName;
      _typePerson = $v.typePerson;
      _cnpjCpf = $v.cnpjCpf;
      _municipalRegistration = $v.municipalRegistration;
      _stateRegistration = $v.stateRegistration;
      _idCustomer = $v.idCustomer;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _telefone = $v.telefone;
      _celular = $v.celular;
      _addressIbge = $v.addressIbge;
      _rg = $v.rg;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientesRecord;
  }

  @override
  void update(void Function(ClientesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClientesRecord build() {
    final _$result = _$v ??
        new _$ClientesRecord._(
            email: email,
            fantasyName: fantasyName,
            fullName: fullName,
            typePerson: typePerson,
            cnpjCpf: cnpjCpf,
            municipalRegistration: municipalRegistration,
            stateRegistration: stateRegistration,
            idCustomer: idCustomer,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            telefone: telefone,
            celular: celular,
            addressIbge: addressIbge,
            rg: rg,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
