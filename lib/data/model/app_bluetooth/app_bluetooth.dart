// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AppBluetooth {
  //@declaration
  int? id;
  String? deviceName;
  String? deviceAddress;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  AppBluetooth({
    //@constructor
    this.id,
    this.deviceName,
    this.deviceAddress,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory AppBluetooth.fromJson(Map<String, dynamic> json) {
    return AppBluetooth(
      id: json['id'],
      deviceName: json['device_name'],
      deviceAddress: json['device_address'],
      createdAt: json['created_at'] == null ? null : DateTime.tryParse(json['created_at'].toString()),
      updatedAt: json['updated_at'] == null ? null : DateTime.tryParse(json['updated_at'].toString())
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'device_name': deviceName,
      'device_address': deviceAddress,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  AppBluetooth copyWith({
     int? id,
     String? deviceName,
     String? deviceAddress,
     DateTime? createdAt,
     DateTime? updatedAt
  }) {
    return AppBluetooth(
      id: id ?? this.id,
      deviceName: deviceName ?? this.deviceName,
      deviceAddress: deviceAddress ?? this.deviceAddress,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt
    );
  }
}