import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_failure.freezed.dart';

@freezed
class GroupFailure with _$GroupFailure {
  const factory GroupFailure.unexpected() = _Unexpected;
  const factory GroupFailure.serverError() = _ServerError;
}
