import '../../domain/entities/item_entity.dart';
import '../../domain/repository/item_repository.dart';
import '../datasource/api_service.dart';
import '../models/item_model.dart';

class ItemRepositoryImpl implements ItemRepository {
  final ApiService apiService;

  ItemRepositoryImpl(this.apiService);

  @override
  Future<List<ItemEntity>> getItems() async {
    final response = await apiService.getItems();
    if (response.statusCode == 200) {
      final List data = response.body as List;
      return data.map((e) => ItemModel.fromJson(e)).toList();
    }
    throw Exception("Failed to fetch items");
  }

  @override
  Future<void> createItem(ItemEntity item) async {
    final model = ItemModel(id: item.id, name: item.name);
    await apiService.createItem(model.toJson());
  }

  @override
  Future<void> updateItem(ItemEntity item) async {
    final model = ItemModel(id: item.id, name: item.name);
    await apiService.updateItem(item.id, model.toJson());
  }

  @override
  Future<void> deleteItem(String id) async {
    await apiService.deleteItem(id);
  }
}
