// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AppSession {
  //@declaration
  int? id;
  int? userProfileId;
  String? role;
  String? email;
  DateTime? createdAt;
  DateTime? updatedAt;
  UserProfile? userProfile;
  //:@declaration

  AppSession({
    //@constructor
    this.id,
    this.userProfileId,
    this.role,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.userProfile
    //:@constructor
  });

  factory AppSession.fromJson(Map<String, dynamic> json) {
    return AppSession(
      id: json['id'],
      userProfileId: json['user_profile_id'],
      role: json['role'],
      email: json['email'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      userProfile: UserProfile.fromJson(json['user_profile']  ?? {})
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_profile_id': userProfileId,
      'role': role,
      'email': email,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'user_profile': userProfile
    };
  }

  //@copyWith
  AppSession copyWith({
     int? id,
     int? userProfileId,
     String? role,
     String? email,
     DateTime? createdAt,
     DateTime? updatedAt,
     UserProfile? userProfile
  }) {
    return AppSession(
      id: id ?? this.id,
      userProfileId: userProfileId ?? this.userProfileId,
      role: role ?? this.role,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userProfile: userProfile ?? this.userProfile
    );
  }
}