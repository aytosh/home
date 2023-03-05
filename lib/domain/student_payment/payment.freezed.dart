// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Payment {
  int get id => throw _privateConstructorUsedError;
  String get paymentCategory => throw _privateConstructorUsedError;
  String get paymentType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  String get whoPaid => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {int id,
      String paymentCategory,
      String paymentType,
      double amount,
      double rate,
      String whoPaid,
      String date});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentCategory = null,
    Object? paymentType = null,
    Object? amount = null,
    Object? rate = null,
    Object? whoPaid = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCategory: null == paymentCategory
          ? _value.paymentCategory
          : paymentCategory // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      whoPaid: null == whoPaid
          ? _value.whoPaid
          : whoPaid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String paymentCategory,
      String paymentType,
      double amount,
      double rate,
      String whoPaid,
      String date});
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentCategory = null,
    Object? paymentType = null,
    Object? amount = null,
    Object? rate = null,
    Object? whoPaid = null,
    Object? date = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCategory: null == paymentCategory
          ? _value.paymentCategory
          : paymentCategory // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      whoPaid: null == whoPaid
          ? _value.whoPaid
          : whoPaid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Payment extends _Payment {
  const _$_Payment(
      {required this.id,
      required this.paymentCategory,
      required this.paymentType,
      required this.amount,
      required this.rate,
      required this.whoPaid,
      required this.date})
      : super._();

  @override
  final int id;
  @override
  final String paymentCategory;
  @override
  final String paymentType;
  @override
  final double amount;
  @override
  final double rate;
  @override
  final String whoPaid;
  @override
  final String date;

  @override
  String toString() {
    return 'Payment(id: $id, paymentCategory: $paymentCategory, paymentType: $paymentType, amount: $amount, rate: $rate, whoPaid: $whoPaid, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentCategory, paymentCategory) ||
                other.paymentCategory == paymentCategory) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.whoPaid, whoPaid) || other.whoPaid == whoPaid) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, paymentCategory, paymentType,
      amount, rate, whoPaid, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);
}

abstract class _Payment extends Payment {
  const factory _Payment(
      {required final int id,
      required final String paymentCategory,
      required final String paymentType,
      required final double amount,
      required final double rate,
      required final String whoPaid,
      required final String date}) = _$_Payment;
  const _Payment._() : super._();

  @override
  int get id;
  @override
  String get paymentCategory;
  @override
  String get paymentType;
  @override
  double get amount;
  @override
  double get rate;
  @override
  String get whoPaid;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}
