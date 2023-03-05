part of 'create_family_member_cubit.dart';

@freezed
class CreateFamilyMemberState with _$CreateFamilyMemberState {
  const factory CreateFamilyMemberState({
    required int studentId,
    required String firstName,
    required String lastName,
    required String patronymic,
    required String who,
    required String address,
    required String phoneNumber,
    required String idPassport,
    required String workPlace,
    required bool isResposible,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<FamilyMemberFailure, Unit>>
        familyMemberFailureOrSuccessOption,
  }) = _CreateFamilyMemberState;

  factory CreateFamilyMemberState.initial() => CreateFamilyMemberState(
        studentId: 0,
        firstName: "",
        lastName: "",
        patronymic: "",
        who: "",
        address: "",
        phoneNumber: "",
        idPassport: "",
        workPlace: "",
        isResposible: false,
        showErrorMessages: false,
        isSubmitting: false,
        familyMemberFailureOrSuccessOption: none(),
      );
}
