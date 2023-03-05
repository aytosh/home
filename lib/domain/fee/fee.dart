import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee.freezed.dart';

@freezed
class Fee with _$Fee {
  const Fee._();

  const factory Fee({
    required int id,
    required double paymentUsd,
    required double paymentUsdLeft,
    required double paid,
    required int feeCategoryId,
    required List<int>? paymentPlanIds,
    required List<int> discountIds,
  }) = _Fee;
}
