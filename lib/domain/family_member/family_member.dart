import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_member.freezed.dart';

@freezed
class FamilyMember with _$FamilyMember {
  const FamilyMember._();

  const factory FamilyMember({
    required int id,
    required String fullName,
    required String who,
    required String address,
    required String phoneNumber,
    required String idPassport,
    required String workPlace,
    required bool isResposible,
  }) = _FamilyMember;
}
