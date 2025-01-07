import '../entities/item_entity.dart';
import '../repository/item_repository.dart';

class GetItems {
  final ItemRepository repository;

  GetItems(this.repository);

  Future<List<ItemEntity>> call() async => repository.getItems();
}
