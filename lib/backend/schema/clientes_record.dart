import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'clientes_record.g.dart';

abstract class ClientesRecord
    implements Built<ClientesRecord, ClientesRecordBuilder> {
  static Serializer<ClientesRecord> get serializer =>
      _$clientesRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'fantasy_name')
  String get fantasyName;

  @nullable
  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'type_person')
  String get typePerson;

  @nullable
  @BuiltValueField(wireName: 'cnpj_cpf')
  String get cnpjCpf;

  @nullable
  @BuiltValueField(wireName: 'municipal_registration')
  String get municipalRegistration;

  @nullable
  @BuiltValueField(wireName: 'state_registration')
  String get stateRegistration;

  @nullable
  @BuiltValueField(wireName: 'id_customer')
  int get idCustomer;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  int get telefone;

  @nullable
  int get celular;

  @nullable
  @BuiltValueField(wireName: 'address_ibge')
  int get addressIbge;

  @nullable
  int get rg;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClientesRecordBuilder builder) => builder
    ..email = ''
    ..fantasyName = ''
    ..fullName = ''
    ..typePerson = ''
    ..cnpjCpf = ''
    ..municipalRegistration = ''
    ..stateRegistration = ''
    ..idCustomer = 0
    ..telefone = 0
    ..celular = 0
    ..addressIbge = 0
    ..rg = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClientesRecord._();
  factory ClientesRecord([void Function(ClientesRecordBuilder) updates]) =
      _$ClientesRecord;

  static ClientesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createClientesRecordData({
  String email,
  String fantasyName,
  String fullName,
  String typePerson,
  String cnpjCpf,
  String municipalRegistration,
  String stateRegistration,
  int idCustomer,
  DateTime createdDate,
  DateTime modifieldDate,
  int telefone,
  int celular,
  int addressIbge,
  int rg,
}) =>
    serializers.toFirestore(
        ClientesRecord.serializer,
        ClientesRecord((c) => c
          ..email = email
          ..fantasyName = fantasyName
          ..fullName = fullName
          ..typePerson = typePerson
          ..cnpjCpf = cnpjCpf
          ..municipalRegistration = municipalRegistration
          ..stateRegistration = stateRegistration
          ..idCustomer = idCustomer
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate
          ..telefone = telefone
          ..celular = celular
          ..addressIbge = addressIbge
          ..rg = rg));
