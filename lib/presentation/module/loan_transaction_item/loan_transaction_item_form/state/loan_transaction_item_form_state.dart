// ignore: unused_import
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

  factory LoanTransactionItemFormState.fromJson(Map<String, dynamic> json) {
    return LoanTransactionItemFormState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      isEditMode: json['is_edit_mode'],
      isCreateMode: json['is_create_mode'],
      session: json['session'],
      current: json['current'],
      id: json['id'],
      loanTransactionId: json['loan_transaction_id'],
      toolId: json['tool_id'],
      qty: json['qty'],
      memo: json['memo'],
      status: json['status'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
      loanTransactionIdOperatorAndValue: json['loan_transaction_id_operator_and_value'],
      toolIdOperatorAndValue: json['tool_id_operator_and_value'],
      qtyOperatorAndValue: json['qty_operator_and_value'],
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
      'loan_transaction_id': loanTransactionId,
      'tool_id': toolId,
      'qty': qty,
      'memo': memo,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'id_operator_and_value': idOperatorAndValue,
      'loan_transaction_id_operator_and_value': loanTransactionIdOperatorAndValue,
      'tool_id_operator_and_value': toolIdOperatorAndValue,
      'qty_operator_and_value': qtyOperatorAndValue,
      'created_at_from': createdAtFrom?.toIso8601String(),
      'created_at_to': createdAtTo?.toIso8601String(),
      'updated_at_from': updatedAtFrom?.toIso8601String(),
      'updated_at_to': updatedAtTo?.toIso8601String()
    };
  }

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