// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LoanTransactionEntity {
  //@declaration
  int? id;
  String? status;
  int? userProfileId;
  DateTime? createdAt;
  DateTime? updatedAt;
  UserProfileEntity? userProfile;
  //:@declaration

  LoanTransactionEntity({
    //@constructor
    this.id,
    this.status,
    this.userProfileId,
    this.createdAt,
    this.updatedAt,
    this.userProfile
    //:@constructor
  });

  factory LoanTransactionEntity.fromJson(Map<String, dynamic> json) {
    return LoanTransactionEntity(
      id: json['id'],
      status: json['status'],
      userProfileId: json['user_profile_id'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      userProfile: json['user_profile']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'user_profile_id': userProfileId,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'user_profile': userProfile
    };
  }

  //@copyWith
  LoanTransactionEntity copyWith({
     int? id,
     String? status,
     int? userProfileId,
     DateTime? createdAt,
     DateTime? updatedAt,
     UserProfileEntity? userProfile
  }) {
    return LoanTransactionEntity(
      id: id ?? this.id,
      status: status ?? this.status,
      userProfileId: userProfileId ?? this.userProfileId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userProfile: userProfile ?? this.userProfile
    );
  }
}