// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class EditProfileState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  bool? isEditMode = false;
  bool? isCreateMode = false;
  AppSessionEntity? session;
  UserProfileEntity? current;
  int? id;
  String? imageUrl;
  String? userProfileName;
  String? gender;
  String? email;
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

  EditProfileState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.isEditMode,
    this.isCreateMode,
    this.session,
    this.current,
    this.id,
    this.imageUrl,
    this.userProfileName,
    this.gender,
    this.email,
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

  factory EditProfileState.fromJson(Map<String, dynamic> json) {
    return EditProfileState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      isEditMode: json['is_edit_mode'],
      isCreateMode: json['is_create_mode'],
      session: AppSessionEntity.fromJson(json['session']  ?? {}),
      current: UserProfileEntity.fromJson(json['current']  ?? {}),
      id: json['id'],
      imageUrl: json['image_url'],
      userProfileName: json['user_profile_name'],
      gender: json['gender'],
      email: json['email'],
      password: json['password'],
      role: json['role'],
      isActive: json['is_active'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
      createdAtFrom: DateTime.tryParse(json['created_at_from'].toString()),
      createdAtTo: DateTime.tryParse(json['created_at_to'].toString()),
      updatedAtFrom: DateTime.tryParse(json['updated_at_from'].toString()),
      updatedAtTo: DateTime.tryParse(json['updated_at_to'].toString())
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
  EditProfileState copyWith({
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
    return EditProfileState(
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