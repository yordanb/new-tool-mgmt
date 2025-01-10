// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class ApplicationConfig {
  //@declaration
  int? id;
  String? appMode;
  String? companyName;
  String? address;
  String? phoneNumber;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  ApplicationConfig({
    //@constructor
    this.id,
    this.appMode,
    this.companyName,
    this.address,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory ApplicationConfig.fromJson(Map<String, dynamic> json) {
    return ApplicationConfig(
        id: json['id'],
        appMode: json['app_mode'],
        companyName: json['company_name'],
        address: json['address'],
        phoneNumber: json['phone_number'],
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
      'app_mode': appMode,
      'company_name': companyName,
      'address': address,
      'phone_number': phoneNumber,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  ApplicationConfig copyWith(
      {int? id,
      String? appMode,
      String? companyName,
      String? address,
      String? phoneNumber,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ApplicationConfig(
        id: id ?? this.id,
        appMode: appMode ?? this.appMode,
        companyName: companyName ?? this.companyName,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}
