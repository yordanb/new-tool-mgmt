import '../entities/item_entity.dart';

abstract class ItemRepository {
  Future<List<ItemEntity>> getItems();
  Future<void> createItem(ItemEntity item);
  Future<void> updateItem(ItemEntity item);
  Future<void> deleteItem(String id);
}
