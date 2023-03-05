part of 'create_full_student_cubit.dart';

@freezed
class CreateFullStudentState with _$CreateFullStudentState {
  const factory CreateFullStudentState({
    required CreateStudentState createStudentState,
    required CreateFamilyMemberState createFamilyMemberState,
    required CreateFeeState createFeeState,
    required CreateFeeDiscountState createFeeDiscountState,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<StudentFailure, Unit>>
        fullStudentFailureOrSuccessOption,
  }) = _CreateFullStudentState;

  factory CreateFullStudentState.initial() => CreateFullStudentState(
        createStudentState: CreateStudentState.initial(),
        createFamilyMemberState: CreateFamilyMemberState.initial(),
        createFeeState: CreateFeeState.initial(),
        createFeeDiscountState: CreateFeeDiscountState.initial(),
        showErrorMessages: false,
        isSubmitting: false,
        fullStudentFailureOrSuccessOption: none(),
      );
}
