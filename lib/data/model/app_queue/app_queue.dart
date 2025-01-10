// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class AppQueue {
  //@declaration
  int? id;
  int? userProfileId;
  String? action;
  String? actionData;
  String? appMode;
  DateTime? createdAt;
  DateTime? updatedAt;
  UserProfile? userProfile;
  //:@declaration

  AppQueue(
      {
      //@constructor
      this.id,
      this.userProfileId,
      this.action,
      this.actionData,
      this.appMode,
      this.createdAt,
      this.updatedAt,
      this.userProfile
      //:@constructor
      });

  factory AppQueue.fromJson(Map<String, dynamic> json) {
    return AppQueue(
        id: json['id'],
        userProfileId: json['user_profile_id'],
        action: json['action'],
        actionData: json['action_data'],
        appMode: json['app_mode'],
        createdAt: json['created_at'] == null
            ? null
            : DateTime.tryParse(json['created_at'].toString()),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.tryParse(json['updated_at'].toString()),
        userProfile: json['user_profile'] == null
            ? null
            : UserProfile.fromJson(json['user_profile']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_profile_id': userProfileId,
      'action': action,
      'action_data': actionData,
      'app_mode': appMode,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'user_profile': userProfile
    };
  }

  //@copyWith
  AppQueue copyWith(
      {int? id,
      int? userProfileId,
      String? action,
      String? actionData,
      String? appMode,
      DateTime? createdAt,
      DateTime? updatedAt,
      UserProfile? userProfile}) {
    return AppQueue(
        id: id ?? this.id,
        userProfileId: userProfileId ?? this.userProfileId,
        action: action ?? this.action,
        actionData: actionData ?? this.actionData,
        appMode: appMode ?? this.appMode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userProfile: userProfile ?? this.userProfile);
  }
}
