import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_discount_failure.freezed.dart';

@freezed
class FeeDiscountFailure with _$FeeDiscountFailure {
  const factory FeeDiscountFailure.unexpected() = _Unexpected;
  const factory FeeDiscountFailure.serverError() = _ServerError;
}
