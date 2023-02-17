// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/infrastructure/groups/group_dto.dart';

part 'student_dto.freezed.dart';
part 'student_dto.g.dart';

@freezed
class StudentDto with _$StudentDto {
  const StudentDto._();

  const factory StudentDto({
    required int id,
    required String student_id,
    required String first_name,
    required String last_name,
    required String patronymic,
    required String gender,
    required String birthday,
    required GroupDto group,
    required String status,
    required String admission_year,
    required List<FamilyMemberDto> family_members,
    required List<FeeDto> fee,
    required List<PaymentDto> payments,
  }) = _StudentDto;

  Student toDomain() {
    return Student(
      id: id,
      studentId: student_id,
      firstName: first_name,
      lastName: last_name,
      patronymic: patronymic,
      gender: gender,
      birthday: birthday,
      group: group.toDomain(),
      status: status,
      admissionYear: admission_year,
      familyMembers: family_members
          .map(
            (family_member) => family_member.toDomain(),
          )
          .toList(),
      fees: fee
          .map(
            (f) => f.toDomain(),
          )
          .toList(),
      payments: payments
          .map(
            (payment) => payment.toDomain(),
          )
          .toList(),
    );
  }

  factory StudentDto.fromJson(Map<String, dynamic> json) =>
      _$StudentDtoFromJson(json);
}

@freezed
class FamilyMemberDto with _$FamilyMemberDto {
  const FamilyMemberDto._();

  const factory FamilyMemberDto({
    required int id,
    required String fullname,
    required String who,
    required String address,
    required String phone_number,
    required String id_passport,
    required String work_place,
    required bool is_responsible,
  }) = _FamilyMemberDto;

  FamilyMember toDomain() {
    return FamilyMember(
      id: id,
      fullName: fullname,
      who: who,
      address: address,
      phoneNumber: phone_number,
      idPassport: id_passport,
      workPlace: work_place,
      isResposible: is_responsible,
    );
  }

  factory FamilyMemberDto.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberDtoFromJson(json);
}

@freezed
class FeeDto with _$FeeDto {
  const FeeDto._();

  const factory FeeDto({
    required int id,
    required double payment_usd,
    required double payment_usd_left,
    required double paid,
    required int fee_category,
    required List<PaymentPlanDto> payment_plan,
  }) = _FeeDto;

  Fee toDomain() {
    return Fee(
      id: id,
      paymentUsd: payment_usd,
      paymentUsdLeft: payment_usd_left,
      paid: paid,
      feeCategory: fee_category,
      paymentPlans: payment_plan
          .map(
            (p) => p.toDomain(),
          )
          .toList(),
    );
  }

  factory FeeDto.fromJson(Map<String, dynamic> json) => _$FeeDtoFromJson(json);
}

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

@freezed
class PaymentDto with _$PaymentDto {
  const PaymentDto._();

  const factory PaymentDto({
    required int id,
    required String payment_category,
    required String payment_type,
    required double amount_usd,
    required double rate,
    required String who_paid,
    required String date,
  }) = _PaymentDto;

  Payment toDomain() {
    return Payment(
      id: id,
      paymentCategory: payment_category,
      paymentType: payment_type,
      amountUsd: amount_usd,
      rate: rate,
      whoPaid: who_paid,
      date: date,
    );
  }

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
