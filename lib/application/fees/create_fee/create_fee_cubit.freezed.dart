// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_fee_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFeeState {
  int get studentId => throw _privateConstructorUsedError;
  int get feeCategoryId => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FeeFailure, Unit>> get feeFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFeeStateCopyWith<CreateFeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeeStateCopyWith<$Res> {
  factory $CreateFeeStateCopyWith(
          CreateFeeState value, $Res Function(CreateFeeState) then) =
      _$CreateFeeStateCopyWithImpl<$Res, CreateFeeState>;
  @useResult
  $Res call(
      {int studentId,
      int feeCategoryId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FeeFailure, Unit>> feeFailureOrSuccessOption});
}

/// @nodoc
class _$CreateFeeStateCopyWithImpl<$Res, $Val extends CreateFeeState>
    implements $CreateFeeStateCopyWith<$Res> {
  _$CreateFeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? feeCategoryId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? feeFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      feeCategoryId: null == feeCategoryId
          ? _value.feeCategoryId
          : feeCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      feeFailureOrSuccessOption: null == feeFailureOrSuccessOption
          ? _value.feeFailureOrSuccessOption
          : feeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FeeFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateStudentStateCopyWith<$Res>
    implements $CreateFeeStateCopyWith<$Res> {
  factory _$$_CreateStudentStateCopyWith(_$_CreateStudentState value,
          $Res Function(_$_CreateStudentState) then) =
      __$$_CreateStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int studentId,
      int feeCategoryId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FeeFailure, Unit>> feeFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateStudentStateCopyWithImpl<$Res>
    extends _$CreateFeeStateCopyWithImpl<$Res, _$_CreateStudentState>
    implements _$$_CreateStudentStateCopyWith<$Res> {
  __$$_CreateStudentStateCopyWithImpl(
      _$_CreateStudentState _value, $Res Function(_$_CreateStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? feeCategoryId = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? feeFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateStudentState(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      feeCategoryId: null == feeCategoryId
          ? _value.feeCategoryId
          : feeCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      feeFailureOrSuccessOption: null == feeFailureOrSuccessOption
          ? _value.feeFailureOrSuccessOption
          : feeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FeeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateStudentState implements _CreateStudentState {
  const _$_CreateStudentState(
      {required this.studentId,
      required this.feeCategoryId,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.feeFailureOrSuccessOption});

  @override
  final int studentId;
  @override
  final int feeCategoryId;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<FeeFailure, Unit>> feeFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateFeeState(studentId: $studentId, feeCategoryId: $feeCategoryId, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, feeFailureOrSuccessOption: $feeFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateStudentState &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.feeCategoryId, feeCategoryId) ||
                other.feeCategoryId == feeCategoryId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.feeFailureOrSuccessOption,
                    feeFailureOrSuccessOption) ||
                other.feeFailureOrSuccessOption == feeFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId, feeCategoryId,
      showErrorMessages, isSubmitting, feeFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateStudentStateCopyWith<_$_CreateStudentState> get copyWith =>
      __$$_CreateStudentStateCopyWithImpl<_$_CreateStudentState>(
          this, _$identity);
}

abstract class _CreateStudentState implements CreateFeeState {
  const factory _CreateStudentState(
      {required final int studentId,
      required final int feeCategoryId,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<FeeFailure, Unit>>
          feeFailureOrSuccessOption}) = _$_CreateStudentState;

  @override
  int get studentId;
  @override
  int get feeCategoryId;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<FeeFailure, Unit>> get feeFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateStudentStateCopyWith<_$_CreateStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
