// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UserProfileFormState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  bool isEditMode;
  bool isCreateMode;
  AppSessionEntity? session;
  UserProfileEntity? current;
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
  String? idOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  //:@declaration

  UserProfileFormState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.isEditMode = false,
    this.isCreateMode = false,
    this.session,
    this.current,
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
    this.idOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });

  factory UserProfileFormState.fromJson(Map<String, dynamic> json) {
    return UserProfileFormState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      isEditMode: json['is_edit_mode'],
      isCreateMode: json['is_create_mode'],
      session: AppSessionEntity.fromJson(json['session']),
      current: UserProfileEntity.fromJson(json['current']),
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
      createdAt: json['created_at'] == null ? null : DateTime.tryParse(json['created_at'].toString()),
      updatedAt: json['updated_at'] == null ? null : DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
      createdAtFrom: json['created_at_from'] == null ? null : DateTime.tryParse(json['created_at_from'].toString()),
      createdAtTo: json['created_at_to'] == null ? null : DateTime.tryParse(json['created_at_to'].toString()),
      updatedAtFrom: json['updated_at_from'] == null ? null : DateTime.tryParse(json['updated_at_from'].toString()),
      updatedAtTo: json['updated_at_to'] == null ? null : DateTime.tryParse(json['updated_at_to'].toString())
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'full_view_state': fullViewState,
      'view_state': viewState,
      'is_edit_mode': isEditMode,
      'is_create_mode': isCreateMode,
      'session': session,
      'current': current,
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
      'updated_at': updatedAt?.toIso8601String(),
      'id_operator_and_value': idOperatorAndValue,
      'created_at_from': createdAtFrom?.toIso8601String(),
      'created_at_to': createdAtTo?.toIso8601String(),
      'updated_at_from': updatedAtFrom?.toIso8601String(),
      'updated_at_to': updatedAtTo?.toIso8601String()
    };
  }

  //@copyWith
  UserProfileFormState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     bool? isEditMode,
     bool? isCreateMode,
     AppSessionEntity? session,
     UserProfileEntity? current,
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
     DateTime? updatedAt,
     String? idOperatorAndValue,
     DateTime? createdAtFrom,
     DateTime? createdAtTo,
     DateTime? updatedAtFrom,
     DateTime? updatedAtTo
  }) {
    return UserProfileFormState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      isEditMode: isEditMode ?? this.isEditMode,
      isCreateMode: isCreateMode ?? this.isCreateMode,
      session: session ?? this.session,
      current: current ?? this.current,
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
      updatedAt: updatedAt ?? this.updatedAt,
      idOperatorAndValue: idOperatorAndValue ?? this.idOperatorAndValue,
      createdAtFrom: createdAtFrom ?? this.createdAtFrom,
      createdAtTo: createdAtTo ?? this.createdAtTo,
      updatedAtFrom: updatedAtFrom ?? this.updatedAtFrom,
      updatedAtTo: updatedAtTo ?? this.updatedAtTo
    );
  }
}