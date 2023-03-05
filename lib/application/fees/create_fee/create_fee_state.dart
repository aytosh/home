part of 'create_fee_cubit.dart';

@freezed
class CreateFeeState with _$CreateFeeState {
  const factory CreateFeeState({
    required int studentId,
    required int feeCategoryId,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<FeeFailure, Unit>> feeFailureOrSuccessOption,
  }) = _CreateStudentState;

  factory CreateFeeState.initial() => CreateFeeState(
        studentId: 0,
        feeCategoryId: 0,
        showErrorMessages: false,
        isSubmitting: false,
        feeFailureOrSuccessOption: none(),
      );
}
