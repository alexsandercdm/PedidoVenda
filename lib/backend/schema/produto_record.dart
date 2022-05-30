import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'produto_record.g.dart';

abstract class ProdutoRecord
    implements Built<ProdutoRecord, ProdutoRecordBuilder> {
  static Serializer<ProdutoRecord> get serializer => _$produtoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'cost_price')
  double get costPrice;

  @nullable
  @BuiltValueField(wireName: 'product_code')
  int get productCode;

  @nullable
  @BuiltValueField(wireName: 'product_name')
  String get productName;

  @nullable
  BuiltList<String> get images;

  @nullable
  @BuiltValueField(wireName: 'pesoliquido_unit')
  double get pesoliquidoUnit;

  @nullable
  @BuiltValueField(wireName: 'pesobruto_unit')
  double get pesobrutoUnit;

  @nullable
  DocumentReference get category;

  @nullable
  DocumentReference get brand;

  @nullable
  DocumentReference get unit;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: 'sale_price')
  double get salePrice;

  @nullable
  @BuiltValueField(wireName: 'type_product')
  String get typeProduct;

  @nullable
  @BuiltValueField(wireName: 'origem_mercadoria')
  String get origemMercadoria;

  @nullable
  @BuiltValueField(wireName: 'referencia_EANGTIN')
  int get referenciaEANGTIN;

  @nullable
  @BuiltValueField(wireName: 'NCM')
  int get ncm;

  @nullable
  @BuiltValueField(wireName: 'excecao_ipi')
  String get excecaoIpi;

  @nullable
  @BuiltValueField(wireName: 'codigo_cest')
  String get codigoCest;

  @nullable
  @BuiltValueField(wireName: 'cod_benef_fiscalUF')
  String get codBenefFiscalUF;

  @nullable
  @BuiltValueField(wireName: 'unidade_comercial')
  String get unidadeComercial;

  @nullable
  @BuiltValueField(wireName: 'unidade_tributada_diferente')
  bool get unidadeTributadaDiferente;

  @nullable
  String get descrition;

  @nullable
  @BuiltValueField(wireName: 'img_principal')
  String get imgPrincipal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdutoRecordBuilder builder) => builder
    ..costPrice = 0.0
    ..productCode = 0
    ..productName = ''
    ..images = ListBuilder()
    ..pesoliquidoUnit = 0.0
    ..pesobrutoUnit = 0.0
    ..salePrice = 0.0
    ..typeProduct = ''
    ..origemMercadoria = ''
    ..referenciaEANGTIN = 0
    ..ncm = 0
    ..excecaoIpi = ''
    ..codigoCest = ''
    ..codBenefFiscalUF = ''
    ..unidadeComercial = ''
    ..unidadeTributadaDiferente = false
    ..descrition = ''
    ..imgPrincipal = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdutoRecord._();
  factory ProdutoRecord([void Function(ProdutoRecordBuilder) updates]) =
      _$ProdutoRecord;

  static ProdutoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdutoRecordData({
  double costPrice,
  int productCode,
  String productName,
  double pesoliquidoUnit,
  double pesobrutoUnit,
  DocumentReference category,
  DocumentReference brand,
  DocumentReference unit,
  DateTime createdDate,
  DateTime modifieldDate,
  double salePrice,
  String typeProduct,
  String origemMercadoria,
  int referenciaEANGTIN,
  int ncm,
  String excecaoIpi,
  String codigoCest,
  String codBenefFiscalUF,
  String unidadeComercial,
  bool unidadeTributadaDiferente,
  String descrition,
  String imgPrincipal,
}) =>
    serializers.toFirestore(
        ProdutoRecord.serializer,
        ProdutoRecord((p) => p
          ..costPrice = costPrice
          ..productCode = productCode
          ..productName = productName
          ..images = null
          ..pesoliquidoUnit = pesoliquidoUnit
          ..pesobrutoUnit = pesobrutoUnit
          ..category = category
          ..brand = brand
          ..unit = unit
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate
          ..salePrice = salePrice
          ..typeProduct = typeProduct
          ..origemMercadoria = origemMercadoria
          ..referenciaEANGTIN = referenciaEANGTIN
          ..ncm = ncm
          ..excecaoIpi = excecaoIpi
          ..codigoCest = codigoCest
          ..codBenefFiscalUF = codBenefFiscalUF
          ..unidadeComercial = unidadeComercial
          ..unidadeTributadaDiferente = unidadeTributadaDiferente
          ..descrition = descrition
          ..imgPrincipal = imgPrincipal));
