import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_member_failure.freezed.dart';

@freezed
class FamilyMemberFailure with _$FamilyMemberFailure {
  const factory FamilyMemberFailure.unexpected() = _Unexpected;
  const factory FamilyMemberFailure.serverError() = _ServerError;
}
