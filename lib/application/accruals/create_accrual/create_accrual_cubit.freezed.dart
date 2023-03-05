// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_accrual_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateAccrualState {
  int get staffId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AccrualFailure, Unit>> get accrualFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAccrualStateCopyWith<CreateAccrualState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccrualStateCopyWith<$Res> {
  factory $CreateAccrualStateCopyWith(
          CreateAccrualState value, $Res Function(CreateAccrualState) then) =
      _$CreateAccrualStateCopyWithImpl<$Res, CreateAccrualState>;
  @useResult
  $Res call(
      {int staffId,
      double amount,
      String currency,
      String note,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AccrualFailure, Unit>> accrualFailureOrSuccessOption});
}

/// @nodoc
class _$CreateAccrualStateCopyWithImpl<$Res, $Val extends CreateAccrualState>
    implements $CreateAccrualStateCopyWith<$Res> {
  _$CreateAccrualStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffId = null,
    Object? amount = null,
    Object? currency = null,
    Object? note = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? accrualFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      staffId: null == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      accrualFailureOrSuccessOption: null == accrualFailureOrSuccessOption
          ? _value.accrualFailureOrSuccessOption
          : accrualFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccrualFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateFamilyMemberStateCopyWith<$Res>
    implements $CreateAccrualStateCopyWith<$Res> {
  factory _$$_CreateFamilyMemberStateCopyWith(_$_CreateFamilyMemberState value,
          $Res Function(_$_CreateFamilyMemberState) then) =
      __$$_CreateFamilyMemberStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int staffId,
      double amount,
      String currency,
      String note,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AccrualFailure, Unit>> accrualFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateFamilyMemberStateCopyWithImpl<$Res>
    extends _$CreateAccrualStateCopyWithImpl<$Res, _$_CreateFamilyMemberState>
    implements _$$_CreateFamilyMemberStateCopyWith<$Res> {
  __$$_CreateFamilyMemberStateCopyWithImpl(_$_CreateFamilyMemberState _value,
      $Res Function(_$_CreateFamilyMemberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffId = null,
    Object? amount = null,
    Object? currency = null,
    Object? note = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? accrualFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateFamilyMemberState(
      staffId: null == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      accrualFailureOrSuccessOption: null == accrualFailureOrSuccessOption
          ? _value.accrualFailureOrSuccessOption
          : accrualFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccrualFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateFamilyMemberState implements _CreateFamilyMemberState {
  const _$_CreateFamilyMemberState(
      {required this.staffId,
      required this.amount,
      required this.currency,
      required this.note,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.accrualFailureOrSuccessOption});

  @override
  final int staffId;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final String note;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AccrualFailure, Unit>> accrualFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateAccrualState(staffId: $staffId, amount: $amount, currency: $currency, note: $note, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, accrualFailureOrSuccessOption: $accrualFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFamilyMemberState &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.accrualFailureOrSuccessOption,
                    accrualFailureOrSuccessOption) ||
                other.accrualFailureOrSuccessOption ==
                    accrualFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, staffId, amount, currency, note,
      showErrorMessages, isSubmitting, accrualFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFamilyMemberStateCopyWith<_$_CreateFamilyMemberState>
      get copyWith =>
          __$$_CreateFamilyMemberStateCopyWithImpl<_$_CreateFamilyMemberState>(
              this, _$identity);
}

abstract class _CreateFamilyMemberState implements CreateAccrualState {
  const factory _CreateFamilyMemberState(
      {required final int staffId,
      required final double amount,
      required final String currency,
      required final String note,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AccrualFailure, Unit>>
          accrualFailureOrSuccessOption}) = _$_CreateFamilyMemberState;

  @override
  int get staffId;
  @override
  double get amount;
  @override
  String get currency;
  @override
  String get note;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AccrualFailure, Unit>> get accrualFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFamilyMemberStateCopyWith<_$_CreateFamilyMemberState>
      get copyWith => throw _privateConstructorUsedError;
}
