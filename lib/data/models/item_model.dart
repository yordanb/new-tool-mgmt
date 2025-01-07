import '../../domain/entities/item_entity.dart';

class ItemModel extends ItemEntity {
  ItemModel({required String id, required String name})
      : super(id: id, name: name);

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
