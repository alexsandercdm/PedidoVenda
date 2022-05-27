import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'unidade_record.g.dart';

abstract class UnidadeRecord
    implements Built<UnidadeRecord, UnidadeRecordBuilder> {
  static Serializer<UnidadeRecord> get serializer => _$unidadeRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'descriprition_unity')
  String get descripritionUnity;

  @nullable
  @BuiltValueField(wireName: 'id_unity')
  int get idUnity;

  @nullable
  @BuiltValueField(wireName: 'created_date')
  DateTime get createdDate;

  @nullable
  @BuiltValueField(wireName: 'modifield_date')
  DateTime get modifieldDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UnidadeRecordBuilder builder) => builder
    ..descripritionUnity = ''
    ..idUnity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unidade');

  static Stream<UnidadeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UnidadeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UnidadeRecord._();
  factory UnidadeRecord([void Function(UnidadeRecordBuilder) updates]) =
      _$UnidadeRecord;

  static UnidadeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUnidadeRecordData({
  String descripritionUnity,
  int idUnity,
  DateTime createdDate,
  DateTime modifieldDate,
}) =>
    serializers.toFirestore(
        UnidadeRecord.serializer,
        UnidadeRecord((u) => u
          ..descripritionUnity = descripritionUnity
          ..idUnity = idUnity
          ..createdDate = createdDate
          ..modifieldDate = modifieldDate));
