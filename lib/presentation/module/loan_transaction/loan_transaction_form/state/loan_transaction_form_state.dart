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