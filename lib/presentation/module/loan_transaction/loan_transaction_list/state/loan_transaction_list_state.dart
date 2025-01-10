// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LoanTransactionListState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  ListViewItemState listViewItemState;
  int page;
  int limit;
  AppSessionEntity? session;
  List<LoanTransactionEntity> items;
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
  //:@declaration

  LoanTransactionListState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.listViewItemState = ListViewItemState.ready,
    this.page = 1,
    this.limit = 10,
    this.items = const [],
    this.session,
    this.id,
    this.status = "Ongoing",
    this.userProfileId,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.userProfileIdOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });

  factory LoanTransactionListState.fromJson(Map<String, dynamic> json) {
    return LoanTransactionListState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      listViewItemState: json['list_view_item_state'],
      page: json['page'],
      limit: json['limit'],
      session: json['session'],
      items: List<LoanTransactionEntity>.from(
            ( (json['items'] ) as List).map(
              (model) => LoanTransactionEntity.fromJson(model),
            ),
          ),
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
      updatedAtTo: DateTime.tryParse(json['updated_at_to'].toString())
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'full_view_state': fullViewState,
      'view_state': viewState,
      'list_view_item_state': listViewItemState,
      'page': page,
      'limit': limit,
      'session': session,
      'items': items,
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
      'updated_at_to': updatedAtTo?.toIso8601String()
    };
  }

  //@copyWith
  LoanTransactionListState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     ListViewItemState? listViewItemState,
     int? page,
     int? limit,
     AppSessionEntity? session,
     List<LoanTransactionEntity>? items,
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
     DateTime? updatedAtTo
  }) {
    return LoanTransactionListState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      listViewItemState: listViewItemState ?? this.listViewItemState,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      session: session ?? this.session,
      items: items ?? this.items,
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
      updatedAtTo: updatedAtTo ?? this.updatedAtTo
    );
  }
}