import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_failure.freezed.dart';

@freezed
class SessionFailure with _$SessionFailure {
  const factory SessionFailure.unexpected() = _Unexpected;
  const factory SessionFailure.serverError() = _ServerError;
}
