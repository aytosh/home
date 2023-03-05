// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/fee_discount/fee_discount.dart';

part 'fee_discount_dto.freezed.dart';
part 'fee_discount_dto.g.dart';

@freezed
class FeeDiscountDto with _$FeeDiscountDto {
  const FeeDiscountDto._();

  const factory FeeDiscountDto({
    required int id,
    required int fee,
    required int discount,
  }) = _FeeDiscountDto;

  FeeDiscount toDomain() {
    return FeeDiscount(
      id: id,
      feeId: fee,
      categoryId: discount,
    );
  }

  factory FeeDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$FeeDiscountDtoFromJson(json);
}
