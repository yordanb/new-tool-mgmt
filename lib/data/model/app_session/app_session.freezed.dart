// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSession _$AppSessionFromJson(Map<String, dynamic> json) {
  return _AppSession.fromJson(json);
}

/// @nodoc
mixin _$AppSession {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  set role(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
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

  /// Serializes this AppSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSessionCopyWith<AppSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSessionCopyWith<$Res> {
  factory $AppSessionCopyWith(
          AppSession value, $Res Function(AppSession) then) =
      _$AppSessionCopyWithImpl<$Res, AppSession>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$AppSessionCopyWithImpl<$Res, $Val extends AppSession>
    implements $AppSessionCopyWith<$Res> {
  _$AppSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? role = freezed,
    Object? email = freezed,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of AppSession
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
abstract class _$$AppSessionImplCopyWith<$Res>
    implements $AppSessionCopyWith<$Res> {
  factory _$$AppSessionImplCopyWith(
          _$AppSessionImpl value, $Res Function(_$AppSessionImpl) then) =
      __$$AppSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$AppSessionImplCopyWithImpl<$Res>
    extends _$AppSessionCopyWithImpl<$Res, _$AppSessionImpl>
    implements _$$AppSessionImplCopyWith<$Res> {
  __$$AppSessionImplCopyWithImpl(
      _$AppSessionImpl _value, $Res Function(_$AppSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_$AppSessionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$AppSessionImpl implements _AppSession {
  _$AppSessionImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'user_profile_id') this.userProfileId = null,
      @JsonKey(name: 'role') this.role = null,
      @JsonKey(name: 'email') this.email = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null,
      @JsonKey(name: 'user_profile') this.userProfile});

  factory _$AppSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSessionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'user_profile_id')
  int? userProfileId;
  @override
  @JsonKey(name: 'role')
  String? role;
  @override
  @JsonKey(name: 'email')
  String? email;
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
    return 'AppSession(id: $id, userProfileId: $userProfileId, role: $role, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, userProfile: $userProfile)';
  }

  /// Create a copy of AppSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSessionImplCopyWith<_$AppSessionImpl> get copyWith =>
      __$$AppSessionImplCopyWithImpl<_$AppSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSessionImplToJson(
      this,
    );
  }
}

abstract class _AppSession implements AppSession {
  factory _AppSession(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'user_profile_id') int? userProfileId,
          @JsonKey(name: 'role') String? role,
          @JsonKey(name: 'email') String? email,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt,
          @JsonKey(name: 'user_profile') UserProfile? userProfile}) =
      _$AppSessionImpl;

  factory _AppSession.fromJson(Map<String, dynamic> json) =
      _$AppSessionImpl.fromJson;

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
  @JsonKey(name: 'role')
  String? get role;
  @JsonKey(name: 'role')
  set role(String? value);
  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
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

  /// Create a copy of AppSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSessionImplCopyWith<_$AppSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
