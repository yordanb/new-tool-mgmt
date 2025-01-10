// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AuthEntity {
  //@declaration
  String? id;
  int? userProfileId;
  String? name;
  String? email;
  String? imageUrl;
  String? accessToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  UserProfileEntity? userProfile;
  //:@declaration

  AuthEntity({
    //@constructor
    this.id,
    this.userProfileId,
    this.name,
    this.email,
    this.imageUrl,
    this.accessToken,
    this.createdAt,
    this.updatedAt,
    this.userProfile,
    //:@constructor
  });

  factory AuthEntity.fromJson(Map<String, dynamic> json) {
    return AuthEntity(
      id: json['id'],
      userProfileId: json['user_profile_id'],
      name: json['name'],
      email: json['email'],
      imageUrl: json['image_url'],
      accessToken: json['access_token'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      userProfile: UserProfileEntity.fromJson(json['user_profile']  ?? {})
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
      'updated_at': updatedAt?.toIso8601String(),
      'user_profile': userProfile
    };
  }

  //@copyWith
  AuthEntity copyWith({
     String? id,
     int? userProfileId,
     String? name,
     String? email,
     String? imageUrl,
     String? accessToken,
     DateTime? createdAt,
     DateTime? updatedAt,
     UserProfileEntity? userProfile
  }) {
    return AuthEntity(
      id: id ?? this.id,
      userProfileId: userProfileId ?? this.userProfileId,
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      accessToken: accessToken ?? this.accessToken,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userProfile: userProfile ?? this.userProfile
    );
  }
}