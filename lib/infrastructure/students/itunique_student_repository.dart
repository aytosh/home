import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_failure.dart';
import 'package:school_management/infrastructure/students/student_dto.dart';

@LazySingleton(as: IStudentRepository)
class ITUniqueStudentRepository extends IStudentRepository {
  final Dio _dio;

  ITUniqueStudentRepository(this._dio);

  @override
  Future<Either<StudentFailure, Student>> getStudent(int id) async {
    try {
      final response = await _dio.get("student/student/$id/");

      final result = jsonDecode(response.data);

      final student = StudentDto.fromJson(result).toDomain();

      return right(student);
    } on DioError catch (_) {
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.serverError());
    }
  }

  @override
  Future<Either<StudentFailure, List<Student>>> getStudents([int? page]) async {
    try {
      String params = "";

      // TODO: Use
      // if (search != null) {
      //   if (search.isNotEmpty) {
      //     params += "?search=$search";
      //   }
      // }

      if (page != null) {
        if (page != 0) {
          params += "?page=$page";
        }
      }

      final response = await _dio.get("student/student/$params");

      final data = jsonDecode(response.data);
      final results = data["results"];

      final List<Student> list = [];
      results.forEach((c) => list.add(StudentDto.fromJson(c).toDomain()));
      return right(list);
    } on DioError catch (_) {
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.serverError());
    }
  }

  @override
  Future<Either<StudentFailure, Unit>> createStudent({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required int group,
    required String admissionYear,
  }) async {
    final data = {
      "first_name": firstName,
      "last_name": lastName,
      "patronymic": patronymic,
      "gender": gender,
      "birthday": birthday,
      "status": "Not confirmed",
      "group": group,
      "admission_year": admissionYear,
    };

    try {
      await _dio.post("student/student/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.serverError());
    }
  }

  @override
  Future<Either<StudentFailure, Unit>> createFullStudent({
    required String studentFirstName,
    required String studentLastName,
    required String studentPatronymic,
    required String studentGender,
    required String studentBirthday,
    required int studentGroup,
    required String studentAdmissionYear,
    required String familyMemberFirstName,
    required String familyMemberLastName,
    required String familyMemberPatronymic,
    required String familyMemberWho,
    required String familyMemberAddress,
    required String familyMemberPhoneNumber,
    required String familyMemberIdPassport,
    required String familyMemberWorkPlace,
    required bool familyMemberIsResposible,
    required int feeCategoryId,
    required int discountCategoryId,
  }) async {
    final studentData = {
      "first_name": studentFirstName,
      "last_name": studentLastName,
      "patronymic": studentPatronymic,
      "gender": studentGender,
      "birthday": studentBirthday,
      "status": "Not confirmed",
      "group": studentGroup,
      "admission_year": studentAdmissionYear,
    };

    final familyMemberData = {
      "fullname": familyMemberFirstName,
      "who": familyMemberWho,
      "address": familyMemberAddress,
      "phone_number": familyMemberPhoneNumber,
      "id_passport": familyMemberIdPassport,
      "work_place": familyMemberWorkPlace,
      "is_responsible": familyMemberIsResposible,
    };

    final feeData = {
      "fee_category": feeCategoryId,
    };

    final discountData = {
      "discount": discountCategoryId,
    };

    try {
      final studentResponse =
          await _dio.post("student/student/", data: studentData);
      debugPrint(studentResponse.data.toString());

      final studentResult = jsonDecode(studentResponse.data);
      final studentId = studentResult["id"];

      familyMemberData["student"] = studentId;

      final familyMemberResponse =
          await _dio.post("student/family_members/", data: familyMemberData);
      debugPrint(familyMemberResponse.data.toString());

      feeData["student"] = studentId;

      final feeResponse = await _dio.post("student/fee/", data: feeData);
      debugPrint(feeResponse.data.toString());

      final feeResult = jsonDecode(feeResponse.data);
      final feeId = feeResult["id"];

      discountData["fee"] = feeId;

      final discountResponse =
          await _dio.post("student/discount/", data: discountData);
      debugPrint(discountResponse.data.toString());

      return right(unit);
    } on DioError catch (_) {
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.serverError());
    }
  }
}
