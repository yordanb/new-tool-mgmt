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