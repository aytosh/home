import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_plan.freezed.dart';

@freezed
class PaymentPlan with _$PaymentPlan {
  const PaymentPlan._();

  const factory PaymentPlan({
    required int id,
    required String date,
    required double amount,
  }) = _PaymentPlan;
}
