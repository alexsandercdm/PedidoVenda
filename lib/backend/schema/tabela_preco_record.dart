import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tabela_preco_record.g.dart';

abstract class TabelaPrecoRecord
    implements Built<TabelaPrecoRecord, TabelaPrecoRecordBuilder> {
  static Serializer<TabelaPrecoRecord> get serializer =>
      _$tabelaPrecoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'table_name')
  String get tableName;

  @nullable
  @BuiltValueField(wireName: 'id_table')
  int get idTable;

  @nullable
  BuiltList<DocumentReference> get products;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TabelaPrecoRecordBuilder builder) => builder
    ..tableName = ''
    ..idTable = 0
    ..products = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tabelaPreco');

  static Stream<TabelaPrecoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TabelaPrecoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TabelaPrecoRecord._();
  factory TabelaPrecoRecord([void Function(TabelaPrecoRecordBuilder) updates]) =
      _$TabelaPrecoRecord;

  static TabelaPrecoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTabelaPrecoRecordData({
  String tableName,
  int idTable,
  DateTime createdDate,
  DateTime modifieldDate,
}) =>
    serializers.toFirestore(
        TabelaPrecoRecord.serializer,
        TabelaPrecoRecord((t) => t
          ..tableName = tableName
          ..idTable = idTable
          ..products = null
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate));
