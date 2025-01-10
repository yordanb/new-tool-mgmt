// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LoanTransactionFormState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  bool isEditMode;
  bool isCreateMode;
  AppSessionEntity? session;
  LoanTransactionEntity? current;
  int? id;
  String? status;
  int? userProfileId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? idOperatorAndValue;
  String? userProfileIdOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  List<ToolEntity> tools;
  List<LoanTransactionItemEntity> loanTransactionItems;
  String tabFilter;
  String search;
  //:@declaration

  LoanTransactionFormState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.isEditMode = false,
    this.isCreateMode = false,
    this.session,
    this.current,
    this.id,
    this.status,
    this.userProfileId,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.userProfileIdOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    this.tools = const [],
    this.loanTransactionItems = const [],
    this.tabFilter = "Search",
    this.search = "",
    //:@constructor
  });

  factory LoanTransactionFormState.fromJson(Map<String, dynamic> json) {
    return LoanTransactionFormState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      isEditMode: json['is_edit_mode'],
      isCreateMode: json['is_create_mode'],
      session: json['session'],
      current: json['current'],
      id: json['id'],
      status: json['status'],
      userProfileId: json['user_profile_id'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
      userProfileIdOperatorAndValue: json['user_profile_id_operator_and_value'],
      createdAtFrom: DateTime.tryParse(json['created_at_from'].toString()),
      createdAtTo: DateTime.tryParse(json['created_at_to'].toString()),
      updatedAtFrom: DateTime.tryParse(json['updated_at_from'].toString()),
      updatedAtTo: DateTime.tryParse(json['updated_at_to'].toString()),
      tools: json['tools'],
      loanTransactionItems: json['loan_transaction_items'],
      tabFilter: json['tab_filter'],
      search: json['search']
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
      'status': status,
      'user_profile_id': userProfileId,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'id_operator_and_value': idOperatorAndValue,
      'user_profile_id_operator_and_value': userProfileIdOperatorAndValue,
      'created_at_from': createdAtFrom?.toIso8601String(),
      'created_at_to': createdAtTo?.toIso8601String(),
      'updated_at_from': updatedAtFrom?.toIso8601String(),
      'updated_at_to': updatedAtTo?.toIso8601String(),
      'tools': tools,
      'loan_transaction_items': loanTransactionItems,
      'tab_filter': tabFilter,
      'search': search
    };
  }

  //@copyWith
  LoanTransactionFormState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     bool? isEditMode,
     bool? isCreateMode,
     AppSessionEntity? session,
     LoanTransactionEntity? current,
     int? id,
     String? status,
     int? userProfileId,
     DateTime? createdAt,
     DateTime? updatedAt,
     String? idOperatorAndValue,
     String? userProfileIdOperatorAndValue,
     DateTime? createdAtFrom,
     DateTime? createdAtTo,
     DateTime? updatedAtFrom,
     DateTime? updatedAtTo,
     List<ToolEntity>? tools,
     List<LoanTransactionItemEntity>? loanTransactionItems,
     String? tabFilter,
     String? search
  }) {
    return LoanTransactionFormState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      isEditMode: isEditMode ?? this.isEditMode,
      isCreateMode: isCreateMode ?? this.isCreateMode,
      session: session ?? this.session,
      current: current ?? this.current,
      id: id ?? this.id,
      status: status ?? this.status,
      userProfileId: userProfileId ?? this.userProfileId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      idOperatorAndValue: idOperatorAndValue ?? this.idOperatorAndValue,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue ?? this.userProfileIdOperatorAndValue,
      createdAtFrom: createdAtFrom ?? this.createdAtFrom,
      createdAtTo: createdAtTo ?? this.createdAtTo,
      updatedAtFrom: updatedAtFrom ?? this.updatedAtFrom,
      updatedAtTo: updatedAtTo ?? this.updatedAtTo,
      tools: tools ?? this.tools,
      loanTransactionItems: loanTransactionItems ?? this.loanTransactionItems,
      tabFilter: tabFilter ?? this.tabFilter,
      search: search ?? this.search
    );
  }
}