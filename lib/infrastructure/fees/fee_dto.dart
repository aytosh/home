// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/fee/fee.dart';
import 'package:school_management/infrastructure/common/object_with_id_dto.dart';

part 'fee_dto.freezed.dart';
part 'fee_dto.g.dart';

@freezed
class FeeDto with _$FeeDto {
  const FeeDto._();

  const factory FeeDto({
    required int id,
    required double payment_usd,
    required double payment_usd_left,
    required double paid,
    required int fee_category,
    required List<ObjectWithIdDto>? payment_plan,
    required List<ObjectWithIdDto> discounts,
  }) = _FeeDto;

  Fee toDomain() {
    return Fee(
      id: id,
      paymentUsd: payment_usd,
      paymentUsdLeft: payment_usd_left,
      paid: paid,
      feeCategoryId: fee_category,
      paymentPlanIds: payment_plan?.map((e) => e.id).toList(),
      discountIds: discounts.map((e) => e.id).toList(),
    );
  }

  factory FeeDto.fromJson(Map<String, dynamic> json) => _$FeeDtoFromJson(json);
}
