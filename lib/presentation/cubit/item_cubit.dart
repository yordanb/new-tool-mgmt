import 'package:bloc/bloc.dart';
import '../../domain/entities/item_entity.dart';
import '../../domain/usecases/get_items.dart';
import '../../domain/usecases/update_item.dart';
import '../../domain/usecases/delete_item.dart';

class ItemCubit extends Cubit<List<ItemEntity>> {
  final GetItems getItems;
  final CreateItem createItem;
  final UpdateItem updateItem;
  final DeleteItem deleteItem;

  ItemCubit({
    required this.getItems,
    required this.createItem,
    required this.updateItem,
    required this.deleteItem,
  }) : super([]);

  void fetchItems() async {
    final items = await getItems();
    emit(items);
  }

  void addItem(ItemEntity item) async {
    await createItem(item);
    fetchItems();
  }

  void editItem(ItemEntity item) async {
    await updateItem(item);
    fetchItems();
  }

  void removeItem(String id) async {
    await deleteItem(id);
    fetchItems();
  }
}
