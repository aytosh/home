// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category.dart';

part 'fee_discount_category_dto.freezed.dart';
part 'fee_discount_category_dto.g.dart';

@freezed
class FeeDiscountCategoryDto with _$FeeDiscountCategoryDto {
  const FeeDiscountCategoryDto._();

  const factory FeeDiscountCategoryDto({
    required int id,
    required String title,
    required String type,
    required double value,
  }) = _FeeDiscountCategoryDto;

  FeeDiscountCategory toDomain() {
    return FeeDiscountCategory(
      id: id,
      title: title,
      type: type,
      value: value,
    );
  }

  factory FeeDiscountCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$FeeDiscountCategoryDtoFromJson(json);
}
