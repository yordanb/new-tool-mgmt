// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UserProfileListState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  ListViewItemState listViewItemState;
  int page;
  int limit;
  AppSessionEntity? session;
  List<UserProfileEntity> items;
  int? id;
  String? imageUrl;
  String? userProfileName;
  String? gender;
  String? email;
  String? mobileNumber;
  String? fcmToken;
  String? password;
  String? role;
  bool? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? idOperatorAndValue;
  DateTime? createdAtFrom;
  DateTime? createdAtTo;
  DateTime? updatedAtFrom;
  DateTime? updatedAtTo;
  //:@declaration

  UserProfileListState({
    //@constructor
    this.fullViewState = FullViewState.idle,
    this.viewState = ViewState.idle,
    this.listViewItemState = ListViewItemState.ready,
    this.page = 1,
    this.limit = 10,
    this.items = const[],
    this.session,
    this.id,
    this.imageUrl,
    this.userProfileName,
    this.gender,
    this.email,
    this.mobileNumber,
    this.fcmToken,
    this.password,
    this.role,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.idOperatorAndValue,
    this.createdAtFrom,
    this.createdAtTo,
    this.updatedAtFrom,
    this.updatedAtTo,
    //:@constructor
  });

  factory UserProfileListState.fromJson(Map<String, dynamic> json) {
    return UserProfileListState(
      fullViewState: json['full_view_state'],
      viewState: json['view_state'],
      listViewItemState: json['list_view_item_state'],
      page: json['page'],
      limit: json['limit'],
      session: json['session'],
      items: List<UserProfileEntity>.from(
            ( (json['items'] ) as List).map(
              (model) => UserProfileEntity.fromJson(model),
            ),
          ),
      id: json['id'],
      imageUrl: json['image_url'],
      userProfileName: json['user_profile_name'],
      gender: json['gender'],
      email: json['email'],
      mobileNumber: json['mobile_number'],
      fcmToken: json['fcm_token'],
      password: json['password'],
      role: json['role'],
      isActive: json['is_active'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      idOperatorAndValue: json['id_operator_and_value'],
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
      'image_url': imageUrl,
      'user_profile_name': userProfileName,
      'gender': gender,
      'email': email,
      'mobile_number': mobileNumber,
      'fcm_token': fcmToken,
      'password': password,
      'role': role,
      'is_active': isActive,
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
  UserProfileListState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     ListViewItemState? listViewItemState,
     int? page,
     int? limit,
     AppSessionEntity? session,
     List<UserProfileEntity>? items,
     int? id,
     String? imageUrl,
     String? userProfileName,
     String? gender,
     String? email,
     String? mobileNumber,
     String? fcmToken,
     String? password,
     String? role,
     bool? isActive,
     DateTime? createdAt,
     DateTime? updatedAt,
     String? idOperatorAndValue,
     DateTime? createdAtFrom,
     DateTime? createdAtTo,
     DateTime? updatedAtFrom,
     DateTime? updatedAtTo
  }) {
    return UserProfileListState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      listViewItemState: listViewItemState ?? this.listViewItemState,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      session: session ?? this.session,
      items: items ?? this.items,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      userProfileName: userProfileName ?? this.userProfileName,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      fcmToken: fcmToken ?? this.fcmToken,
      password: password ?? this.password,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
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