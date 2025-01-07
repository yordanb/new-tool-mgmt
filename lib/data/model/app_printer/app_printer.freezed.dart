// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_printer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppPrinter _$AppPrinterFromJson(Map<String, dynamic> json) {
  return _AppPrinter.fromJson(json);
}

/// @nodoc
mixin _$AppPrinter {
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

  /// Serializes this AppPrinter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPrinterCopyWith<AppPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrinterCopyWith<$Res> {
  factory $AppPrinterCopyWith(
          AppPrinter value, $Res Function(AppPrinter) then) =
      _$AppPrinterCopyWithImpl<$Res, AppPrinter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$AppPrinterCopyWithImpl<$Res, $Val extends AppPrinter>
    implements $AppPrinterCopyWith<$Res> {
  _$AppPrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPrinter
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
abstract class _$$AppPrinterImplCopyWith<$Res>
    implements $AppPrinterCopyWith<$Res> {
  factory _$$AppPrinterImplCopyWith(
          _$AppPrinterImpl value, $Res Function(_$AppPrinterImpl) then) =
      __$$AppPrinterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$AppPrinterImplCopyWithImpl<$Res>
    extends _$AppPrinterCopyWithImpl<$Res, _$AppPrinterImpl>
    implements _$$AppPrinterImplCopyWith<$Res> {
  __$$AppPrinterImplCopyWithImpl(
      _$AppPrinterImpl _value, $Res Function(_$AppPrinterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPrinter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppPrinterImpl(
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
class _$AppPrinterImpl implements _AppPrinter {
  _$AppPrinterImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'message') this.message = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null});

  factory _$AppPrinterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppPrinterImplFromJson(json);

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
    return 'AppPrinter(id: $id, message: $message, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  /// Create a copy of AppPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPrinterImplCopyWith<_$AppPrinterImpl> get copyWith =>
      __$$AppPrinterImplCopyWithImpl<_$AppPrinterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppPrinterImplToJson(
      this,
    );
  }
}

abstract class _AppPrinter implements AppPrinter {
  factory _AppPrinter(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$AppPrinterImpl;

  factory _AppPrinter.fromJson(Map<String, dynamic> json) =
      _$AppPrinterImpl.fromJson;

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

  /// Create a copy of AppPrinter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPrinterImplCopyWith<_$AppPrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
