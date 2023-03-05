// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentPlan {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentPlanCopyWith<PaymentPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPlanCopyWith<$Res> {
  factory $PaymentPlanCopyWith(
          PaymentPlan value, $Res Function(PaymentPlan) then) =
      _$PaymentPlanCopyWithImpl<$Res, PaymentPlan>;
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class _$PaymentPlanCopyWithImpl<$Res, $Val extends PaymentPlan>
    implements $PaymentPlanCopyWith<$Res> {
  _$PaymentPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentPlanCopyWith<$Res>
    implements $PaymentPlanCopyWith<$Res> {
  factory _$$_PaymentPlanCopyWith(
          _$_PaymentPlan value, $Res Function(_$_PaymentPlan) then) =
      __$$_PaymentPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class __$$_PaymentPlanCopyWithImpl<$Res>
    extends _$PaymentPlanCopyWithImpl<$Res, _$_PaymentPlan>
    implements _$$_PaymentPlanCopyWith<$Res> {
  __$$_PaymentPlanCopyWithImpl(
      _$_PaymentPlan _value, $Res Function(_$_PaymentPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$_PaymentPlan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PaymentPlan extends _PaymentPlan {
  const _$_PaymentPlan(
      {required this.id, required this.date, required this.amount})
      : super._();

  @override
  final int id;
  @override
  final String date;
  @override
  final double amount;

  @override
  String toString() {
    return 'PaymentPlan(id: $id, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentPlanCopyWith<_$_PaymentPlan> get copyWith =>
      __$$_PaymentPlanCopyWithImpl<_$_PaymentPlan>(this, _$identity);
}

abstract class _PaymentPlan extends PaymentPlan {
  const factory _PaymentPlan(
      {required final int id,
      required final String date,
      required final double amount}) = _$_PaymentPlan;
  const _PaymentPlan._() : super._();

  @override
  int get id;
  @override
  String get date;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentPlanCopyWith<_$_PaymentPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
