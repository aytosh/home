import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_category.freezed.dart';

@freezed
class FeeCategory with _$FeeCategory {
  const FeeCategory._();

  const factory FeeCategory({
    required int id,
    required String title,
    required double amountUsd,
    required String note,
  }) = _FeeCategory;
}
