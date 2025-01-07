// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_transaction_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanTransactionItemEntity _$LoanTransactionItemEntityFromJson(
    Map<String, dynamic> json) {
  return _LoanTransactionItemEntity.fromJson(json);
}

/// @nodoc
mixin _$LoanTransactionItemEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_transaction_id')
  int? get loanTransactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_transaction_id')
  set loanTransactionId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tool_id')
  int? get toolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tool_id')
  set toolId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  double? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  set qty(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  String? get memo => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  set memo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  set status(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_transaction')
  LoanTransactionEntity? get loanTransaction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_transaction')
  set loanTransaction(LoanTransactionEntity? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'tool')
  ToolEntity? get tool => throw _privateConstructorUsedError;
  @JsonKey(name: 'tool')
  set tool(ToolEntity? value) => throw _privateConstructorUsedError;

  /// Serializes this LoanTransactionItemEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanTransactionItemEntityCopyWith<LoanTransactionItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanTransactionItemEntityCopyWith<$Res> {
  factory $LoanTransactionItemEntityCopyWith(LoanTransactionItemEntity value,
          $Res Function(LoanTransactionItemEntity) then) =
      _$LoanTransactionItemEntityCopyWithImpl<$Res, LoanTransactionItemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'loan_transaction_id') int? loanTransactionId,
      @JsonKey(name: 'tool_id') int? toolId,
      @JsonKey(name: 'qty') double? qty,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'loan_transaction') LoanTransactionEntity? loanTransaction,
      @JsonKey(name: 'tool') ToolEntity? tool});

  $LoanTransactionEntityCopyWith<$Res>? get loanTransaction;
  $ToolEntityCopyWith<$Res>? get tool;
}

/// @nodoc
class _$LoanTransactionItemEntityCopyWithImpl<$Res,
        $Val extends LoanTransactionItemEntity>
    implements $LoanTransactionItemEntityCopyWith<$Res> {
  _$LoanTransactionItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loanTransactionId = freezed,
    Object? toolId = freezed,
    Object? qty = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loanTransaction = freezed,
    Object? tool = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      loanTransactionId: freezed == loanTransactionId
          ? _value.loanTransactionId
          : loanTransactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      toolId: freezed == toolId
          ? _value.toolId
          : toolId // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loanTransaction: freezed == loanTransaction
          ? _value.loanTransaction
          : loanTransaction // ignore: cast_nullable_to_non_nullable
              as LoanTransactionEntity?,
      tool: freezed == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as ToolEntity?,
    ) as $Val);
  }

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoanTransactionEntityCopyWith<$Res>? get loanTransaction {
    if (_value.loanTransaction == null) {
      return null;
    }

    return $LoanTransactionEntityCopyWith<$Res>(_value.loanTransaction!,
        (value) {
      return _then(_value.copyWith(loanTransaction: value) as $Val);
    });
  }

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToolEntityCopyWith<$Res>? get tool {
    if (_value.tool == null) {
      return null;
    }

    return $ToolEntityCopyWith<$Res>(_value.tool!, (value) {
      return _then(_value.copyWith(tool: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanTransactionItemEntityImplCopyWith<$Res>
    implements $LoanTransactionItemEntityCopyWith<$Res> {
  factory _$$LoanTransactionItemEntityImplCopyWith(
          _$LoanTransactionItemEntityImpl value,
          $Res Function(_$LoanTransactionItemEntityImpl) then) =
      __$$LoanTransactionItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'loan_transaction_id') int? loanTransactionId,
      @JsonKey(name: 'tool_id') int? toolId,
      @JsonKey(name: 'qty') double? qty,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'loan_transaction') LoanTransactionEntity? loanTransaction,
      @JsonKey(name: 'tool') ToolEntity? tool});

  @override
  $LoanTransactionEntityCopyWith<$Res>? get loanTransaction;
  @override
  $ToolEntityCopyWith<$Res>? get tool;
}

/// @nodoc
class __$$LoanTransactionItemEntityImplCopyWithImpl<$Res>
    extends _$LoanTransactionItemEntityCopyWithImpl<$Res,
        _$LoanTransactionItemEntityImpl>
    implements _$$LoanTransactionItemEntityImplCopyWith<$Res> {
  __$$LoanTransactionItemEntityImplCopyWithImpl(
      _$LoanTransactionItemEntityImpl _value,
      $Res Function(_$LoanTransactionItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loanTransactionId = freezed,
    Object? toolId = freezed,
    Object? qty = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loanTransaction = freezed,
    Object? tool = freezed,
  }) {
    return _then(_$LoanTransactionItemEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      loanTransactionId: freezed == loanTransactionId
          ? _value.loanTransactionId
          : loanTransactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      toolId: freezed == toolId
          ? _value.toolId
          : toolId // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loanTransaction: freezed == loanTransaction
          ? _value.loanTransaction
          : loanTransaction // ignore: cast_nullable_to_non_nullable
              as LoanTransactionEntity?,
      tool: freezed == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as ToolEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanTransactionItemEntityImpl implements _LoanTransactionItemEntity {
  _$LoanTransactionItemEntityImpl(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'loan_transaction_id') this.loanTransactionId = null,
      @JsonKey(name: 'tool_id') this.toolId = null,
      @JsonKey(name: 'qty') this.qty = null,
      @JsonKey(name: 'memo') this.memo = null,
      @JsonKey(name: 'status') this.status = null,
      @JsonKey(name: 'created_at') this.createdAt = null,
      @JsonKey(name: 'updated_at') this.updatedAt = null,
      @JsonKey(name: 'loan_transaction') this.loanTransaction,
      @JsonKey(name: 'tool') this.tool});

  factory _$LoanTransactionItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanTransactionItemEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'loan_transaction_id')
  int? loanTransactionId;
  @override
  @JsonKey(name: 'tool_id')
  int? toolId;
  @override
  @JsonKey(name: 'qty')
  double? qty;
  @override
  @JsonKey(name: 'memo')
  String? memo;
  @override
  @JsonKey(name: 'status')
  String? status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'loan_transaction')
  LoanTransactionEntity? loanTransaction;
  @override
  @JsonKey(name: 'tool')
  ToolEntity? tool;

  @override
  String toString() {
    return 'LoanTransactionItemEntity(id: $id, loanTransactionId: $loanTransactionId, toolId: $toolId, qty: $qty, memo: $memo, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, loanTransaction: $loanTransaction, tool: $tool)';
  }

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanTransactionItemEntityImplCopyWith<_$LoanTransactionItemEntityImpl>
      get copyWith => __$$LoanTransactionItemEntityImplCopyWithImpl<
          _$LoanTransactionItemEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanTransactionItemEntityImplToJson(
      this,
    );
  }
}

