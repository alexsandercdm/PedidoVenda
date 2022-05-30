import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_record.g.dart';

abstract class ItemsRecord implements Built<ItemsRecord, ItemsRecordBuilder> {
  static Serializer<ItemsRecord> get serializer => _$itemsRecordSerializer;

  @nullable
  DocumentReference get produto;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(ItemsRecordBuilder builder) => builder;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('items')
          : FirebaseFirestore.instance.collectionGroup('items');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('items').doc();

  static Stream<ItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ItemsRecord._();
  factory ItemsRecord([void Function(ItemsRecordBuilder) updates]) =
      _$ItemsRecord;

  static ItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createItemsRecordData({
  DocumentReference produto,
}) =>
    serializers.toFirestore(
        ItemsRecord.serializer, ItemsRecord((i) => i..produto = produto));
