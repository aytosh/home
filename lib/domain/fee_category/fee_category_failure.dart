import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_category_failure.freezed.dart';

@freezed
class FeeCategoryFailure with _$FeeCategoryFailure {
  const factory FeeCategoryFailure.unexpected() = _Unexpected;
  const factory FeeCategoryFailure.serverError() = _ServerError;
}
