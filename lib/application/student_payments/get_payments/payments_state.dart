part of 'payments_cubit.dart';

@freezed
class PaymentsState with _$PaymentsState {
  const factory PaymentsState.initial() = _Initial;
  const factory PaymentsState.loadInProgress() = _LoadInProgress;
  const factory PaymentsState.loadSuccess(List<Payment> payments) =
      _LoadSuccess;
  const factory PaymentsState.loadFailure(PaymentFailure paymentFailure) =
      _LoadFailure;
}
