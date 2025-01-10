// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LoanTransactionItem {
  //@declaration
  int? id;
  int? loanTransactionId;
  int? toolId;
  int? qty;
  String? memo;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  LoanTransaction? loanTransaction;
  Tool? tool;
  //:@declaration

  LoanTransactionItem({
    //@constructor
    this.id,
    this.loanTransactionId,
    this.toolId,
    this.qty,
    this.memo,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.loanTransaction,
    this.tool
    //:@constructor
  });

  factory LoanTransactionItem.fromJson(Map<String, dynamic> json) {
    return LoanTransactionItem(
      id: json['id'],
      loanTransactionId: json['loan_transaction_id'],
      toolId: json['tool_id'],
      qty: json['qty'],
      memo: json['memo'],
      status: json['status'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      loanTransaction: LoanTransaction.fromJson(json['loan_transaction']  ?? {}),
      tool: Tool.fromJson(json['tool']  ?? {})
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'loan_transaction_id': loanTransactionId,
      'tool_id': toolId,
      'qty': qty,
      'memo': memo,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'loan_transaction': loanTransaction,
      'tool': tool
    };
  }

  //@copyWith
  LoanTransactionItem copyWith({
     int? id,
     int? loanTransactionId,
     int? toolId,
     int? qty,
     String? memo,
     String? status,
     DateTime? createdAt,
     DateTime? updatedAt,
     LoanTransaction? loanTransaction,
     Tool? tool
  }) {
    return LoanTransactionItem(
      id: id ?? this.id,
      loanTransactionId: loanTransactionId ?? this.loanTransactionId,
      toolId: toolId ?? this.toolId,
      qty: qty ?? this.qty,
      memo: memo ?? this.memo,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      loanTransaction: loanTransaction ?? this.loanTransaction,
      tool: tool ?? this.tool
    );
  }
}