import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_discount_category.freezed.dart';

@freezed
class FeeDiscountCategory with _$FeeDiscountCategory {
  const FeeDiscountCategory._();

  const factory FeeDiscountCategory({
    required int id,
    required String title,
    required String type,
    required double value,
  }) = _FeeDiscountCategory;
}
