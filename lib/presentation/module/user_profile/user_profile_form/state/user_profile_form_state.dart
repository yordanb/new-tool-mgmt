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