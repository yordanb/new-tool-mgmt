// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UserProfile {
  //@declaration
  int? id;
  String? imageUrl;
  String? userProfileName;
  String? gender;
  String? email;
  String? mobileNumber;
  String? fcmToken;
  String? password;
  String? role;
  bool? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  //:@declaration

  UserProfile({
    //@constructor
    this.id,
    this.imageUrl,
    this.userProfileName,
    this.gender,
    this.email,
    this.mobileNumber,
    this.fcmToken,
    this.password,
    this.role,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    //:@constructor
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      imageUrl: json['image_url'],
      userProfileName: json['user_profile_name'],
      gender: json['gender'],
      email: json['email'],
      mobileNumber: json['mobile_number'],
      fcmToken: json['fcm_token'],
      password: json['password'],
      role: json['role'],
      isActive: json['is_active'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString())
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_url': imageUrl,
      'user_profile_name': userProfileName,
      'gender': gender,
      'email': email,
      'mobile_number': mobileNumber,
      'fcm_token': fcmToken,
      'password': password,
      'role': role,
      'is_active': isActive,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String()
    };
  }

  //@copyWith
  UserProfile copyWith({
     int? id,
     String? imageUrl,
     String? userProfileName,
     String? gender,
     String? email,
     String? mobileNumber,
     String? fcmToken,
     String? password,
     String? role,
     bool? isActive,
     DateTime? createdAt,
     DateTime? updatedAt
  }) {
    return UserProfile(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      userProfileName: userProfileName ?? this.userProfileName,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      fcmToken: fcmToken ?? this.fcmToken,
      password: password ?? this.password,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt
    );
  }
}