// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bluetooth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppBluetoothEntity _$AppBluetoothEntityFromJson(Map<String, dynamic> json) {
  return _AppBluetoothEntity.fromJson(json);
}

/// @nodoc
mixin _$AppBluetoothEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  set deviceName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_address')
  String? get deviceAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_address')
  set deviceAddress(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this AppBluetoothEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppBluetoothEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppBluetoothEntityCopyWith<AppBluetoothEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBluetoothEntityCopyWith<$Res> {
  factory $AppBluetoothEntityCopyWith(
          AppBluetoothEntity value, $Res Function(AppBluetoothEntity) then) =
      _$AppBluetoothEntityCopyWithImpl<$Res, AppBluetoothEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_address') String? deviceAddress,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AppBluetoothEntityCopyWithImpl<$Res, $Val extends AppBluetoothEntity>
    implements $AppBluetoothEntityCopyWith<$Res> {
  _$AppBluetoothEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppBluetoothEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceName = freezed,
    Object? deviceAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceAddress: freezed == deviceAddress
          ? _value.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AppBluetoothEntityImplCopyWith<$Res>
    implements $AppBluetoothEntityCopyWith<$Res> {
  factory _$$AppBluetoothEntityImplCopyWith(_$AppBluetoothEntityImpl value,
          $Res Function(_$AppBluetoothEntityImpl) then) =
      __$$AppBluetoothEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_address') String? deviceAddress,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$AppBluetoothEntityImplCopyWithImpl<$Res>
    extends _$AppBluetoothEntityCopyWithImpl<$Res, _$AppBluetoothEntityImpl>
    implements _$$AppBluetoothEntityImplCopyWith<$Res> {
  __$$AppBluetoothEntityImplCopyWithImpl(_$AppBluetoothEntityImpl _value,
      $Res Function(_$AppBluetoothEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppBluetoothEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceName = freezed,
    Object? deviceAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppBluetoothEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceAddress: freezed == deviceAddress
          ? _value.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
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
class _$AppBluetoothEntityImpl implements _AppBluetoothEntity {
  _$AppBluetoothEntityImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'device_name') this.deviceName = null,
      @JsonKey(name: 'device_address') this.deviceAddress = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$AppBluetoothEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppBluetoothEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'device_name')
  String? deviceName;
  @override
  @JsonKey(name: 'device_address')
  String? deviceAddress;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'AppBluetoothEntity(id: $id, deviceName: $deviceName, deviceAddress: $deviceAddress, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of AppBluetoothEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBluetoothEntityImplCopyWith<_$AppBluetoothEntityImpl> get copyWith =>
      __$$AppBluetoothEntityImplCopyWithImpl<_$AppBluetoothEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppBluetoothEntityImplToJson(
      this,
    );
  }
}

abstract class _AppBluetoothEntity implements AppBluetoothEntity {
  factory _AppBluetoothEntity(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'device_name') String? deviceName,
          @JsonKey(name: 'device_address') String? deviceAddress,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$AppBluetoothEntityImpl;

  factory _AppBluetoothEntity.fromJson(Map<String, dynamic> json) =
      _$AppBluetoothEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'device_name')
  String? get deviceName;
  @JsonKey(name: 'device_name')
  set deviceName(String? value);
  @override
  @JsonKey(name: 'device_address')
  String? get deviceAddress;
  @JsonKey(name: 'device_address')
  set deviceAddress(String? value);
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

  /// Create a copy of AppBluetoothEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppBluetoothEntityImplCopyWith<_$AppBluetoothEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
