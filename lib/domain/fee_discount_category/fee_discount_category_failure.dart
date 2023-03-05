import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_discount_category_failure.freezed.dart';

@freezed
class FeeDiscountCategoryFailure with _$FeeDiscountCategoryFailure {
  const factory FeeDiscountCategoryFailure.unexpected() = _Unexpected;
  const factory FeeDiscountCategoryFailure.serverError() = _ServerError;
}
