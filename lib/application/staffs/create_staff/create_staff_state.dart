part of 'create_staff_cubit.dart';

@freezed
class CreateStaffState with _$CreateStaffState {
  const factory CreateStaffState({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required String status,
    required String position,
    required String nationality,
    required String citizenship,
    required String maritalStatus,
    required String speciality,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<StaffFailure, Unit>> staffFailureOrSuccessOption,
  }) = _CreateStaffState;

  factory CreateStaffState.initial() => CreateStaffState(
        firstName: "",
        lastName: "",
        patronymic: "",
        gender: "",
        birthday: "",
        status: "",
        position: "",
        nationality: "",
        citizenship: "",
        maritalStatus: "",
        speciality: "",
        showErrorMessages: false,
        isSubmitting: false,
        staffFailureOrSuccessOption: none(),
      );
}
