// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class Tool {
  //@declaration
  int? id;
  String? name;
  String? description;
  String? imageUrl;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  Tool({
    //@constructor
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory Tool.fromJson(Map<String, dynamic> json) {
    return Tool(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['image_url'],
        createdAt: DateTime.tryParse(json['created_at'].toString()),
        updatedAt: DateTime.tryParse(json['updated_at'].toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image_url': imageUrl,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  Tool copyWith(
      {int? id,
      String? name,
      String? description,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return Tool(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}
