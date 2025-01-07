// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_printer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppPrinterEntity _$AppPrinterEntityFromJson(Map<String, dynamic> json) {
  return _AppPrinterEntity.fromJson(json);
}

/// @nodoc
mixin _$AppPrinterEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  set message(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this AppPrinterEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppPrinterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPrinterEntityCopyWith<AppPrinterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrinterEntityCopyWith<$Res> {
  factory $AppPrinterEntityCopyWith(
          AppPrinterEntity value, $Res Function(AppPrinterEntity) then) =
      _$AppPrinterEntityCopyWithImpl<$Res, AppPrinterEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AppPrinterEntityCopyWithImpl<$Res, $Val extends AppPrinterEntity>
    implements $AppPrinterEntityCopyWith<$Res> {
  _$AppPrinterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPrinterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AppPrinterEntityImplCopyWith<$Res>
    implements $AppPrinterEntityCopyWith<$Res> {
  factory _$$AppPrinterEntityImplCopyWith(_$AppPrinterEntityImpl value,
          $Res Function(_$AppPrinterEntityImpl) then) =
      __$$AppPrinterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$AppPrinterEntityImplCopyWithImpl<$Res>
    extends _$AppPrinterEntityCopyWithImpl<$Res, _$AppPrinterEntityImpl>
    implements _$$AppPrinterEntityImplCopyWith<$Res> {
  __$$AppPrinterEntityImplCopyWithImpl(_$AppPrinterEntityImpl _value,
      $Res Function(_$AppPrinterEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPrinterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppPrinterEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
class _$AppPrinterEntityImpl implements _AppPrinterEntity {
  _$AppPrinterEntityImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'message') this.message = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$AppPrinterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppPrinterEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'message')
  String? message;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'AppPrinterEntity(id: $id, message: $message, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of AppPrinterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPrinterEntityImplCopyWith<_$AppPrinterEntityImpl> get copyWith =>
      __$$AppPrinterEntityImplCopyWithImpl<_$AppPrinterEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppPrinterEntityImplToJson(
      this,
    );
  }
}

abstract class _AppPrinterEntity implements AppPrinterEntity {
  factory _AppPrinterEntity(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'message') String? message,
          @JsonKey(name: 'created_at') DateTime? createdAt,
          @JsonKey(name: 'updated_at') DateTime? updatedAt}) =
      _$AppPrinterEntityImpl;

  factory _AppPrinterEntity.fromJson(Map<String, dynamic> json) =
      _$AppPrinterEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'message')
  set message(String? value);
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

  /// Create a copy of AppPrinterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPrinterEntityImplCopyWith<_$AppPrinterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
