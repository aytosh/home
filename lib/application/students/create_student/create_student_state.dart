part of 'create_student_cubit.dart';

@freezed
class CreateStudentState with _$CreateStudentState {
  const factory CreateStudentState({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required int group,
    required String admissionYear,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<StudentFailure, Unit>> studentFailureOrSuccessOption,
  }) = _CreateStudentState;

  factory CreateStudentState.initial() => CreateStudentState(
        firstName: "",
        lastName: "",
        patronymic: "",
        gender: "",
        birthday: "",
        group: 0,
        admissionYear: "",
        showErrorMessages: false,
        isSubmitting: false,
        studentFailureOrSuccessOption: none(),
      );
}
