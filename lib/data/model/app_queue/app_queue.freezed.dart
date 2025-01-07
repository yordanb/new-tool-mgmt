// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppQueue _$AppQueueFromJson(Map<String, dynamic> json) {
  return _AppQueue.fromJson(json);
}

/// @nodoc
mixin _$AppQueue {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'action')
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'action')
  set action(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_data')
  String? get actionData => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_data')
  set actionData(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_mode')
  String? get appMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_mode')
  set appMode(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile')
  UserProfile? get userProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile')
  set userProfile(UserProfile? value) => throw _privateConstructorUsedError;

  /// Serializes this AppQueue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppQueueCopyWith<AppQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppQueueCopyWith<$Res> {
  factory $AppQueueCopyWith(AppQueue value, $Res Function(AppQueue) then) =
      _$AppQueueCopyWithImpl<$Res, AppQueue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'action_data') String? actionData,
      @JsonKey(name: 'app_mode') String? appMode,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$AppQueueCopyWithImpl<$Res, $Val extends AppQueue>
    implements $AppQueueCopyWith<$Res> {
  _$AppQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? action = freezed,
    Object? actionData = freezed,
    Object? appMode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      actionData: freezed == actionData
          ? _value.actionData
          : actionData // ignore: cast_nullable_to_non_nullable
              as String?,
      appMode: freezed == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ) as $Val);
  }

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppQueueImplCopyWith<$Res>
    implements $AppQueueCopyWith<$Res> {
  factory _$$AppQueueImplCopyWith(
          _$AppQueueImpl value, $Res Function(_$AppQueueImpl) then) =
      __$$AppQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'action_data') String? actionData,
      @JsonKey(name: 'app_mode') String? appMode,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$AppQueueImplCopyWithImpl<$Res>
    extends _$AppQueueCopyWithImpl<$Res, _$AppQueueImpl>
    implements _$$AppQueueImplCopyWith<$Res> {
  __$$AppQueueImplCopyWithImpl(
      _$AppQueueImpl _value, $Res Function(_$AppQueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? action = freezed,
    Object? actionData = freezed,
    Object? appMode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_$AppQueueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      actionData: freezed == actionData
          ? _value.actionData
          : actionData // ignore: cast_nullable_to_non_nullable
              as String?,
      appMode: freezed == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppQueueImpl implements _AppQueue {
  _$AppQueueImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'user_profile_id') this.userProfileId = null,
      @JsonKey(name: 'action') this.action = null,
      @JsonKey(name: 'action_data') this.actionData = null,
      @JsonKey(name: 'app_mode') this.appMode = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null,
      @JsonKey(name: 'user_profile') this.userProfile});

  factory _$AppQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppQueueImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'user_profile_id')
  int? userProfileId;
  @override
  @JsonKey(name: 'action')
  String? action;
  @override
  @JsonKey(name: 'action_data')
  String? actionData;
  @override
  @JsonKey(name: 'app_mode')
  String? appMode;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'user_profile')
  UserProfile? userProfile;

  @override
  String toString() {
    return 'AppQueue(id: $id, userProfileId: $userProfileId, action: $action, actionData: $actionData, appMode: $appMode, createdAt: $createdAt, updatedAt: $updatedAt, userProfile: $userProfile)';
  }

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppQueueImplCopyWith<_$AppQueueImpl> get copyWith =>
      __$$AppQueueImplCopyWithImpl<_$AppQueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppQueueImplToJson(
      this,
    );
  }
}

abstract class _AppQueue implements AppQueue {
  factory _AppQueue(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'user_profile_id') int? userProfileId,
          @JsonKey(name: 'action') String? action,
          @JsonKey(name: 'action_data') String? actionData,
          @JsonKey(name: 'app_mode') String? appMode,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt,
          @JsonKey(name: 'user_profile') UserProfile? userProfile}) =
      _$AppQueueImpl;

  factory _AppQueue.fromJson(Map<String, dynamic> json) =
      _$AppQueueImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value);
  @override
  @JsonKey(name: 'action')
  String? get action;
  @JsonKey(name: 'action')
  set action(String? value);
  @override
  @JsonKey(name: 'action_data')
  String? get actionData;
  @JsonKey(name: 'action_data')
  set actionData(String? value);
  @override
  @JsonKey(name: 'app_mode')
  String? get appMode;
  @JsonKey(name: 'app_mode')
  set appMode(String? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(name: 'user_profile')
  UserProfile? get userProfile;
  @JsonKey(name: 'user_profile')
  set userProfile(UserProfile? value);

  /// Create a copy of AppQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppQueueImplCopyWith<_$AppQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
