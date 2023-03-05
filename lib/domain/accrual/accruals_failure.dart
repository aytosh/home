import 'package:freezed_annotation/freezed_annotation.dart';

part 'accruals_failure.freezed.dart';

@freezed
class AccrualFailure with _$AccrualFailure {
  const factory AccrualFailure.unexpected() = _Unexpected;
  const factory AccrualFailure.serverError() = _ServerError;
}
