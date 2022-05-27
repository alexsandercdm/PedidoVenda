import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedidos_record.g.dart';

abstract class PedidosRecord
    implements Built<PedidosRecord, PedidosRecordBuilder> {
  static Serializer<PedidosRecord> get serializer => _$pedidosRecordSerializer;

  @nullable
  DocumentReference get company;

  @nullable
  DocumentReference get customer;

  @nullable
  @BuiltValueField(wireName: 'id_order')
  int get idOrder;

  @nullable
  @BuiltValueField(wireName: 'type_dcument')
  String get typeDcument;

  @nullable
  @BuiltValueField(wireName: 'sale_date')
  DateTime get saleDate;

  @nullable
  @BuiltValueField(wireName: 'date_movement')
  DateTime get dateMovement;

  @nullable
  double get discountTotal;

  @nullable
  @BuiltValueField(wireName: 'discount_saleHeader')
  double get discountSaleHeader;

  @nullable
  @BuiltValueField(wireName: 'discount_products')
  double get discountProducts;

  @nullable
  @BuiltValueField(wireName: 'sale_total')
  double get saleTotal;

  @nullable
  @BuiltValueField(wireName: 'sale_products')
  double get saleProducts;

  @nullable
  @BuiltValueField(wireName: 'payment_method')
  String get paymentMethod;

  @nullable
  @BuiltValueField(wireName: 'amount_products')
  int get amountProducts;

  @nullable
  @BuiltValueField(wireName: 'sum_amProducts')
  int get sumAmProducts;

  @nullable
  @BuiltValueField(wireName: 'peso_liquido')
  int get pesoLiquido;

  @nullable
  @BuiltValueField(wireName: 'peso_bruto')
  int get pesoBruto;

  @nullable
  @BuiltValueField(wireName: 'value_delivery')
  double get valueDelivery;

  @nullable
  String get observation;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: 'order_products')
  BuiltList<DocumentReference> get orderProducts;

  @nullable
  DocumentReference get vendedor;

  @nullable
  @BuiltValueField(wireName: 'type_order')
  String get typeOrder;

  @nullable
  @BuiltValueField(wireName: 'condition_payment')
  String get conditionPayment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PedidosRecordBuilder builder) => builder
    ..idOrder = 0
    ..typeDcument = ''
    ..discountTotal = 0.0
    ..discountSaleHeader = 0.0
    ..discountProducts = 0.0
    ..saleTotal = 0.0
    ..saleProducts = 0.0
    ..paymentMethod = ''
    ..amountProducts = 0
    ..sumAmProducts = 0
    ..pesoLiquido = 0
    ..pesoBruto = 0
    ..valueDelivery = 0.0
    ..observation = ''
    ..orderProducts = ListBuilder()
    ..typeOrder = ''
    ..conditionPayment = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PedidosRecord._();
  factory PedidosRecord([void Function(PedidosRecordBuilder) updates]) =
      _$PedidosRecord;

  static PedidosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPedidosRecordData({
  DocumentReference company,
  DocumentReference customer,
  int idOrder,
  String typeDcument,
  DateTime saleDate,
  DateTime dateMovement,
  double discountTotal,
  double discountSaleHeader,
  double discountProducts,
  double saleTotal,
  double saleProducts,
  String paymentMethod,
  int amountProducts,
  int sumAmProducts,
  int pesoLiquido,
  int pesoBruto,
  double valueDelivery,
  String observation,
  DateTime createdDate,
  DateTime modifieldDate,
  DocumentReference vendedor,
  String typeOrder,
  String conditionPayment,
}) =>
    serializers.toFirestore(
        PedidosRecord.serializer,
        PedidosRecord((p) => p
          ..company = company
          ..customer = customer
          ..idOrder = idOrder
          ..typeDcument = typeDcument
          ..saleDate = saleDate
          ..dateMovement = dateMovement
          ..discountTotal = discountTotal
          ..discountSaleHeader = discountSaleHeader
          ..discountProducts = discountProducts
          ..saleTotal = saleTotal
          ..saleProducts = saleProducts
          ..paymentMethod = paymentMethod
          ..amountProducts = amountProducts
          ..sumAmProducts = sumAmProducts
          ..pesoLiquido = pesoLiquido
          ..pesoBruto = pesoBruto
          ..valueDelivery = valueDelivery
          ..observation = observation
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate
          ..orderProducts = null
          ..vendedor = vendedor
          ..typeOrder = typeOrder
          ..conditionPayment = conditionPayment));
