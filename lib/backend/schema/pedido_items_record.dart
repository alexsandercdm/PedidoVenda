import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedido_items_record.g.dart';

abstract class PedidoItemsRecord
    implements Built<PedidoItemsRecord, PedidoItemsRecordBuilder> {
  static Serializer<PedidoItemsRecord> get serializer =>
      _$pedidoItemsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'id_order')
  DocumentReference get idOrder;

  @nullable
  DocumentReference get product;

  @nullable
  @BuiltValueField(wireName: 'price_table')
  double get priceTable;

  @nullable
  int get amount;

  @nullable
  @BuiltValueField(wireName: 'discount_total_product')
  double get discountTotalProduct;

  @nullable
  @BuiltValueField(wireName: 'discount_unitPorcentagem')
  double get discountUnitPorcentagem;

  @nullable
  @BuiltValueField(wireName: 'price_unit_liquido')
  double get priceUnitLiquido;

  @nullable
  @BuiltValueField(wireName: 'unit_product')
  String get unitProduct;

  @nullable
  @BuiltValueField(wireName: 'discount_header')
  double get discountHeader;

  @nullable
  @BuiltValueField(wireName: 'value_bruto')
  double get valueBruto;

  @nullable
  @BuiltValueField(wireName: 'value_liquido')
  double get valueLiquido;

  @nullable
  @BuiltValueField(wireName: 'discount_total')
  double get discountTotal;

  @nullable
  @BuiltValueField(wireName: 'discount_unit_product')
  double get discountUnitProduct;

  @nullable
  @BuiltValueField(wireName: 'value_subtotal')
  double get valueSubtotal;

  @nullable
  @BuiltValueField(wireName: 'peso_liquido')
  double get pesoLiquido;

  @nullable
  @BuiltValueField(wireName: 'peso_bruto')
  double get pesoBruto;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PedidoItemsRecordBuilder builder) => builder
    ..priceTable = 0.0
    ..amount = 0
    ..discountTotalProduct = 0.0
    ..discountUnitPorcentagem = 0.0
    ..priceUnitLiquido = 0.0
    ..unitProduct = ''
    ..discountHeader = 0.0
    ..valueBruto = 0.0
    ..valueLiquido = 0.0
    ..discountTotal = 0.0
    ..discountUnitProduct = 0.0
    ..valueSubtotal = 0.0
    ..pesoLiquido = 0.0
    ..pesoBruto = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidoItems');

  static Stream<PedidoItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PedidoItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PedidoItemsRecord._();
  factory PedidoItemsRecord([void Function(PedidoItemsRecordBuilder) updates]) =
      _$PedidoItemsRecord;

  static PedidoItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPedidoItemsRecordData({
  DocumentReference idOrder,
  DocumentReference product,
  double priceTable,
  int amount,
  double discountTotalProduct,
  double discountUnitPorcentagem,
  double priceUnitLiquido,
  String unitProduct,
  double discountHeader,
  double valueBruto,
  double valueLiquido,
  double discountTotal,
  double discountUnitProduct,
  double valueSubtotal,
  double pesoLiquido,
  double pesoBruto,
  DateTime createdDate,
  DateTime modifieldDate,
}) =>
    serializers.toFirestore(
        PedidoItemsRecord.serializer,
        PedidoItemsRecord((p) => p
          ..idOrder = idOrder
          ..product = product
          ..priceTable = priceTable
          ..amount = amount
          ..discountTotalProduct = discountTotalProduct
          ..discountUnitPorcentagem = discountUnitPorcentagem
          ..priceUnitLiquido = priceUnitLiquido
          ..unitProduct = unitProduct
          ..discountHeader = discountHeader
          ..valueBruto = valueBruto
          ..valueLiquido = valueLiquido
          ..discountTotal = discountTotal
          ..discountUnitProduct = discountUnitProduct
          ..valueSubtotal = valueSubtotal
          ..pesoLiquido = pesoLiquido
          ..pesoBruto = pesoBruto
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate));
