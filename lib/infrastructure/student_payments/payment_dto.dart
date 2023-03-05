// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/student_payment/payment.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
class PaymentDto with _$PaymentDto {
  const PaymentDto._();

  const factory PaymentDto({
    required int id,
    required String payment_category,
    required String payment_type,
    required double amount,
    // required double rate,
    required String who_paid,
    required String date,
  }) = _PaymentDto;

  Payment toDomain() {
    return Payment(
      id: id,
      paymentCategory: payment_category,
      paymentType: payment_type,
      amount: amount,
      rate: 83,
      whoPaid: who_paid,
      date: date,
    );
  }

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
