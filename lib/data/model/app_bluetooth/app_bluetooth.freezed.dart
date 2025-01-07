// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bluetooth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppBluetooth _$AppBluetoothFromJson(Map<String, dynamic> json) {
  return _AppBluetooth.fromJson(json);
}

/// @nodoc
mixin _$AppBluetooth {
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

  /// Serializes this AppBluetooth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppBluetooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppBluetoothCopyWith<AppBluetooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBluetoothCopyWith<$Res> {
  factory $AppBluetoothCopyWith(
          AppBluetooth value, $Res Function(AppBluetooth) then) =
      _$AppBluetoothCopyWithImpl<$Res, AppBluetooth>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_address') String? deviceAddress,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AppBluetoothCopyWithImpl<$Res, $Val extends AppBluetooth>
    implements $AppBluetoothCopyWith<$Res> {
  _$AppBluetoothCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppBluetooth
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
abstract class _$$AppBluetoothImplCopyWith<$Res>
    implements $AppBluetoothCopyWith<$Res> {
  factory _$$AppBluetoothImplCopyWith(
          _$AppBluetoothImpl value, $Res Function(_$AppBluetoothImpl) then) =
      __$$AppBluetoothImplCopyWithImpl<$Res>;
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
class __$$AppBluetoothImplCopyWithImpl<$Res>
    extends _$AppBluetoothCopyWithImpl<$Res, _$AppBluetoothImpl>
    implements _$$AppBluetoothImplCopyWith<$Res> {
  __$$AppBluetoothImplCopyWithImpl(
      _$AppBluetoothImpl _value, $Res Function(_$AppBluetoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppBluetooth
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
    return _then(_$AppBluetoothImpl(
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
class _$AppBluetoothImpl implements _AppBluetooth {
  _$AppBluetoothImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'device_name') this.deviceName = null,
      @JsonKey(name: 'device_address') this.deviceAddress = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$AppBluetoothImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppBluetoothImplFromJson(json);

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
    return 'AppBluetooth(id: $id, deviceName: $deviceName, deviceAddress: $deviceAddress, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of AppBluetooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBluetoothImplCopyWith<_$AppBluetoothImpl> get copyWith =>
      __$$AppBluetoothImplCopyWithImpl<_$AppBluetoothImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppBluetoothImplToJson(
      this,
    );
  }
}

abstract class _AppBluetooth implements AppBluetooth {
  factory _AppBluetooth(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_address') String? deviceAddress,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$AppBluetoothImpl;

  factory _AppBluetooth.fromJson(Map<String, dynamic> json) =
      _$AppBluetoothImpl.fromJson;

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

  /// Create a copy of AppBluetooth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppBluetoothImplCopyWith<_$AppBluetoothImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
