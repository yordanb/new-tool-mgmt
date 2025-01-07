// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) {
  return _AuthEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthEntity {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  set accessToken(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this AuthEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEntityCopyWith<AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEntityCopyWith<$Res> {
  factory $AuthEntityCopyWith(
          AuthEntity value, $Res Function(AuthEntity) then) =
      _$AuthEntityCopyWithImpl<$Res, AuthEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AuthEntityCopyWithImpl<$Res, $Val extends AuthEntity>
    implements $AuthEntityCopyWith<$Res> {
  _$AuthEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? accessToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEntityImplCopyWith<$Res>
    implements $AuthEntityCopyWith<$Res> {
  factory _$$AuthEntityImplCopyWith(
          _$AuthEntityImpl value, $Res Function(_$AuthEntityImpl) then) =
      __$$AuthEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$AuthEntityImplCopyWithImpl<$Res>
    extends _$AuthEntityCopyWithImpl<$Res, _$AuthEntityImpl>
    implements _$$AuthEntityImplCopyWith<$Res> {
  __$$AuthEntityImplCopyWithImpl(
      _$AuthEntityImpl _value, $Res Function(_$AuthEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userProfileId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? accessToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AuthEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthEntityImpl implements _AuthEntity {
  _$AuthEntityImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'user_profile_id') this.userProfileId = null,
      @JsonKey(name: 'name') this.name = null,
      @JsonKey(name: 'email') this.email = null,
      @JsonKey(name: 'image_url') this.imageUrl = null,
      @JsonKey(name: 'access_token') this.accessToken = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$AuthEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  String? id;
  @override
  @JsonKey(name: 'user_profile_id')
  int? userProfileId;
  @override
  @JsonKey(name: 'name')
  String? name;
  @override
  @JsonKey(name: 'email')
  String? email;
  @override
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @override
  @JsonKey(name: 'access_token')
  String? accessToken;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'AuthEntity(id: $id, userProfileId: $userProfileId, name: $name, email: $email, imageUrl: $imageUrl, accessToken: $accessToken, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEntityImplCopyWith<_$AuthEntityImpl> get copyWith =>
      __$$AuthEntityImplCopyWithImpl<_$AuthEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEntityImplToJson(
      this,
    );
  }
}

abstract class _AuthEntity implements AuthEntity {
  factory _AuthEntity(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_profile_id') int? userProfileId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$AuthEntityImpl;

  factory _AuthEntity.fromJson(Map<String, dynamic> json) =
      _$AuthEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'id')
  set id(String? value);
  @override
  @JsonKey(name: 'user_profile_id')
  int? get userProfileId;
  @JsonKey(name: 'user_profile_id')
  set userProfileId(int? value);
  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);
  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(name: 'image_url')
  set imageUrl(String? value);
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @JsonKey(name: 'access_token')
  set accessToken(String? value);
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

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEntityImplCopyWith<_$AuthEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
