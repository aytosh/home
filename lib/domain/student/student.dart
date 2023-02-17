import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:school_management/domain/group/group.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const Student._();

  const factory Student({
    required int id,
    required String studentId,
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required Group group,
    required String status,
    required String admissionYear,
    required List<FamilyMember> familyMembers,
    required List<Fee> fees,
    required List<Payment> payments,
  }) = _Student;
}

@freezed
class FamilyMember with _$FamilyMember {
  const FamilyMember._();

  const factory FamilyMember({
    required int id,
    required String fullName,
    required String who,
    required String address,
    required String phoneNumber,
    required String idPassport,
    required String workPlace,
    required bool isResposible,
  }) = _FamilyMember;
}

@freezed
class Fee with _$Fee {
  const Fee._();

  const factory Fee({
    required int id,
    required double paymentUsd,
    required double paymentUsdLeft,
    required double paid,
    required int feeCategory,
    required List<PaymentPlan> paymentPlans,
  }) = _Fee;
}

@freezed
class PaymentPlan with _$PaymentPlan {
  const PaymentPlan._();

  const factory PaymentPlan({
    required int id,
    required String date,
    required double amount,
  }) = _PaymentPlan;
}

@freezed
class Payment with _$Payment {
  const Payment._();

  const factory Payment({
    required int id,
    required String paymentCategory,
    required String paymentType,
    required double amountUsd,
    required double rate,
    required String whoPaid,
    required String date,
  }) = _Payment;
}
