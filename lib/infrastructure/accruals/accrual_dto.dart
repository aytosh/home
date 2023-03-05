// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/accrual/accrual.dart';

part 'accrual_dto.freezed.dart';
part 'accrual_dto.g.dart';

@freezed
class AccrualDto with _$AccrualDto {
  const AccrualDto._();

  const factory AccrualDto({
    required int id,
    required double amount,
    required String currency,
    required String note,
    required String date,
    required int staff,
  }) = _AccrualDto;

  Accrual toDomain() {
    return Accrual(
      id: id,
      amount: amount,
      currency: currency,
      note: note,
      date: date,
    );
  }

  factory AccrualDto.fromJson(Map<String, dynamic> json) =>
      _$AccrualDtoFromJson(json);
}
