// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AppPrinterEntity {
  //@declaration
  int? id;
  String? message;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  AppPrinterEntity({
    //@constructor
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory AppPrinterEntity.fromJson(Map<String, dynamic> json) {
    return AppPrinterEntity(
        id: json['id'],
        message: json['message'],
        createdAt: json['created_at'] == null
            ? null
            : DateTime.tryParse(json['created_at'].toString()),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.tryParse(json['updated_at'].toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  AppPrinterEntity copyWith(
      {int? id, String? message, DateTime? createdAt, DateTime? updatedAt}) {
    return AppPrinterEntity(
        id: id ?? this.id,
        message: message ?? this.message,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}
