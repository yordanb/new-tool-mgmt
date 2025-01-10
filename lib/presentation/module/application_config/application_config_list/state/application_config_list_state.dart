// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class ApplicationConfigListState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  ListViewItemState listViewItemState;
  int page;
  int limit;
  AppSessionEntity? session;
  List<ApplicationConfigEntity> items;
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

  ApplicationConfigListState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.listViewItemState = ListViewItemState.ready,
    this.page = 1,
    this.limit = 10,
    this.items = const[],
    this.session,
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

  factory ApplicationConfigListState.fromJson(Map<String, dynamic> json) {
    return ApplicationConfigListState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      listViewItemState: json['list_view_item_state'],
      page: json['page'],
      limit: json['limit'],
      session: AppSessionEntity.fromJson(json['session']),
      items: List<ApplicationConfigEntity>.from(
            ( (json['items'] ) as List).map(
              (model) => ApplicationConfigEntity.fromJson(model),
            ),
          ),
      id: json['id'],
      appMode: json['app_mode'],
      companyName: json['company_name'],
      address: json['address'],
      phoneNumber: json['phone_number'],
      createdAt: json['created_at'] == null ? null : DateTime.tryParse(json['created_at'].toString()),
      updatedAt: json['updated_at'] == null ? null : DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
      createdAtFrom: json['created_at_from'] == null ? null : DateTime.tryParse(json['created_at_from'].toString()),
      createdAtTo: json['created_at_to'] == null ? null : DateTime.tryParse(json['created_at_to'].toString()),
      updatedAtFrom: json['updated_at_from'] == null ? null : DateTime.tryParse(json['updated_at_from'].toString()),
      updatedAtTo: json['updated_at_to'] == null ? null : DateTime.tryParse(json['updated_at_to'].toString())
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
  ApplicationConfigListState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     ListViewItemState? listViewItemState,
     int? page,
     int? limit,
     AppSessionEntity? session,
     List<ApplicationConfigEntity>? items,
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
     DateTime? updatedAtTo
  }) {
    return ApplicationConfigListState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      listViewItemState: listViewItemState ?? this.listViewItemState,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      session: session ?? this.session,
      items: items ?? this.items,
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
      updatedAtTo: updatedAtTo ?? this.updatedAtTo
    );
  }
}