// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class ToolListState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  ListViewItemState listViewItemState;
  int page;
  int limit;
  AppSessionEntity? session;
  List<ToolEntity> items;
  int? id;
  String? name;
  String? description;
  String? imageUrl;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? idOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  //:@declaration

  ToolListState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.listViewItemState = ListViewItemState.ready,
    this.page = 1,
    this.limit = 10,
    this.items = const [],
    this.session,
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });

  factory ToolListState.fromJson(Map<String, dynamic> json) {
    return ToolListState(
        fullViewState: json['full_view_state'],
        viewState: json['view_state'],
        listViewItemState: json['list_view_item_state'],
        page: json['page'],
        limit: json['limit'],
        session: AppSessionEntity.fromJson(json['session'] ?? {}),
        items: List<ToolEntity>.from(
            (json['items']).map((model) => ToolEntity.fromJson(model))),
        id: json['id'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['image_url'],
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
      'list_view_item_state': listViewItemState,
      'page': page,
      'limit': limit,
      'session': session,
      'items': items,
      'id': id,
      'name': name,
      'description': description,
      'image_url': imageUrl,
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
  ToolListState copyWith(
      {FullViewState? fullViewState,
      ViewState? viewState,
      ListViewItemState? listViewItemState,
      int? page,
      int? limit,
      AppSessionEntity? session,
      List<ToolEntity>? items,
      int? id,
      String? name,
      String? description,
      String? imageUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? idOperatorAndValue,
      DateTime? createdAtFrom,
      DateTime? createdAtTo,
      DateTime? updatedAtFrom,
      DateTime? updatedAtTo}) {
    return ToolListState(
        fullViewState: fullViewState ?? this.fullViewState,
        viewState: viewState ?? this.viewState,
        listViewItemState: listViewItemState ?? this.listViewItemState,
        page: page ?? this.page,
        limit: limit ?? this.limit,
        session: session ?? this.session,
        items: items ?? this.items,
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        idOperatorAndValue: idOperatorAndValue ?? this.idOperatorAndValue,
        createdAtFrom: createdAtFrom ?? this.createdAtFrom,
        createdAtTo: createdAtTo ?? this.createdAtTo,
        updatedAtFrom: updatedAtFrom ?? this.updatedAtFrom,
        updatedAtTo: updatedAtTo ?? this.updatedAtTo);
  }
}
