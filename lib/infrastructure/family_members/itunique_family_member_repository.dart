import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/family_member/family_member_failure.dart';
import 'package:school_management/domain/family_member/family_member.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/family_member/i_family_member_repository.dart';
import 'package:school_management/infrastructure/family_members/family_member_dto.dart';

@LazySingleton(as: IFamilyMemberRepository)
class ITUniqueFamilyMemberRepository extends IFamilyMemberRepository {
  final Dio _dio;

  ITUniqueFamilyMemberRepository(this._dio);

  @override
  Future<Either<FamilyMemberFailure, List<FamilyMember>>> getFamilyMembers(
      List<int> familyMemberIds) async {
    try {
      final List<FamilyMember> list = [];

      for (final id in familyMemberIds) {
        final response = await _dio.get("student/family_members/$id/");

        final result = jsonDecode(response.data);

        final familyMember = FamilyMemberDto.fromJson(result).toDomain();

        list.add(familyMember);
      }

      return right(list);
    } on DioError catch (_) {
      return left(const FamilyMemberFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FamilyMemberFailure.serverError());
    }
  }

  @override
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
  }) async {
    final data = {
      "student": studentId,
      "fullname": firstName,
      "who": who,
      "address": address,
      "phone_number": phoneNumber,
      "id_passport": idPassport,
      "work_place": workPlace,
      "is_responsible": isResposible,
    };

    try {
      await _dio.post("student/family_members/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const FamilyMemberFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FamilyMemberFailure.serverError());
    }
  }
}
