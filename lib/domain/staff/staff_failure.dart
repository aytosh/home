import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_failure.freezed.dart';

@freezed
class StaffFailure with _$StaffFailure {
  const factory StaffFailure.unexpected() = _Unexpected;
  const factory StaffFailure.serverError() = _ServerError;
}
