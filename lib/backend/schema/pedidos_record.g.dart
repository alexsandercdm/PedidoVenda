// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PedidosRecord> _$pedidosRecordSerializer =
    new _$PedidosRecordSerializer();

class _$PedidosRecordSerializer implements StructuredSerializer<PedidosRecord> {
  @override
  final Iterable<Type> types = const [PedidosRecord, _$PedidosRecord];
  @override
  final String wireName = 'PedidosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PedidosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.customer;
    if (value != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.idOrder;
    if (value != null) {
      result
        ..add('id_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.typeDcument;
    if (value != null) {
      result
        ..add('type_dcument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.saleDate;
    if (value != null) {
      result
        ..add('sale_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateMovement;
    if (value != null) {
      result
        ..add('date_movement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.discountTotal;
    if (value != null) {
      result
        ..add('discountTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountSaleHeader;
    if (value != null) {
      result
        ..add('discount_saleHeader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountProducts;
    if (value != null) {
      result
        ..add('discount_products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.saleTotal;
    if (value != null) {
      result
        ..add('sale_total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.saleProducts;
    if (value != null) {
      result
        ..add('sale_products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paymentMethod;
    if (value != null) {
      result
        ..add('payment_method')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountProducts;
    if (value != null) {
      result
        ..add('amount_products')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sumAmProducts;
    if (value != null) {
      result
        ..add('sum_amProducts')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pesoLiquido;
    if (value != null) {
      result
        ..add('peso_liquido')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pesoBruto;
    if (value != null) {
      result
        ..add('peso_bruto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.valueDelivery;
    if (value != null) {
      result
        ..add('value_delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.observation;
    if (value != null) {
      result
        ..add('observation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.orderProducts;
    if (value != null) {
      result
        ..add('order_products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.vendedor;
    if (value != null) {
      result
        ..add('vendedor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.typeOrder;
    if (value != null) {
      result
        ..add('type_order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conditionPayment;
    if (value != null) {
      result
        ..add('condition_payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderReferente;
    if (value != null) {
      result
        ..add('orderReferente')
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
  PedidosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PedidosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'company':
          result.company = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'customer':
          result.customer = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'id_order':
          result.idOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type_dcument':
          result.typeDcument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sale_date':
          result.saleDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'date_movement':
          result.dateMovement = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'discountTotal':
          result.discountTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount_saleHeader':
          result.discountSaleHeader = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount_products':
          result.discountProducts = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sale_total':
          result.saleTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sale_products':
          result.saleProducts = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'payment_method':
          result.paymentMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount_products':
          result.amountProducts = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sum_amProducts':
          result.sumAmProducts = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'peso_liquido':
          result.pesoLiquido = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'peso_bruto':
          result.pesoBruto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'value_delivery':
          result.valueDelivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'observation':
          result.observation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'modifield_date':
          result.modifieldDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'order_products':
          result.orderProducts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'vendedor':
          result.vendedor = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'type_order':
          result.typeOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'condition_payment':
          result.conditionPayment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderReferente':
          result.orderReferente = serializers.deserialize(value,
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

class _$PedidosRecord extends PedidosRecord {
  @override
  final DocumentReference<Object> company;
  @override
  final DocumentReference<Object> customer;
  @override
  final int idOrder;
  @override
  final String typeDcument;
  @override
  final DateTime saleDate;
  @override
  final DateTime dateMovement;
  @override
  final double discountTotal;
  @override
  final double discountSaleHeader;
  @override
  final double discountProducts;
  @override
  final double saleTotal;
  @override
  final double saleProducts;
  @override
  final String paymentMethod;
  @override
  final int amountProducts;
  @override
  final int sumAmProducts;
  @override
  final int pesoLiquido;
  @override
  final int pesoBruto;
  @override
  final double valueDelivery;
  @override
  final String observation;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final BuiltList<DocumentReference<Object>> orderProducts;
  @override
  final DocumentReference<Object> vendedor;
  @override
  final String typeOrder;
  @override
  final String conditionPayment;
  @override
  final DocumentReference<Object> orderReferente;
  @override
  final DocumentReference<Object> reference;

  factory _$PedidosRecord([void Function(PedidosRecordBuilder) updates]) =>
      (new PedidosRecordBuilder()..update(updates)).build();

  _$PedidosRecord._(
      {this.company,
      this.customer,
      this.idOrder,
      this.typeDcument,
      this.saleDate,
      this.dateMovement,
      this.discountTotal,
      this.discountSaleHeader,
      this.discountProducts,
      this.saleTotal,
      this.saleProducts,
      this.paymentMethod,
      this.amountProducts,
      this.sumAmProducts,
      this.pesoLiquido,
      this.pesoBruto,
      this.valueDelivery,
      this.observation,
      this.createdDate,
      this.modifieldDate,
      this.orderProducts,
      this.vendedor,
      this.typeOrder,
      this.conditionPayment,
      this.orderReferente,
      this.reference})
      : super._();

  @override
  PedidosRecord rebuild(void Function(PedidosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PedidosRecordBuilder toBuilder() => new PedidosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PedidosRecord &&
        company == other.company &&
        customer == other.customer &&
        idOrder == other.idOrder &&
        typeDcument == other.typeDcument &&
        saleDate == other.saleDate &&
        dateMovement == other.dateMovement &&
        discountTotal == other.discountTotal &&
        discountSaleHeader == other.discountSaleHeader &&
        discountProducts == other.discountProducts &&
        saleTotal == other.saleTotal &&
        saleProducts == other.saleProducts &&
        paymentMethod == other.paymentMethod &&
        amountProducts == other.amountProducts &&
        sumAmProducts == other.sumAmProducts &&
        pesoLiquido == other.pesoLiquido &&
        pesoBruto == other.pesoBruto &&
        valueDelivery == other.valueDelivery &&
        observation == other.observation &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        orderProducts == other.orderProducts &&
        vendedor == other.vendedor &&
        typeOrder == other.typeOrder &&
        conditionPayment == other.conditionPayment &&
        orderReferente == other.orderReferente &&
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, company.hashCode), customer.hashCode), idOrder.hashCode), typeDcument.hashCode), saleDate.hashCode), dateMovement.hashCode), discountTotal.hashCode),
                                                                                discountSaleHeader.hashCode),
                                                                            discountProducts.hashCode),
                                                                        saleTotal.hashCode),
                                                                    saleProducts.hashCode),
                                                                paymentMethod.hashCode),
                                                            amountProducts.hashCode),
                                                        sumAmProducts.hashCode),
                                                    pesoLiquido.hashCode),
                                                pesoBruto.hashCode),
                                            valueDelivery.hashCode),
                                        observation.hashCode),
                                    createdDate.hashCode),
                                modifieldDate.hashCode),
                            orderProducts.hashCode),
                        vendedor.hashCode),
                    typeOrder.hashCode),
                conditionPayment.hashCode),
            orderReferente.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PedidosRecord')
          ..add('company', company)
          ..add('customer', customer)
          ..add('idOrder', idOrder)
          ..add('typeDcument', typeDcument)
          ..add('saleDate', saleDate)
          ..add('dateMovement', dateMovement)
          ..add('discountTotal', discountTotal)
          ..add('discountSaleHeader', discountSaleHeader)
          ..add('discountProducts', discountProducts)
          ..add('saleTotal', saleTotal)
          ..add('saleProducts', saleProducts)
          ..add('paymentMethod', paymentMethod)
          ..add('amountProducts', amountProducts)
          ..add('sumAmProducts', sumAmProducts)
          ..add('pesoLiquido', pesoLiquido)
          ..add('pesoBruto', pesoBruto)
          ..add('valueDelivery', valueDelivery)
          ..add('observation', observation)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('orderProducts', orderProducts)
          ..add('vendedor', vendedor)
          ..add('typeOrder', typeOrder)
          ..add('conditionPayment', conditionPayment)
          ..add('orderReferente', orderReferente)
          ..add('reference', reference))
        .toString();
  }
}

class PedidosRecordBuilder
    implements Builder<PedidosRecord, PedidosRecordBuilder> {
  _$PedidosRecord _$v;

  DocumentReference<Object> _company;
  DocumentReference<Object> get company => _$this._company;
  set company(DocumentReference<Object> company) => _$this._company = company;

  DocumentReference<Object> _customer;
  DocumentReference<Object> get customer => _$this._customer;
  set customer(DocumentReference<Object> customer) =>
      _$this._customer = customer;

  int _idOrder;
  int get idOrder => _$this._idOrder;
  set idOrder(int idOrder) => _$this._idOrder = idOrder;

  String _typeDcument;
  String get typeDcument => _$this._typeDcument;
  set typeDcument(String typeDcument) => _$this._typeDcument = typeDcument;

  DateTime _saleDate;
  DateTime get saleDate => _$this._saleDate;
  set saleDate(DateTime saleDate) => _$this._saleDate = saleDate;

  DateTime _dateMovement;
  DateTime get dateMovement => _$this._dateMovement;
  set dateMovement(DateTime dateMovement) =>
      _$this._dateMovement = dateMovement;

  double _discountTotal;
  double get discountTotal => _$this._discountTotal;
  set discountTotal(double discountTotal) =>
      _$this._discountTotal = discountTotal;

  double _discountSaleHeader;
  double get discountSaleHeader => _$this._discountSaleHeader;
  set discountSaleHeader(double discountSaleHeader) =>
      _$this._discountSaleHeader = discountSaleHeader;

  double _discountProducts;
  double get discountProducts => _$this._discountProducts;
  set discountProducts(double discountProducts) =>
      _$this._discountProducts = discountProducts;

  double _saleTotal;
  double get saleTotal => _$this._saleTotal;
  set saleTotal(double saleTotal) => _$this._saleTotal = saleTotal;

  double _saleProducts;
  double get saleProducts => _$this._saleProducts;
  set saleProducts(double saleProducts) => _$this._saleProducts = saleProducts;

  String _paymentMethod;
  String get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  int _amountProducts;
  int get amountProducts => _$this._amountProducts;
  set amountProducts(int amountProducts) =>
      _$this._amountProducts = amountProducts;

  int _sumAmProducts;
  int get sumAmProducts => _$this._sumAmProducts;
  set sumAmProducts(int sumAmProducts) => _$this._sumAmProducts = sumAmProducts;

  int _pesoLiquido;
  int get pesoLiquido => _$this._pesoLiquido;
  set pesoLiquido(int pesoLiquido) => _$this._pesoLiquido = pesoLiquido;

  int _pesoBruto;
  int get pesoBruto => _$this._pesoBruto;
  set pesoBruto(int pesoBruto) => _$this._pesoBruto = pesoBruto;

  double _valueDelivery;
  double get valueDelivery => _$this._valueDelivery;
  set valueDelivery(double valueDelivery) =>
      _$this._valueDelivery = valueDelivery;

  String _observation;
  String get observation => _$this._observation;
  set observation(String observation) => _$this._observation = observation;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DateTime _modifieldDate;
  DateTime get modifieldDate => _$this._modifieldDate;
  set modifieldDate(DateTime modifieldDate) =>
      _$this._modifieldDate = modifieldDate;

  ListBuilder<DocumentReference<Object>> _orderProducts;
  ListBuilder<DocumentReference<Object>> get orderProducts =>
      _$this._orderProducts ??= new ListBuilder<DocumentReference<Object>>();
  set orderProducts(ListBuilder<DocumentReference<Object>> orderProducts) =>
      _$this._orderProducts = orderProducts;

  DocumentReference<Object> _vendedor;
  DocumentReference<Object> get vendedor => _$this._vendedor;
  set vendedor(DocumentReference<Object> vendedor) =>
      _$this._vendedor = vendedor;

  String _typeOrder;
  String get typeOrder => _$this._typeOrder;
  set typeOrder(String typeOrder) => _$this._typeOrder = typeOrder;

  String _conditionPayment;
  String get conditionPayment => _$this._conditionPayment;
  set conditionPayment(String conditionPayment) =>
      _$this._conditionPayment = conditionPayment;

  DocumentReference<Object> _orderReferente;
  DocumentReference<Object> get orderReferente => _$this._orderReferente;
  set orderReferente(DocumentReference<Object> orderReferente) =>
      _$this._orderReferente = orderReferente;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PedidosRecordBuilder() {
    PedidosRecord._initializeBuilder(this);
  }

  PedidosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _company = $v.company;
      _customer = $v.customer;
      _idOrder = $v.idOrder;
      _typeDcument = $v.typeDcument;
      _saleDate = $v.saleDate;
      _dateMovement = $v.dateMovement;
      _discountTotal = $v.discountTotal;
      _discountSaleHeader = $v.discountSaleHeader;
      _discountProducts = $v.discountProducts;
      _saleTotal = $v.saleTotal;
      _saleProducts = $v.saleProducts;
      _paymentMethod = $v.paymentMethod;
      _amountProducts = $v.amountProducts;
      _sumAmProducts = $v.sumAmProducts;
      _pesoLiquido = $v.pesoLiquido;
      _pesoBruto = $v.pesoBruto;
      _valueDelivery = $v.valueDelivery;
      _observation = $v.observation;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _orderProducts = $v.orderProducts?.toBuilder();
      _vendedor = $v.vendedor;
      _typeOrder = $v.typeOrder;
      _conditionPayment = $v.conditionPayment;
      _orderReferente = $v.orderReferente;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PedidosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PedidosRecord;
  }

  @override
  void update(void Function(PedidosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PedidosRecord build() {
    _$PedidosRecord _$result;
    try {
      _$result = _$v ??
          new _$PedidosRecord._(
              company: company,
              customer: customer,
              idOrder: idOrder,
              typeDcument: typeDcument,
              saleDate: saleDate,
              dateMovement: dateMovement,
              discountTotal: discountTotal,
              discountSaleHeader: discountSaleHeader,
              discountProducts: discountProducts,
              saleTotal: saleTotal,
              saleProducts: saleProducts,
              paymentMethod: paymentMethod,
              amountProducts: amountProducts,
              sumAmProducts: sumAmProducts,
              pesoLiquido: pesoLiquido,
              pesoBruto: pesoBruto,
              valueDelivery: valueDelivery,
              observation: observation,
              createdDate: createdDate,
              modifieldDate: modifieldDate,
              orderProducts: _orderProducts?.build(),
              vendedor: vendedor,
              typeOrder: typeOrder,
              conditionPayment: conditionPayment,
              orderReferente: orderReferente,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderProducts';
        _orderProducts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PedidosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
