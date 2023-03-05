// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan.dart';

part 'payment_plan_dto.freezed.dart';
part 'payment_plan_dto.g.dart';

@freezed
class PaymentPlanDto with _$PaymentPlanDto {
  const PaymentPlanDto._();

  const factory PaymentPlanDto({
    required int id,
    required String date,
    required double amount,
  }) = _PaymentPlanDto;

  PaymentPlan toDomain() {
    return PaymentPlan(
      id: id,
      date: date,
      amount: amount,
    );
  }

  factory PaymentPlanDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentPlanDtoFromJson(json);
}
