part of 'create_payment_plan_cubit.dart';

@freezed
class CreatePaymentPlanState with _$CreatePaymentPlanState {
  const factory CreatePaymentPlanState({
    required String date,
    required double amount,
    required int stundetId,
    required int feeId,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<PaymentPlanFailure, Unit>>
        paymentPlanFailureOrSuccessOption,
  }) = _CreatePaymentPlanState;

  factory CreatePaymentPlanState.initial() => CreatePaymentPlanState(
        date: "",
        amount: 0,
        stundetId: 0,
        feeId: 0,
        showErrorMessages: false,
        isSubmitting: false,
        paymentPlanFailureOrSuccessOption: none(),
      );
}
