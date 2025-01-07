import 'package:hyper_supabase/core.dart';

class LoanTransactionItemListState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  ListViewItemState listViewItemState;
  int page;
  int limit;
  AppSessionEntity? session;
  List<LoanTransactionItemEntity> items;
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

  LoanTransactionItemListState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.listViewItemState = ListViewItemState.ready,
    this.page = 1,
    this.limit = 10,
    this.items = const[],
    this.session,
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
  LoanTransactionItemListState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     ListViewItemState? listViewItemState,
     int? page,
     int? limit,
     AppSessionEntity? session,
     List<LoanTransactionItemEntity>? items,
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
    return LoanTransactionItemListState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      listViewItemState: listViewItemState ?? this.listViewItemState,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      session: session ?? this.session,
      items: items ?? this.items,
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