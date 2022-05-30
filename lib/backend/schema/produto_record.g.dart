// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdutoRecord> _$produtoRecordSerializer =
    new _$ProdutoRecordSerializer();

class _$ProdutoRecordSerializer implements StructuredSerializer<ProdutoRecord> {
  @override
  final Iterable<Type> types = const [ProdutoRecord, _$ProdutoRecord];
  @override
  final String wireName = 'ProdutoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdutoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.costPrice;
    if (value != null) {
      result
        ..add('cost_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.productCode;
    if (value != null) {
      result
        ..add('product_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.productName;
    if (value != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.pesoliquidoUnit;
    if (value != null) {
      result
        ..add('pesoliquido_unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pesobrutoUnit;
    if (value != null) {
      result
        ..add('pesobruto_unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.unit;
    if (value != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.typeProduct;
    if (value != null) {
      result
        ..add('type_product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.origemMercadoria;
    if (value != null) {
      result
        ..add('origem_mercadoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referenciaEANGTIN;
    if (value != null) {
      result
        ..add('referencia_EANGTIN')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ncm;
    if (value != null) {
      result
        ..add('NCM')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.excecaoIpi;
    if (value != null) {
      result
        ..add('excecao_ipi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigoCest;
    if (value != null) {
      result
        ..add('codigo_cest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codBenefFiscalUF;
    if (value != null) {
      result
        ..add('cod_benef_fiscalUF')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unidadeComercial;
    if (value != null) {
      result
        ..add('unidade_comercial')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unidadeTributadaDiferente;
    if (value != null) {
      result
        ..add('unidade_tributada_diferente')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.descrition;
    if (value != null) {
      result
        ..add('descrition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgPrincipal;
    if (value != null) {
      result
        ..add('img_principal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ProdutoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdutoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cost_price':
          result.costPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'product_code':
          result.productCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_name':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'pesoliquido_unit':
          result.pesoliquidoUnit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pesobruto_unit':
          result.pesobrutoUnit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'modifield_date':
          result.modifieldDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'type_product':
          result.typeProduct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origem_mercadoria':
          result.origemMercadoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referencia_EANGTIN':
          result.referenciaEANGTIN = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'NCM':
          result.ncm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'excecao_ipi':
          result.excecaoIpi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'codigo_cest':
          result.codigoCest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cod_benef_fiscalUF':
          result.codBenefFiscalUF = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unidade_comercial':
          result.unidadeComercial = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unidade_tributada_diferente':
          result.unidadeTributadaDiferente = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'descrition':
          result.descrition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img_principal':
          result.imgPrincipal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ProdutoRecord extends ProdutoRecord {
  @override
  final double costPrice;
  @override
  final int productCode;
  @override
  final String productName;
  @override
  final BuiltList<String> images;
  @override
  final double pesoliquidoUnit;
  @override
  final double pesobrutoUnit;
  @override
  final DocumentReference<Object> category;
  @override
  final DocumentReference<Object> brand;
  @override
  final DocumentReference<Object> unit;
  @override
  final DateTime createdDate;
  @override
  final DateTime modifieldDate;
  @override
  final double salePrice;
  @override
  final String typeProduct;
  @override
  final String origemMercadoria;
  @override
  final int referenciaEANGTIN;
  @override
  final int ncm;
  @override
  final String excecaoIpi;
  @override
  final String codigoCest;
  @override
  final String codBenefFiscalUF;
  @override
  final String unidadeComercial;
  @override
  final bool unidadeTributadaDiferente;
  @override
  final String descrition;
  @override
  final String imgPrincipal;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdutoRecord([void Function(ProdutoRecordBuilder) updates]) =>
      (new ProdutoRecordBuilder()..update(updates)).build();

  _$ProdutoRecord._(
      {this.costPrice,
      this.productCode,
      this.productName,
      this.images,
      this.pesoliquidoUnit,
      this.pesobrutoUnit,
      this.category,
      this.brand,
      this.unit,
      this.createdDate,
      this.modifieldDate,
      this.salePrice,
      this.typeProduct,
      this.origemMercadoria,
      this.referenciaEANGTIN,
      this.ncm,
      this.excecaoIpi,
      this.codigoCest,
      this.codBenefFiscalUF,
      this.unidadeComercial,
      this.unidadeTributadaDiferente,
      this.descrition,
      this.imgPrincipal,
      this.reference})
      : super._();

  @override
  ProdutoRecord rebuild(void Function(ProdutoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdutoRecordBuilder toBuilder() => new ProdutoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdutoRecord &&
        costPrice == other.costPrice &&
        productCode == other.productCode &&
        productName == other.productName &&
        images == other.images &&
        pesoliquidoUnit == other.pesoliquidoUnit &&
        pesobrutoUnit == other.pesobrutoUnit &&
        category == other.category &&
        brand == other.brand &&
        unit == other.unit &&
        createdDate == other.createdDate &&
        modifieldDate == other.modifieldDate &&
        salePrice == other.salePrice &&
        typeProduct == other.typeProduct &&
        origemMercadoria == other.origemMercadoria &&
        referenciaEANGTIN == other.referenciaEANGTIN &&
        ncm == other.ncm &&
        excecaoIpi == other.excecaoIpi &&
        codigoCest == other.codigoCest &&
        codBenefFiscalUF == other.codBenefFiscalUF &&
        unidadeComercial == other.unidadeComercial &&
        unidadeTributadaDiferente == other.unidadeTributadaDiferente &&
        descrition == other.descrition &&
        imgPrincipal == other.imgPrincipal &&
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
                                                                            $jc($jc($jc($jc($jc($jc(0, costPrice.hashCode), productCode.hashCode), productName.hashCode), images.hashCode), pesoliquidoUnit.hashCode),
                                                                                pesobrutoUnit.hashCode),
                                                                            category.hashCode),
                                                                        brand.hashCode),
                                                                    unit.hashCode),
                                                                createdDate.hashCode),
                                                            modifieldDate.hashCode),
                                                        salePrice.hashCode),
                                                    typeProduct.hashCode),
                                                origemMercadoria.hashCode),
                                            referenciaEANGTIN.hashCode),
                                        ncm.hashCode),
                                    excecaoIpi.hashCode),
                                codigoCest.hashCode),
                            codBenefFiscalUF.hashCode),
                        unidadeComercial.hashCode),
                    unidadeTributadaDiferente.hashCode),
                descrition.hashCode),
            imgPrincipal.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdutoRecord')
          ..add('costPrice', costPrice)
          ..add('productCode', productCode)
          ..add('productName', productName)
          ..add('images', images)
          ..add('pesoliquidoUnit', pesoliquidoUnit)
          ..add('pesobrutoUnit', pesobrutoUnit)
          ..add('category', category)
          ..add('brand', brand)
          ..add('unit', unit)
          ..add('createdDate', createdDate)
          ..add('modifieldDate', modifieldDate)
          ..add('salePrice', salePrice)
          ..add('typeProduct', typeProduct)
          ..add('origemMercadoria', origemMercadoria)
          ..add('referenciaEANGTIN', referenciaEANGTIN)
          ..add('ncm', ncm)
          ..add('excecaoIpi', excecaoIpi)
          ..add('codigoCest', codigoCest)
          ..add('codBenefFiscalUF', codBenefFiscalUF)
          ..add('unidadeComercial', unidadeComercial)
          ..add('unidadeTributadaDiferente', unidadeTributadaDiferente)
          ..add('descrition', descrition)
          ..add('imgPrincipal', imgPrincipal)
          ..add('reference', reference))
        .toString();
  }
}

class ProdutoRecordBuilder
    implements Builder<ProdutoRecord, ProdutoRecordBuilder> {
  _$ProdutoRecord _$v;

  double _costPrice;
  double get costPrice => _$this._costPrice;
  set costPrice(double costPrice) => _$this._costPrice = costPrice;

  int _productCode;
  int get productCode => _$this._productCode;
  set productCode(int productCode) => _$this._productCode = productCode;

  String _productName;
  String get productName => _$this._productName;
  set productName(String productName) => _$this._productName = productName;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  double _pesoliquidoUnit;
  double get pesoliquidoUnit => _$this._pesoliquidoUnit;
  set pesoliquidoUnit(double pesoliquidoUnit) =>
      _$this._pesoliquidoUnit = pesoliquidoUnit;

  double _pesobrutoUnit;
  double get pesobrutoUnit => _$this._pesobrutoUnit;
  set pesobrutoUnit(double pesobrutoUnit) =>
      _$this._pesobrutoUnit = pesobrutoUnit;

  DocumentReference<Object> _category;
  DocumentReference<Object> get category => _$this._category;
  set category(DocumentReference<Object> category) =>
      _$this._category = category;

  DocumentReference<Object> _brand;
  DocumentReference<Object> get brand => _$this._brand;
  set brand(DocumentReference<Object> brand) => _$this._brand = brand;

  DocumentReference<Object> _unit;
  DocumentReference<Object> get unit => _$this._unit;
  set unit(DocumentReference<Object> unit) => _$this._unit = unit;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  DateTime _modifieldDate;
  DateTime get modifieldDate => _$this._modifieldDate;
  set modifieldDate(DateTime modifieldDate) =>
      _$this._modifieldDate = modifieldDate;

  double _salePrice;
  double get salePrice => _$this._salePrice;
  set salePrice(double salePrice) => _$this._salePrice = salePrice;

  String _typeProduct;
  String get typeProduct => _$this._typeProduct;
  set typeProduct(String typeProduct) => _$this._typeProduct = typeProduct;

  String _origemMercadoria;
  String get origemMercadoria => _$this._origemMercadoria;
  set origemMercadoria(String origemMercadoria) =>
      _$this._origemMercadoria = origemMercadoria;

  int _referenciaEANGTIN;
  int get referenciaEANGTIN => _$this._referenciaEANGTIN;
  set referenciaEANGTIN(int referenciaEANGTIN) =>
      _$this._referenciaEANGTIN = referenciaEANGTIN;

  int _ncm;
  int get ncm => _$this._ncm;
  set ncm(int ncm) => _$this._ncm = ncm;

  String _excecaoIpi;
  String get excecaoIpi => _$this._excecaoIpi;
  set excecaoIpi(String excecaoIpi) => _$this._excecaoIpi = excecaoIpi;

  String _codigoCest;
  String get codigoCest => _$this._codigoCest;
  set codigoCest(String codigoCest) => _$this._codigoCest = codigoCest;

  String _codBenefFiscalUF;
  String get codBenefFiscalUF => _$this._codBenefFiscalUF;
  set codBenefFiscalUF(String codBenefFiscalUF) =>
      _$this._codBenefFiscalUF = codBenefFiscalUF;

  String _unidadeComercial;
  String get unidadeComercial => _$this._unidadeComercial;
  set unidadeComercial(String unidadeComercial) =>
      _$this._unidadeComercial = unidadeComercial;

  bool _unidadeTributadaDiferente;
  bool get unidadeTributadaDiferente => _$this._unidadeTributadaDiferente;
  set unidadeTributadaDiferente(bool unidadeTributadaDiferente) =>
      _$this._unidadeTributadaDiferente = unidadeTributadaDiferente;

  String _descrition;
  String get descrition => _$this._descrition;
  set descrition(String descrition) => _$this._descrition = descrition;

  String _imgPrincipal;
  String get imgPrincipal => _$this._imgPrincipal;
  set imgPrincipal(String imgPrincipal) => _$this._imgPrincipal = imgPrincipal;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdutoRecordBuilder() {
    ProdutoRecord._initializeBuilder(this);
  }

  ProdutoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _costPrice = $v.costPrice;
      _productCode = $v.productCode;
      _productName = $v.productName;
      _images = $v.images?.toBuilder();
      _pesoliquidoUnit = $v.pesoliquidoUnit;
      _pesobrutoUnit = $v.pesobrutoUnit;
      _category = $v.category;
      _brand = $v.brand;
      _unit = $v.unit;
      _createdDate = $v.createdDate;
      _modifieldDate = $v.modifieldDate;
      _salePrice = $v.salePrice;
      _typeProduct = $v.typeProduct;
      _origemMercadoria = $v.origemMercadoria;
      _referenciaEANGTIN = $v.referenciaEANGTIN;
      _ncm = $v.ncm;
      _excecaoIpi = $v.excecaoIpi;
      _codigoCest = $v.codigoCest;
      _codBenefFiscalUF = $v.codBenefFiscalUF;
      _unidadeComercial = $v.unidadeComercial;
      _unidadeTributadaDiferente = $v.unidadeTributadaDiferente;
      _descrition = $v.descrition;
      _imgPrincipal = $v.imgPrincipal;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdutoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdutoRecord;
  }

  @override
  void update(void Function(ProdutoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdutoRecord build() {
    _$ProdutoRecord _$result;
    try {
      _$result = _$v ??
          new _$ProdutoRecord._(
              costPrice: costPrice,
              productCode: productCode,
              productName: productName,
              images: _images?.build(),
              pesoliquidoUnit: pesoliquidoUnit,
              pesobrutoUnit: pesobrutoUnit,
              category: category,
              brand: brand,
              unit: unit,
              createdDate: createdDate,
              modifieldDate: modifieldDate,
              salePrice: salePrice,
              typeProduct: typeProduct,
              origemMercadoria: origemMercadoria,
              referenciaEANGTIN: referenciaEANGTIN,
              ncm: ncm,
              excecaoIpi: excecaoIpi,
              codigoCest: codigoCest,
              codBenefFiscalUF: codBenefFiscalUF,
              unidadeComercial: unidadeComercial,
              unidadeTributadaDiferente: unidadeTributadaDiferente,
              descrition: descrition,
              imgPrincipal: imgPrincipal,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProdutoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
