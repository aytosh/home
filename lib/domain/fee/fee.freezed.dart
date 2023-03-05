// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Fee {
  int get id => throw _privateConstructorUsedError;
  double get paymentUsd => throw _privateConstructorUsedError;
  double get paymentUsdLeft => throw _privateConstructorUsedError;
  double get paid => throw _privateConstructorUsedError;
  int get feeCategoryId => throw _privateConstructorUsedError;
  List<int>? get paymentPlanIds => throw _privateConstructorUsedError;
  List<int> get discountIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeeCopyWith<Fee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeCopyWith<$Res> {
  factory $FeeCopyWith(Fee value, $Res Function(Fee) then) =
      _$FeeCopyWithImpl<$Res, Fee>;
  @useResult
  $Res call(
      {int id,
      double paymentUsd,
      double paymentUsdLeft,
      double paid,
      int feeCategoryId,
      List<int>? paymentPlanIds,
      List<int> discountIds});
}

/// @nodoc
class _$FeeCopyWithImpl<$Res, $Val extends Fee> implements $FeeCopyWith<$Res> {
  _$FeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentUsd = null,
    Object? paymentUsdLeft = null,
    Object? paid = null,
    Object? feeCategoryId = null,
    Object? paymentPlanIds = freezed,
    Object? discountIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUsd: null == paymentUsd
          ? _value.paymentUsd
          : paymentUsd // ignore: cast_nullable_to_non_nullable
              as double,
      paymentUsdLeft: null == paymentUsdLeft
          ? _value.paymentUsdLeft
          : paymentUsdLeft // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      feeCategoryId: null == feeCategoryId
          ? _value.feeCategoryId
          : feeCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentPlanIds: freezed == paymentPlanIds
          ? _value.paymentPlanIds
          : paymentPlanIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      discountIds: null == discountIds
          ? _value.discountIds
          : discountIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeCopyWith<$Res> implements $FeeCopyWith<$Res> {
  factory _$$_FeeCopyWith(_$_Fee value, $Res Function(_$_Fee) then) =
      __$$_FeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double paymentUsd,
      double paymentUsdLeft,
      double paid,
      int feeCategoryId,
      List<int>? paymentPlanIds,
      List<int> discountIds});
}

/// @nodoc
class __$$_FeeCopyWithImpl<$Res> extends _$FeeCopyWithImpl<$Res, _$_Fee>
    implements _$$_FeeCopyWith<$Res> {
  __$$_FeeCopyWithImpl(_$_Fee _value, $Res Function(_$_Fee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentUsd = null,
    Object? paymentUsdLeft = null,
    Object? paid = null,
    Object? feeCategoryId = null,
    Object? paymentPlanIds = freezed,
    Object? discountIds = null,
  }) {
    return _then(_$_Fee(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUsd: null == paymentUsd
          ? _value.paymentUsd
          : paymentUsd // ignore: cast_nullable_to_non_nullable
              as double,
      paymentUsdLeft: null == paymentUsdLeft
          ? _value.paymentUsdLeft
          : paymentUsdLeft // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      feeCategoryId: null == feeCategoryId
          ? _value.feeCategoryId
          : feeCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentPlanIds: freezed == paymentPlanIds
          ? _value._paymentPlanIds
          : paymentPlanIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      discountIds: null == discountIds
          ? _value._discountIds
          : discountIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Fee extends _Fee {
  const _$_Fee(
      {required this.id,
      required this.paymentUsd,
      required this.paymentUsdLeft,
      required this.paid,
      required this.feeCategoryId,
      required final List<int>? paymentPlanIds,
      required final List<int> discountIds})
      : _paymentPlanIds = paymentPlanIds,
        _discountIds = discountIds,
        super._();

  @override
  final int id;
  @override
  final double paymentUsd;
  @override
  final double paymentUsdLeft;
  @override
  final double paid;
  @override
  final int feeCategoryId;
  final List<int>? _paymentPlanIds;
  @override
  List<int>? get paymentPlanIds {
    final value = _paymentPlanIds;
    if (value == null) return null;
    if (_paymentPlanIds is EqualUnmodifiableListView) return _paymentPlanIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int> _discountIds;
  @override
  List<int> get discountIds {
    if (_discountIds is EqualUnmodifiableListView) return _discountIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountIds);
  }

  @override
  String toString() {
    return 'Fee(id: $id, paymentUsd: $paymentUsd, paymentUsdLeft: $paymentUsdLeft, paid: $paid, feeCategoryId: $feeCategoryId, paymentPlanIds: $paymentPlanIds, discountIds: $discountIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fee &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentUsd, paymentUsd) ||
                other.paymentUsd == paymentUsd) &&
            (identical(other.paymentUsdLeft, paymentUsdLeft) ||
                other.paymentUsdLeft == paymentUsdLeft) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.feeCategoryId, feeCategoryId) ||
                other.feeCategoryId == feeCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._paymentPlanIds, _paymentPlanIds) &&
            const DeepCollectionEquality()
                .equals(other._discountIds, _discountIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentUsd,
      paymentUsdLeft,
      paid,
      feeCategoryId,
      const DeepCollectionEquality().hash(_paymentPlanIds),
      const DeepCollectionEquality().hash(_discountIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeCopyWith<_$_Fee> get copyWith =>
      __$$_FeeCopyWithImpl<_$_Fee>(this, _$identity);
}

abstract class _Fee extends Fee {
  const factory _Fee(
      {required final int id,
      required final double paymentUsd,
      required final double paymentUsdLeft,
      required final double paid,
      required final int feeCategoryId,
      required final List<int>? paymentPlanIds,
      required final List<int> discountIds}) = _$_Fee;
  const _Fee._() : super._();

  @override
  int get id;
  @override
  double get paymentUsd;
  @override
  double get paymentUsdLeft;
  @override
  double get paid;
  @override
  int get feeCategoryId;
  @override
  List<int>? get paymentPlanIds;
  @override
  List<int> get discountIds;
  @override
  @JsonKey(ignore: true)
  _$$_FeeCopyWith<_$_Fee> get copyWith => throw _privateConstructorUsedError;
}