abstract class _LoanTransactionItemEntity implements LoanTransactionItemEntity {
  factory _LoanTransactionItemEntity(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'loan_transaction_id') int? loanTransactionId,
      @JsonKey(name: 'tool_id') int? toolId,
      @JsonKey(name: 'qty') double? qty,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'loan_transaction') LoanTransactionEntity? loanTransaction,
      @JsonKey(name: 'tool')
      ToolEntity? tool}) = _$LoanTransactionItemEntityImpl;

  factory _LoanTransactionItemEntity.fromJson(Map<String, dynamic> json) =
      _$LoanTransactionItemEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'loan_transaction_id')
  int? get loanTransactionId;
  @JsonKey(name: 'loan_transaction_id')
  set loanTransactionId(int? value);
  @override
  @JsonKey(name: 'tool_id')
  int? get toolId;
  @JsonKey(name: 'tool_id')
  set toolId(int? value);
  @override
  @JsonKey(name: 'qty')
  double? get qty;
  @JsonKey(name: 'qty')
  set qty(double? value);
  @override
  @JsonKey(name: 'memo')
  String? get memo;
  @JsonKey(name: 'memo')
  set memo(String? value);
  @override
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'status')
  set status(String? value);
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
  @JsonKey(name: 'loan_transaction')
  LoanTransactionEntity? get loanTransaction;
  @JsonKey(name: 'loan_transaction')
  set loanTransaction(LoanTransactionEntity? value);
  @override
  @JsonKey(name: 'tool')
  ToolEntity? get tool;
  @JsonKey(name: 'tool')
  set tool(ToolEntity? value);

  /// Create a copy of LoanTransactionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanTransactionItemEntityImplCopyWith<_$LoanTransactionItemEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
