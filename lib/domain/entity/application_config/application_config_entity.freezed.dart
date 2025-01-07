// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplicationConfigEntity _$ApplicationConfigEntityFromJson(
    Map<String, dynamic> json) {
  return _ApplicationConfigEntity.fromJson(json);
}

/// @nodoc
mixin _$ApplicationConfigEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_mode')
  String? get appMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_mode')
  set appMode(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  set companyName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  set address(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this ApplicationConfigEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApplicationConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationConfigEntityCopyWith<ApplicationConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationConfigEntityCopyWith<$Res> {
  factory $ApplicationConfigEntityCopyWith(ApplicationConfigEntity value,
          $Res Function(ApplicationConfigEntity) then) =
      _$ApplicationConfigEntityCopyWithImpl<$Res, ApplicationConfigEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'app_mode') String? appMode,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ApplicationConfigEntityCopyWithImpl<$Res,
        $Val extends ApplicationConfigEntity>
    implements $ApplicationConfigEntityCopyWith<$Res> {
  _$ApplicationConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appMode = freezed,
    Object? companyName = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      appMode: freezed == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ApplicationConfigEntityImplCopyWith<$Res>
    implements $ApplicationConfigEntityCopyWith<$Res> {
  factory _$$ApplicationConfigEntityImplCopyWith(
          _$ApplicationConfigEntityImpl value,
          $Res Function(_$ApplicationConfigEntityImpl) then) =
      __$$ApplicationConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'app_mode') String? appMode,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ApplicationConfigEntityImplCopyWithImpl<$Res>
    extends _$ApplicationConfigEntityCopyWithImpl<$Res,
        _$ApplicationConfigEntityImpl>
    implements _$$ApplicationConfigEntityImplCopyWith<$Res> {
  __$$ApplicationConfigEntityImplCopyWithImpl(
      _$ApplicationConfigEntityImpl _value,
      $Res Function(_$ApplicationConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appMode = freezed,
    Object? companyName = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ApplicationConfigEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      appMode: freezed == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
class _$ApplicationConfigEntityImpl implements _ApplicationConfigEntity {
  _$ApplicationConfigEntityImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'app_mode') this.appMode = null,
      @JsonKey(name: 'company_name') this.companyName = null,
      @JsonKey(name: 'address') this.address = null,
      @JsonKey(name: 'phone_number') this.phoneNumber = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$ApplicationConfigEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationConfigEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'app_mode')
  String? appMode;
  @override
  @JsonKey(name: 'company_name')
  String? companyName;
  @override
  @JsonKey(name: 'address')
  String? address;
  @override
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'ApplicationConfigEntity(id: $id, appMode: $appMode, companyName: $companyName, address: $address, phoneNumber: $phoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of ApplicationConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationConfigEntityImplCopyWith<_$ApplicationConfigEntityImpl>
      get copyWith => __$$ApplicationConfigEntityImplCopyWithImpl<
          _$ApplicationConfigEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationConfigEntityImplToJson(
      this,
    );
  }
}

abstract class _ApplicationConfigEntity implements ApplicationConfigEntity {
  factory _ApplicationConfigEntity(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'app_mode') String? appMode,
          @JsonKey(name: 'company_name') String? companyName,
          @JsonKey(name: 'address') String? address,
          @JsonKey(name: 'phone_number') String? phoneNumber,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$ApplicationConfigEntityImpl;

  factory _ApplicationConfigEntity.fromJson(Map<String, dynamic> json) =
      _$ApplicationConfigEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'app_mode')
  String? get appMode;
  @JsonKey(name: 'app_mode')
  set appMode(String? value);
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @JsonKey(name: 'company_name')
  set companyName(String? value);
  @override
  @JsonKey(name: 'address')
  String? get address;
  @JsonKey(name: 'address')
  set address(String? value);
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value);
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

  /// Create a copy of ApplicationConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationConfigEntityImplCopyWith<_$ApplicationConfigEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
