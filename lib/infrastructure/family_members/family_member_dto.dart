// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/family_member/family_member.dart';

part 'family_member_dto.freezed.dart';
part 'family_member_dto.g.dart';

@freezed
class FamilyMemberDto with _$FamilyMemberDto {
  const FamilyMemberDto._();

  const factory FamilyMemberDto({
    required int id,
    required String fullname,
    required String who,
    required String address,
    required String phone_number,
    required String id_passport,
    required String work_place,
    required bool is_responsible,
  }) = _FamilyMemberDto;

  FamilyMember toDomain() {
    return FamilyMember(
      id: id,
      fullName: fullname,
      who: who,
      address: address,
      phoneNumber: phone_number,
      idPassport: id_passport,
      workPlace: work_place,
      isResposible: is_responsible,
    );
  }

  factory FamilyMemberDto.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberDtoFromJson(json);
}
