import 'package:dartz/dartz.dart';
import 'package:school_management/domain/family_member/family_member.dart';
import 'package:school_management/domain/family_member/family_member_failure.dart';

abstract class IFamilyMemberRepository {
  Future<Either<FamilyMemberFailure, List<FamilyMember>>> getFamilyMembers(
      List<int> familyMemberIds);

  Future<Either<FamilyMemberFailure, Unit>> createFamilyMember({
    required int studentId,
    required String firstName,
    required String lastName,
    required String patrynomic,
    required String who,
    required String address,
    required String phoneNumber,
    required String idPassport,
    required String workPlace,
    required bool isResposible,
  });
}
