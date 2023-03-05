// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_plan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePaymentPlanState {
  String get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get stundetId => throw _privateConstructorUsedError;
  int get feeId => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<PaymentPlanFailure, Unit>>
      get paymentPlanFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePaymentPlanStateCopyWith<CreatePaymentPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentPlanStateCopyWith<$Res> {
  factory $CreatePaymentPlanStateCopyWith(CreatePaymentPlanState value,
          $Res Function(CreatePaymentPlanState) then) =
      _$CreatePaymentPlanStateCopyWithImpl<$Res, CreatePaymentPlanState>;
  @useResult
  $Res call(
      {String date,
      double amount,
      int stundetId,
      int feeId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<PaymentPlanFailure, Unit>>
          paymentPlanFailureOrSuccessOption});
}

/// @nodoc
class _$CreatePaymentPlanStateCopyWithImpl<$Res,
        $Val extends CreatePaymentPlanState>
    implements $CreatePaymentPlanStateCopyWith<$Res> {
  _$CreatePaymentPlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? stundetId = null,
    Object? feeId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? paymentPlanFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      stundetId: null == stundetId
          ? _value.stundetId
          : stundetId // ignore: cast_nullable_to_non_nullable
              as int,
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentPlanFailureOrSuccessOption: null ==
              paymentPlanFailureOrSuccessOption
          ? _value.paymentPlanFailureOrSuccessOption
          : paymentPlanFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentPlanFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePaymentPlanStateCopyWith<$Res>
    implements $CreatePaymentPlanStateCopyWith<$Res> {
  factory _$$_CreatePaymentPlanStateCopyWith(_$_CreatePaymentPlanState value,
          $Res Function(_$_CreatePaymentPlanState) then) =
      __$$_CreatePaymentPlanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      double amount,
      int stundetId,
      int feeId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<PaymentPlanFailure, Unit>>
          paymentPlanFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreatePaymentPlanStateCopyWithImpl<$Res>
    extends _$CreatePaymentPlanStateCopyWithImpl<$Res,
        _$_CreatePaymentPlanState>
    implements _$$_CreatePaymentPlanStateCopyWith<$Res> {
  __$$_CreatePaymentPlanStateCopyWithImpl(_$_CreatePaymentPlanState _value,
      $Res Function(_$_CreatePaymentPlanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? stundetId = null,
    Object? feeId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? paymentPlanFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreatePaymentPlanState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      stundetId: null == stundetId
          ? _value.stundetId
          : stundetId // ignore: cast_nullable_to_non_nullable
              as int,
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentPlanFailureOrSuccessOption: null ==
              paymentPlanFailureOrSuccessOption
          ? _value.paymentPlanFailureOrSuccessOption
          : paymentPlanFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentPlanFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreatePaymentPlanState implements _CreatePaymentPlanState {
  const _$_CreatePaymentPlanState(
      {required this.date,
      required this.amount,
      required this.stundetId,
      required this.feeId,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.paymentPlanFailureOrSuccessOption});

  @override
  final String date;
  @override
  final double amount;
  @override
  final int stundetId;
  @override
  final int feeId;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<PaymentPlanFailure, Unit>>
      paymentPlanFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreatePaymentPlanState(date: $date, amount: $amount, stundetId: $stundetId, feeId: $feeId, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, paymentPlanFailureOrSuccessOption: $paymentPlanFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePaymentPlanState &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.stundetId, stundetId) ||
                other.stundetId == stundetId) &&
            (identical(other.feeId, feeId) || other.feeId == feeId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.paymentPlanFailureOrSuccessOption,
                    paymentPlanFailureOrSuccessOption) ||
                other.paymentPlanFailureOrSuccessOption ==
                    paymentPlanFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, amount, stundetId, feeId,
      showErrorMessages, isSubmitting, paymentPlanFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePaymentPlanStateCopyWith<_$_CreatePaymentPlanState> get copyWith =>
      __$$_CreatePaymentPlanStateCopyWithImpl<_$_CreatePaymentPlanState>(
          this, _$identity);
}

abstract class _CreatePaymentPlanState implements CreatePaymentPlanState {
  const factory _CreatePaymentPlanState(
      {required final String date,
      required final double amount,
      required final int stundetId,
      required final int feeId,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<PaymentPlanFailure, Unit>>
          paymentPlanFailureOrSuccessOption}) = _$_CreatePaymentPlanState;

  @override
  String get date;
  @override
  double get amount;
  @override
  int get stundetId;
  @override
  int get feeId;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<PaymentPlanFailure, Unit>>
      get paymentPlanFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePaymentPlanStateCopyWith<_$_CreatePaymentPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}
