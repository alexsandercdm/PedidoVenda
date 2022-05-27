import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tabela_preco_products_record.g.dart';

abstract class TabelaPrecoProductsRecord
    implements
        Built<TabelaPrecoProductsRecord, TabelaPrecoProductsRecordBuilder> {
  static Serializer<TabelaPrecoProductsRecord> get serializer =>
      _$tabelaPrecoProductsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'id_table')
  DocumentReference get idTable;

  @nullable
  DocumentReference get product;

  @nullable
  @BuiltValueField(wireName: 'sale_value')
  double get saleValue;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TabelaPrecoProductsRecordBuilder builder) =>
      builder..saleValue = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tabelaPrecoProducts');

  static Stream<TabelaPrecoProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TabelaPrecoProductsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TabelaPrecoProductsRecord._();
  factory TabelaPrecoProductsRecord(
          [void Function(TabelaPrecoProductsRecordBuilder) updates]) =
      _$TabelaPrecoProductsRecord;

  static TabelaPrecoProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTabelaPrecoProductsRecordData({
  DocumentReference idTable,
  DocumentReference product,
  double saleValue,
  DateTime createdDate,
  DateTime modifieldDate,
}) =>
    serializers.toFirestore(
        TabelaPrecoProductsRecord.serializer,
        TabelaPrecoProductsRecord((t) => t
          ..idTable = idTable
          ..product = product
          ..saleValue = saleValue
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate));
