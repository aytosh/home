// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_fee_discount_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFeeDiscountState {
  int get feeId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FeeDiscountFailure, Unit>>
      get feeDiscountFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFeeDiscountStateCopyWith<CreateFeeDiscountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeeDiscountStateCopyWith<$Res> {
  factory $CreateFeeDiscountStateCopyWith(CreateFeeDiscountState value,
          $Res Function(CreateFeeDiscountState) then) =
      _$CreateFeeDiscountStateCopyWithImpl<$Res, CreateFeeDiscountState>;
  @useResult
  $Res call(
      {int feeId,
      int categoryId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FeeDiscountFailure, Unit>>
          feeDiscountFailureOrSuccessOption});
}

/// @nodoc
class _$CreateFeeDiscountStateCopyWithImpl<$Res,
        $Val extends CreateFeeDiscountState>
    implements $CreateFeeDiscountStateCopyWith<$Res> {
  _$CreateFeeDiscountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeId = null,
    Object? categoryId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? feeDiscountFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      feeDiscountFailureOrSuccessOption: null ==
              feeDiscountFailureOrSuccessOption
          ? _value.feeDiscountFailureOrSuccessOption
          : feeDiscountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FeeDiscountFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateFeeDiscountStateCopyWith<$Res>
    implements $CreateFeeDiscountStateCopyWith<$Res> {
  factory _$$_CreateFeeDiscountStateCopyWith(_$_CreateFeeDiscountState value,
          $Res Function(_$_CreateFeeDiscountState) then) =
      __$$_CreateFeeDiscountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int feeId,
      int categoryId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FeeDiscountFailure, Unit>>
          feeDiscountFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateFeeDiscountStateCopyWithImpl<$Res>
    extends _$CreateFeeDiscountStateCopyWithImpl<$Res,
        _$_CreateFeeDiscountState>
    implements _$$_CreateFeeDiscountStateCopyWith<$Res> {
  __$$_CreateFeeDiscountStateCopyWithImpl(_$_CreateFeeDiscountState _value,
      $Res Function(_$_CreateFeeDiscountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeId = null,
    Object? categoryId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? feeDiscountFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateFeeDiscountState(
      feeId: null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      feeDiscountFailureOrSuccessOption: null ==
              feeDiscountFailureOrSuccessOption
          ? _value.feeDiscountFailureOrSuccessOption
          : feeDiscountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FeeDiscountFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateFeeDiscountState implements _CreateFeeDiscountState {
  const _$_CreateFeeDiscountState(
      {required this.feeId,
      required this.categoryId,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.feeDiscountFailureOrSuccessOption});

  @override
  final int feeId;
  @override
  final int categoryId;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<FeeDiscountFailure, Unit>>
      feeDiscountFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateFeeDiscountState(feeId: $feeId, categoryId: $categoryId, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, feeDiscountFailureOrSuccessOption: $feeDiscountFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFeeDiscountState &&
            (identical(other.feeId, feeId) || other.feeId == feeId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.feeDiscountFailureOrSuccessOption,
                    feeDiscountFailureOrSuccessOption) ||
                other.feeDiscountFailureOrSuccessOption ==
                    feeDiscountFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feeId, categoryId,
      showErrorMessages, isSubmitting, feeDiscountFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFeeDiscountStateCopyWith<_$_CreateFeeDiscountState> get copyWith =>
      __$$_CreateFeeDiscountStateCopyWithImpl<_$_CreateFeeDiscountState>(
          this, _$identity);
}

abstract class _CreateFeeDiscountState implements CreateFeeDiscountState {
  const factory _CreateFeeDiscountState(
      {required final int feeId,
      required final int categoryId,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<FeeDiscountFailure, Unit>>
          feeDiscountFailureOrSuccessOption}) = _$_CreateFeeDiscountState;

  @override
  int get feeId;
  @override
  int get categoryId;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<FeeDiscountFailure, Unit>>
      get feeDiscountFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFeeDiscountStateCopyWith<_$_CreateFeeDiscountState> get copyWith =>
      throw _privateConstructorUsedError;
}
