// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileMembership _$UserProfileMembershipFromJson(
    Map<String, dynamic> json) {
  return _UserProfileMembership.fromJson(json);
}

/// @nodoc
mixin _$UserProfileMembership {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value) => throw _privateConstructorUsedError;
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

  /// Serializes this UserProfileMembership to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileMembershipCopyWith<UserProfileMembership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileMembershipCopyWith<$Res> {
  factory $UserProfileMembershipCopyWith(UserProfileMembership value,
          $Res Function(UserProfileMembership) then) =
      _$UserProfileMembershipCopyWithImpl<$Res, UserProfileMembership>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$UserProfileMembershipCopyWithImpl<$Res,
        $Val extends UserProfileMembership>
    implements $UserProfileMembershipCopyWith<$Res> {
  _$UserProfileMembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
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

  /// Create a copy of UserProfileMembership
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
abstract class _$$UserProfileMembershipImplCopyWith<$Res>
    implements $UserProfileMembershipCopyWith<$Res> {
  factory _$$UserProfileMembershipImplCopyWith(
          _$UserProfileMembershipImpl value,
          $Res Function(_$UserProfileMembershipImpl) then) =
      __$$UserProfileMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user_profile') UserProfile? userProfile});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$UserProfileMembershipImplCopyWithImpl<$Res>
    extends _$UserProfileMembershipCopyWithImpl<$Res,
        _$UserProfileMembershipImpl>
    implements _$$UserProfileMembershipImplCopyWith<$Res> {
  __$$UserProfileMembershipImplCopyWithImpl(_$UserProfileMembershipImpl _value,
      $Res Function(_$UserProfileMembershipImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_$UserProfileMembershipImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$UserProfileMembershipImpl implements _UserProfileMembership {
  _$UserProfileMembershipImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'user_profile_id') this.userProfileId = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null,
      @JsonKey(name: 'user_profile') this.userProfile});

  factory _$UserProfileMembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileMembershipImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'user_profile_id')
  int? userProfileId;
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
    return 'UserProfileMembership(id: $id, userProfileId: $userProfileId, createdAt: $createdAt, updatedAt: $updatedAt, userProfile: $userProfile)';
  }

  /// Create a copy of UserProfileMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileMembershipImplCopyWith<_$UserProfileMembershipImpl>
      get copyWith => __$$UserProfileMembershipImplCopyWithImpl<
          _$UserProfileMembershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileMembershipImplToJson(
      this,
    );
  }
}

abstract class _UserProfileMembership implements UserProfileMembership {
  factory _UserProfileMembership(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'user_profile_id') int? userProfileId,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt,
          @JsonKey(name: 'user_profile') UserProfile? userProfile}) =
      _$UserProfileMembershipImpl;

  factory _UserProfileMembership.fromJson(Map<String, dynamic> json) =
      _$UserProfileMembershipImpl.fromJson;

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

  /// Create a copy of UserProfileMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileMembershipImplCopyWith<_$UserProfileMembershipImpl>
      get copyWith => throw _privateConstructorUsedError;
}
