import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_failure.freezed.dart';

@freezed
class FeeFailure with _$FeeFailure {
  const factory FeeFailure.unexpected() = _Unexpected;
  const factory FeeFailure.serverError() = _ServerError;
}
