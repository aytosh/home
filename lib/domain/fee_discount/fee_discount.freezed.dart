// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeeDiscount {
  int get id => throw _privateConstructorUsedError;
  int get feeId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeeDiscountCopyWith<FeeDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDiscountCopyWith<$Res> {
  factory $FeeDiscountCopyWith(
          FeeDiscount value, $Res Function(FeeDiscount) then) =
      _$FeeDiscountCopyWithImpl<$Res, FeeDiscount>;
  @useResult
  $Res call({int id, int feeId, int categoryId});
}

/// @nodoc
class _$FeeDiscountCopyWithImpl<$Res, $Val extends FeeDiscount>
    implements $FeeDiscountCopyWith<$Res> {
  _$FeeDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? feeId = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeDiscountCopyWith<$Res>
    implements $FeeDiscountCopyWith<$Res> {
  factory _$$_FeeDiscountCopyWith(
          _$_FeeDiscount value, $Res Function(_$_FeeDiscount) then) =
      __$$_FeeDiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int feeId, int categoryId});
}

/// @nodoc
class __$$_FeeDiscountCopyWithImpl<$Res>
    extends _$FeeDiscountCopyWithImpl<$Res, _$_FeeDiscount>
    implements _$$_FeeDiscountCopyWith<$Res> {
  __$$_FeeDiscountCopyWithImpl(
      _$_FeeDiscount _value, $Res Function(_$_FeeDiscount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? feeId = null,
    Object? categoryId = null,
  }) {
    return _then(_$_FeeDiscount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FeeDiscount extends _FeeDiscount {
  const _$_FeeDiscount(
      {required this.id, required this.feeId, required this.categoryId})
      : super._();

  @override
  final int id;
  @override
  final int feeId;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'FeeDiscount(id: $id, feeId: $feeId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDiscount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.feeId, feeId) || other.feeId == feeId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, feeId, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDiscountCopyWith<_$_FeeDiscount> get copyWith =>
      __$$_FeeDiscountCopyWithImpl<_$_FeeDiscount>(this, _$identity);
}

abstract class _FeeDiscount extends FeeDiscount {
  const factory _FeeDiscount(
      {required final int id,
      required final int feeId,
      required final int categoryId}) = _$_FeeDiscount;
  const _FeeDiscount._() : super._();

  @override
  int get id;
  @override
  int get feeId;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_FeeDiscountCopyWith<_$_FeeDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}
