// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationMessageEntity _$NotificationMessageEntityFromJson(
    Map<String, dynamic> json) {
  return _NotificationMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$NotificationMessageEntity {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  set title(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  set body(String? value) => throw _privateConstructorUsedError;

  /// Serializes this NotificationMessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationMessageEntityCopyWith<NotificationMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessageEntityCopyWith<$Res> {
  factory $NotificationMessageEntityCopyWith(NotificationMessageEntity value,
          $Res Function(NotificationMessageEntity) then) =
      _$NotificationMessageEntityCopyWithImpl<$Res, NotificationMessageEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$NotificationMessageEntityCopyWithImpl<$Res,
        $Val extends NotificationMessageEntity>
    implements $NotificationMessageEntityCopyWith<$Res> {
  _$NotificationMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationMessageEntityImplCopyWith<$Res>
    implements $NotificationMessageEntityCopyWith<$Res> {
  factory _$$NotificationMessageEntityImplCopyWith(
          _$NotificationMessageEntityImpl value,
          $Res Function(_$NotificationMessageEntityImpl) then) =
      __$$NotificationMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$$NotificationMessageEntityImplCopyWithImpl<$Res>
    extends _$NotificationMessageEntityCopyWithImpl<$Res,
        _$NotificationMessageEntityImpl>
    implements _$$NotificationMessageEntityImplCopyWith<$Res> {
  __$$NotificationMessageEntityImplCopyWithImpl(
      _$NotificationMessageEntityImpl _value,
      $Res Function(_$NotificationMessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$NotificationMessageEntityImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationMessageEntityImpl implements _NotificationMessageEntity {
  _$NotificationMessageEntityImpl(
      {@JsonKey(name: 'title') this.title = null,
      @JsonKey(name: 'body') this.body = null});

  factory _$NotificationMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationMessageEntityImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  String? title;
  @override
  @JsonKey(name: 'body')
  String? body;

  @override
  String toString() {
    return 'NotificationMessageEntity(title: $title, body: $body)';
  }

  /// Create a copy of NotificationMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMessageEntityImplCopyWith<_$NotificationMessageEntityImpl>
      get copyWith => __$$NotificationMessageEntityImplCopyWithImpl<
          _$NotificationMessageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _NotificationMessageEntity implements NotificationMessageEntity {
  factory _NotificationMessageEntity(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body}) = _$NotificationMessageEntityImpl;

  factory _NotificationMessageEntity.fromJson(Map<String, dynamic> json) =
      _$NotificationMessageEntityImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'title')
  set title(String? value);
  @override
  @JsonKey(name: 'body')
  String? get body;
  @JsonKey(name: 'body')
  set body(String? value);

  /// Create a copy of NotificationMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMessageEntityImplCopyWith<_$NotificationMessageEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
