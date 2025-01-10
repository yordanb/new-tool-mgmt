// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AppPrinter {
  //@declaration
  int? id;
  String? message;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  AppPrinter({
    //@constructor
    this.id,
    this.message,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory AppPrinter.fromJson(Map<String, dynamic> json) {
    return AppPrinter(
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
  AppPrinter copyWith(
      {int? id, String? message, DateTime? createdAt, DateTime? updatedAt}) {
    return AppPrinter(
        id: id ?? this.id,
        message: message ?? this.message,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}
