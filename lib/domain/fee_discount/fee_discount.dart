import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_discount.freezed.dart';

@freezed
class FeeDiscount with _$FeeDiscount {
  const FeeDiscount._();

  const factory FeeDiscount({
    required int id,
    required int feeId,
    required int categoryId,
  }) = _FeeDiscount;
}
