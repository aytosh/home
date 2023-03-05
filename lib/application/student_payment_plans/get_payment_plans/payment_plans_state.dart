part of 'payment_plans_cubit.dart';

@freezed
class PaymentPlansState with _$PaymentPlansState {
  const factory PaymentPlansState.initial() = _Initial;
  const factory PaymentPlansState.loadInProgress() = _LoadInProgress;
  const factory PaymentPlansState.loadSuccess(List<PaymentPlan> paymentPlans) =
      _LoadSuccess;
  const factory PaymentPlansState.loadFailure(
      PaymentPlanFailure paymentPlanFailure) = _LoadFailure;
}
