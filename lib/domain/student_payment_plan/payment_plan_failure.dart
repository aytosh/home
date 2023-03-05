import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_plan_failure.freezed.dart';

@freezed
class PaymentPlanFailure with _$PaymentPlanFailure {
  const factory PaymentPlanFailure.unexpected() = _Unexpected;
  const factory PaymentPlanFailure.serverError() = _ServerError;
}
