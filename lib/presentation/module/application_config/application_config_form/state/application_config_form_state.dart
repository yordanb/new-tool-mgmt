// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class ApplicationConfigFormState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  bool isEditMode;
  bool isCreateMode;
  AppSessionEntity? session;
  ApplicationConfigEntity? current;
  int? id;
  String? appMode;
  String? companyName;
  String? address;
  String? phoneNumber;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? idOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  //:@declaration

  ApplicationConfigFormState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.isEditMode = false,
    this.isCreateMode = false,
    this.session,
    this.current,
    this.id,
    this.appMode,
    this.companyName,
    this.address,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });

  factory ApplicationConfigFormState.fromJson(Map<String, dynamic> json) {
    return ApplicationConfigFormState(
        fullViewState: json['full_view_state'],
        viewState: json['view_state'],
        isEditMode: json['is_edit_mode'],
        isCreateMode: json['is_create_mode'],
        session: AppSessionEntity.fromJson(json['session'] ?? {}),
        current: ApplicationConfigEntity.fromJson(json['current'] ?? {}),
        id: json['id'],
        appMode: json['app_mode'],
        companyName: json['company_name'],
        address: json['address'],
        phoneNumber: json['phone_number'],
        createdAt: DateTime.tryParse(json['created_at'].toString()),
        updatedAt: DateTime.tryParse(json['updated_at'].toString()),
        idOperatorAndValue: json['id_operator_and_value'],
        createdAtFrom: DateTime.tryParse(json['created_at_from'].toString()),
        createdAtTo: DateTime.tryParse(json['created_at_to'].toString()),
        updatedAtFrom: DateTime.tryParse(json['updated_at_from'].toString()),
        updatedAtTo: DateTime.tryParse(json['updated_at_to'].toString()));
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
      'app_mode': appMode,
      'company_name': companyName,
      'address': address,
      'phone_number': phoneNumber,
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
  ApplicationConfigFormState copyWith(
      {FullViewState? fullViewState,
      ViewState? viewState,
      bool? isEditMode,
      bool? isCreateMode,
      AppSessionEntity? session,
      ApplicationConfigEntity? current,
      int? id,
      String? appMode,
      String? companyName,
      String? address,
      String? phoneNumber,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? idOperatorAndValue,
      DateTime? createdAtFrom,
      DateTime? createdAtTo,
      DateTime? updatedAtFrom,
      DateTime? updatedAtTo}) {
    return ApplicationConfigFormState(
        fullViewState: fullViewState ?? this.fullViewState,
        viewState: viewState ?? this.viewState,
        isEditMode: isEditMode ?? this.isEditMode,
        isCreateMode: isCreateMode ?? this.isCreateMode,
        session: session ?? this.session,
        current: current ?? this.current,
        id: id ?? this.id,
        appMode: appMode ?? this.appMode,
        companyName: companyName ?? this.companyName,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        idOperatorAndValue: idOperatorAndValue ?? this.idOperatorAndValue,
        createdAtFrom: createdAtFrom ?? this.createdAtFrom,
        createdAtTo: createdAtTo ?? this.createdAtTo,
        updatedAtFrom: updatedAtFrom ?? this.updatedAtFrom,
        updatedAtTo: updatedAtTo ?? this.updatedAtTo);
  }
}
