import 'package:hyper_supabase/core.dart';

class LoanTransactionItemFormState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  bool isEditMode;
  bool isCreateMode;
  AppSessionEntity? session;
  LoanTransactionItemEntity? current;
  int? id;
  int? loanTransactionId;
  int? toolId;
  double? qty;
  String? memo;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? idOperatorAndValue;
  String? loanTransactionIdOperatorAndValue;
  String? toolIdOperatorAndValue;
  String? qtyOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  //:@declaration

  LoanTransactionItemFormState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.isEditMode = false,
    this.isCreateMode = false,
    this.session,
    this.current,
    this.id,
    this.loanTransactionId,
    this.toolId,
    this.qty,
    this.memo,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.loanTransactionIdOperatorAndValue,
    this.toolIdOperatorAndValue,
    this.qtyOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });
  
  //@copyWith
  LoanTransactionItemFormState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     bool? isEditMode,
     bool? isCreateMode,
     AppSessionEntity? session,
     LoanTransactionItemEntity? current,
     int? id,
     int? loanTransactionId,
     int? toolId,
     double? qty,
     String? memo,
     String? status,
     DateTime? createdAt,
     DateTime? updatedAt,
     String? idOperatorAndValue,
     String? loanTransactionIdOperatorAndValue,
     String? toolIdOperatorAndValue,
     String? qtyOperatorAndValue,
     DateTime? createdAtFrom,
     DateTime? createdAtTo,
     DateTime? updatedAtFrom,
     DateTime? updatedAtTo
  }) {
    return LoanTransactionItemFormState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      isEditMode: isEditMode ?? this.isEditMode,
      isCreateMode: isCreateMode ?? this.isCreateMode,
      session: session ?? this.session,
      current: current ?? this.current,
      id: id ?? this.id,
      loanTransactionId: loanTransactionId ?? this.loanTransactionId,
      toolId: toolId ?? this.toolId,
      qty: qty ?? this.qty,
      memo: memo ?? this.memo,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      idOperatorAndValue: idOperatorAndValue ?? this.idOperatorAndValue,
      loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue ?? this.loanTransactionIdOperatorAndValue,
      toolIdOperatorAndValue: toolIdOperatorAndValue ?? this.toolIdOperatorAndValue,
      qtyOperatorAndValue: qtyOperatorAndValue ?? this.qtyOperatorAndValue,
      createdAtFrom: createdAtFrom ?? this.createdAtFrom,
      createdAtTo: createdAtTo ?? this.createdAtTo,
      updatedAtFrom: updatedAtFrom ?? this.updatedAtFrom,
      updatedAtTo: updatedAtTo ?? this.updatedAtTo
    );
  }
}