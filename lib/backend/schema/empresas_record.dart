import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'empresas_record.g.dart';

abstract class EmpresasRecord
    implements Built<EmpresasRecord, EmpresasRecordBuilder> {
  static Serializer<EmpresasRecord> get serializer =>
      _$empresasRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'fantasy_name')
  String get fantasyName;

  @nullable
  @BuiltValueField(wireName: 'social_reason')
  String get socialReason;

  @nullable
  String get cnpj;

  @nullable
  String get email;

  @nullable
  String get logo;

  @nullable
  @BuiltValueField(wireName: 'address_ibge')
  int get addressIbge;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: 'inscricao_municipal')
  String get inscricaoMunicipal;

  @nullable
  @BuiltValueField(wireName: 'inscricao_estadual')
  String get inscricaoEstadual;

  @nullable
  @BuiltValueField(wireName: 'natureza_juridica')
  String get naturezaJuridica;

  @nullable
  @BuiltValueField(wireName: 'regime_tributario')
  String get regimeTributario;

  @nullable
  int get telefone;

  @nullable
  int get celular;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EmpresasRecordBuilder builder) => builder
    ..fantasyName = ''
    ..socialReason = ''
    ..cnpj = ''
    ..email = ''
    ..logo = ''
    ..addressIbge = 0
    ..inscricaoMunicipal = ''
    ..inscricaoEstadual = ''
    ..naturezaJuridica = ''
    ..regimeTributario = ''
    ..telefone = 0
    ..celular = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EmpresasRecord._();
  factory EmpresasRecord([void Function(EmpresasRecordBuilder) updates]) =
      _$EmpresasRecord;

  static EmpresasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEmpresasRecordData({
  String fantasyName,
  String socialReason,
  String cnpj,
  String email,
  String logo,
  int addressIbge,
  DateTime createdDate,
  DateTime modifieldDate,
  String inscricaoMunicipal,
  String inscricaoEstadual,
  String naturezaJuridica,
  String regimeTributario,
  int telefone,
  int celular,
}) =>
    serializers.toFirestore(
        EmpresasRecord.serializer,
        EmpresasRecord((e) => e
          ..fantasyName = fantasyName
          ..socialReason = socialReason
          ..cnpj = cnpj
          ..email = email
          ..logo = logo
          ..addressIbge = addressIbge
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate
          ..inscricaoMunicipal = inscricaoMunicipal
          ..inscricaoEstadual = inscricaoEstadual
          ..naturezaJuridica = naturezaJuridica
          ..regimeTributario = regimeTributario
          ..telefone = telefone
          ..celular = celular));
