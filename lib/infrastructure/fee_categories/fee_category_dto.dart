// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/fee_category/fee_category.dart';

part 'fee_category_dto.freezed.dart';
part 'fee_category_dto.g.dart';

@freezed
class FeeCategoryDto with _$FeeCategoryDto {
  const FeeCategoryDto._();

  const factory FeeCategoryDto({
    required int id,
    required String title,
    required double amount_usd,
    required String note,
  }) = _FeeCategoryDto;

  FeeCategory toDomain() {
    return FeeCategory(
      id: id,
      title: title,
      amountUsd: amount_usd,
      note: note,
    );
  }

  factory FeeCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$FeeCategoryDtoFromJson(json);
}
