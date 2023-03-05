part of 'create_accrual_cubit.dart';

@freezed
class CreateAccrualState with _$CreateAccrualState {
  const factory CreateAccrualState({
    required int staffId,
    required double amount,
    required String currency,
    required String note,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AccrualFailure, Unit>> accrualFailureOrSuccessOption,
  }) = _CreateFamilyMemberState;

  factory CreateAccrualState.initial() => CreateAccrualState(
        staffId: 0,
        amount: 0,
        currency: "",
        note: "",
        showErrorMessages: false,
        isSubmitting: false,
        accrualFailureOrSuccessOption: none(),
      );
}
