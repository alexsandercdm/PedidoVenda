// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PedidoItemsRecord> _$pedidoItemsRecordSerializer =
    new _$PedidoItemsRecordSerializer();

class _$PedidoItemsRecordSerializer
    implements StructuredSerializer<PedidoItemsRecord> {
  @override
  final Iterable<Type> types = const [PedidoItemsRecord, _$PedidoItemsRecord];
  @override
  final String wireName = 'PedidoItemsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PedidoItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.idOrder;
    if (value != null) {
      result
        ..add('id_order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.product;
    if (value != null) {
      result
        ..add('product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.priceTable;
    if (value != null) {
      result
        ..add('price_table')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.discountTotalProduct;
    if (value != null) {
      result
        ..add('discount_total_product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountUnitPorcentagem;
    if (value != null) {
      result
        ..add('discount_unitPorcentagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priceUnitLiquido;
    if (value != null) {
      result
        ..add('price_unit_liquido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.unitProduct;
    if (value != null) {
      result
        ..add('unit_product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discountHeader;
    if (value != null) {
      result
        ..add('discount_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.valueBruto;
    if (value != null) {
      result
        ..add('value_bruto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.valueLiquido;
    if (value != null) {
      result
        ..add('value_liquido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountTotal;
    if (value != null) {
      result
        ..add('discount_total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountUnitProduct;
    if (value != null) {
      result
        ..add('discount_unit_product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.valueSubtotal;
    if (value != null) {
      result
        ..add('value_subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pesoLiquido;
    if (value != null) {
      result
        ..add('peso_liquido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pesoBruto;
    if (value != null) {
      result
        ..add('peso_bruto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  PedidoItemsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PedidoItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id_order':
          result.idOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'product':
          result.product = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'price_table':
          result.priceTable = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'discount_total_product':
          result.discountTotalProduct = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount_unitPorcentagem':
          result.discountUnitPorcentagem = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'price_unit_liquido':
          result.priceUnitLiquido = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'unit_product':
          result.unitProduct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discount_header':
          result.discountHeader = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'value_bruto':
          result.valueBruto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'value_liquido':
          result.valueLiquido = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount_total':
          result.discountTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount_unit_product':
          result.discountUnitProduct = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'value_subtotal':
          result.valueSubtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'peso_liquido':
          result.pesoLiquido = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'peso_bruto':
          result.pesoBruto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$PedidoItemsRecord extends PedidoItemsRecord {
  @override
  final DocumentReference<Object> idOrder;
  @override
  final DocumentReference<Object> product;
  @override
  final double priceTable;
  @override
  final int amount;
  @override
  final double discountTotalProduct;
  @override
  final double discountUnitPorcentagem;
  @override
  final double priceUnitLiquido;
  @override
  final String unitProduct;
  @override
  final double discountHeader;
  @override
  final double valueBruto;
  @override
  final double valueLiquido;
  @override
  final double discountTotal;
  @override
  final double discountUnitProduct;
  @override
  final double valueSubtotal;
  @override
  final double pesoLiquido;
  @override
  final double pesoBruto;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final DocumentReference<Object> reference;

  factory _$PedidoItemsRecord(
          [void Function(PedidoItemsRecordBuilder) updates]) =>
      (new PedidoItemsRecordBuilder()..update(updates)).build();

  _$PedidoItemsRecord._(
      {this.idOrder,
      this.product,
      this.priceTable,
      this.amount,
      this.discountTotalProduct,
      this.discountUnitPorcentagem,
      this.priceUnitLiquido,
      this.unitProduct,
      this.discountHeader,
      this.valueBruto,
      this.valueLiquido,
      this.discountTotal,
      this.discountUnitProduct,
      this.valueSubtotal,
      this.pesoLiquido,
      this.pesoBruto,
      this.createdDate,
      this.modifieldDate,
      this.reference})
      : super._();

  @override
  PedidoItemsRecord rebuild(void Function(PedidoItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PedidoItemsRecordBuilder toBuilder() =>
      new PedidoItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PedidoItemsRecord &&
        idOrder == other.idOrder &&
        product == other.product &&
        priceTable == other.priceTable &&
        amount == other.amount &&
        discountTotalProduct == other.discountTotalProduct &&
        discountUnitPorcentagem == other.discountUnitPorcentagem &&
        priceUnitLiquido == other.priceUnitLiquido &&
        unitProduct == other.unitProduct &&
        discountHeader == other.discountHeader &&
        valueBruto == other.valueBruto &&
        valueLiquido == other.valueLiquido &&
        discountTotal == other.discountTotal &&
        discountUnitProduct == other.discountUnitProduct &&
        valueSubtotal == other.valueSubtotal &&
        pesoLiquido == other.pesoLiquido &&
        pesoBruto == other.pesoBruto &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
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
                                                                            $jc(
                                                                                0,
                                                                                idOrder
                                                                                    .hashCode),
                                                                            product
                                                                                .hashCode),
                                                                        priceTable
                                                                            .hashCode),
                                                                    amount
                                                                        .hashCode),
                                                                discountTotalProduct
                                                                    .hashCode),
                                                            discountUnitPorcentagem
                                                                .hashCode),
                                                        priceUnitLiquido
                                                            .hashCode),
                                                    unitProduct.hashCode),
                                                discountHeader.hashCode),
                                            valueBruto.hashCode),
                                        valueLiquido.hashCode),
                                    discountTotal.hashCode),
                                discountUnitProduct.hashCode),
                            valueSubtotal.hashCode),
                        pesoLiquido.hashCode),
                    pesoBruto.hashCode),
                createdDate.hashCode),
            modifieldDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PedidoItemsRecord')
          ..add('idOrder', idOrder)
          ..add('product', product)
          ..add('priceTable', priceTable)
          ..add('amount', amount)
          ..add('discountTotalProduct', discountTotalProduct)
          ..add('discountUnitPorcentagem', discountUnitPorcentagem)
          ..add('priceUnitLiquido', priceUnitLiquido)
          ..add('unitProduct', unitProduct)
          ..add('discountHeader', discountHeader)
          ..add('valueBruto', valueBruto)
          ..add('valueLiquido', valueLiquido)
          ..add('discountTotal', discountTotal)
          ..add('discountUnitProduct', discountUnitProduct)
          ..add('valueSubtotal', valueSubtotal)
          ..add('pesoLiquido', pesoLiquido)
          ..add('pesoBruto', pesoBruto)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('reference', reference))
        .toString();
  }
}

class PedidoItemsRecordBuilder
    implements Builder<PedidoItemsRecord, PedidoItemsRecordBuilder> {
  _$PedidoItemsRecord _$v;

  DocumentReference<Object> _idOrder;
  DocumentReference<Object> get idOrder => _$this._idOrder;
  set idOrder(DocumentReference<Object> idOrder) => _$this._idOrder = idOrder;

  DocumentReference<Object> _product;
  DocumentReference<Object> get product => _$this._product;
  set product(DocumentReference<Object> product) => _$this._product = product;

  double _priceTable;
  double get priceTable => _$this._priceTable;
  set priceTable(double priceTable) => _$this._priceTable = priceTable;

  int _amount;
  int get amount => _$this._amount;
  set amount(int amount) => _$this._amount = amount;

  double _discountTotalProduct;
  double get discountTotalProduct => _$this._discountTotalProduct;
  set discountTotalProduct(double discountTotalProduct) =>
      _$this._discountTotalProduct = discountTotalProduct;

  double _discountUnitPorcentagem;
  double get discountUnitPorcentagem => _$this._discountUnitPorcentagem;
  set discountUnitPorcentagem(double discountUnitPorcentagem) =>
      _$this._discountUnitPorcentagem = discountUnitPorcentagem;

  double _priceUnitLiquido;
  double get priceUnitLiquido => _$this._priceUnitLiquido;
  set priceUnitLiquido(double priceUnitLiquido) =>
      _$this._priceUnitLiquido = priceUnitLiquido;

  String _unitProduct;
  String get unitProduct => _$this._unitProduct;
  set unitProduct(String unitProduct) => _$this._unitProduct = unitProduct;

  double _discountHeader;
  double get discountHeader => _$this._discountHeader;
  set discountHeader(double discountHeader) =>
      _$this._discountHeader = discountHeader;

  double _valueBruto;
  double get valueBruto => _$this._valueBruto;
  set valueBruto(double valueBruto) => _$this._valueBruto = valueBruto;

  double _valueLiquido;
  double get valueLiquido => _$this._valueLiquido;
  set valueLiquido(double valueLiquido) => _$this._valueLiquido = valueLiquido;

  double _discountTotal;
  double get discountTotal => _$this._discountTotal;
  set discountTotal(double discountTotal) =>
      _$this._discountTotal = discountTotal;

  double _discountUnitProduct;
  double get discountUnitProduct => _$this._discountUnitProduct;
  set discountUnitProduct(double discountUnitProduct) =>
      _$this._discountUnitProduct = discountUnitProduct;

  double _valueSubtotal;
  double get valueSubtotal => _$this._valueSubtotal;
  set valueSubtotal(double valueSubtotal) =>
      _$this._valueSubtotal = valueSubtotal;

  double _pesoLiquido;
  double get pesoLiquido => _$this._pesoLiquido;
  set pesoLiquido(double pesoLiquido) => _$this._pesoLiquido = pesoLiquido;

  double _pesoBruto;
  double get pesoBruto => _$this._pesoBruto;
  set pesoBruto(double pesoBruto) => _$this._pesoBruto = pesoBruto;

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

  PedidoItemsRecordBuilder() {
    PedidoItemsRecord._initializeBuilder(this);
  }

  PedidoItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idOrder = $v.idOrder;
      _product = $v.product;
      _priceTable = $v.priceTable;
      _amount = $v.amount;
      _discountTotalProduct = $v.discountTotalProduct;
      _discountUnitPorcentagem = $v.discountUnitPorcentagem;
      _priceUnitLiquido = $v.priceUnitLiquido;
      _unitProduct = $v.unitProduct;
      _discountHeader = $v.discountHeader;
      _valueBruto = $v.valueBruto;
      _valueLiquido = $v.valueLiquido;
      _discountTotal = $v.discountTotal;
      _discountUnitProduct = $v.discountUnitProduct;
      _valueSubtotal = $v.valueSubtotal;
      _pesoLiquido = $v.pesoLiquido;
      _pesoBruto = $v.pesoBruto;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PedidoItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PedidoItemsRecord;
  }

  @override
  void update(void Function(PedidoItemsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PedidoItemsRecord build() {
    final _$result = _$v ??
        new _$PedidoItemsRecord._(
            idOrder: idOrder,
            product: product,
            priceTable: priceTable,
            amount: amount,
            discountTotalProduct: discountTotalProduct,
            discountUnitPorcentagem: discountUnitPorcentagem,
            priceUnitLiquido: priceUnitLiquido,
            unitProduct: unitProduct,
            discountHeader: discountHeader,
            valueBruto: valueBruto,
            valueLiquido: valueLiquido,
            discountTotal: discountTotal,
            discountUnitProduct: discountUnitProduct,
            valueSubtotal: valueSubtotal,
            pesoLiquido: pesoLiquido,
            pesoBruto: pesoBruto,
            createdDate: createdDate,
            modifieldDate: modifieldDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
