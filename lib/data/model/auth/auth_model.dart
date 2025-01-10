// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AuthModel {
  //@declaration
  String? id;
  int? userProfileId;
  String? name;
  String? email;
  String? imageUrl;
  String? accessToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  AuthModel({
    //@constructor
    this.id,
    this.userProfileId,
    this.name,
    this.email,
    this.imageUrl,
    this.accessToken,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      id: json['id'],
      userProfileId: json['user_profile_id'],
      name: json['name'],
      email: json['email'],
      imageUrl: json['image_url'],
      accessToken: json['access_token'],
      createdAt: json['created_at'] == null ? null : DateTime.tryParse(json['created_at'].toString()),
      updatedAt: json['updated_at'] == null ? null : DateTime.tryParse(json['updated_at'].toString())
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_profile_id': userProfileId,
      'name': name,
      'email': email,
      'image_url': imageUrl,
      'access_token': accessToken,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  AuthModel copyWith({
     String? id,
     int? userProfileId,
     String? name,
     String? email,
     String? imageUrl,
     String? accessToken,
     DateTime? createdAt,
     DateTime? updatedAt
  }) {
    return AuthModel(
      id: id ?? this.id,
      userProfileId: userProfileId ?? this.userProfileId,
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      accessToken: accessToken ?? this.accessToken,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt
    );
  }
}