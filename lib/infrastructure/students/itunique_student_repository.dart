import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_failure.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/infrastructure/core/field_error.dart';
import 'package:school_management/infrastructure/students/student_card_dto.dart';
import 'package:school_management/infrastructure/students/student_dto.dart';

@LazySingleton(as: IStudentRepository)
class ITUniqueStudentRepository extends IStudentRepository {
  final Dio _dio;

  ITUniqueStudentRepository(this._dio);

  @override
  Future<Either<StudentFailure, Student>> getStudent(String id) async {
    try {
      final response = await _dio.get("student/student/$id/");

      final result = jsonDecode(response.data);

      final student = StudentDto.fromJson(result).toDomain();

      return right(student);
    } on DioError catch (err) {
      if (err.response?.statusCode == 404) {
        final error = FieldError.getError(err.response!);
        if (error.detail == "Invalid page.") {
          return left(StudentFailure.badRequest(error.detail));
        }
      }
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.unexpected());
    }
  }

  @override
  Future<Either<StudentFailure, List<StudentCard>>> getStudentCards(
      {int? page}) async {
    try {
      String params = "";

      if (page != null) {
        params += "?page=$page";
      }

      final response = await _dio.get("student/student/$params");

      final data = jsonDecode(response.data);
      final results = data["results"];

      final List<StudentCard> list = [];
      results.forEach((c) => list.add(StudentCardDto.fromJson(c).toDomain()));
      return right(list);
    } on DioError catch (err) {
      if (err.response?.statusCode == 404) {
        final error = FieldError.getError(err.response!);
        if (error.detail == "Invalid page.") {
          return left(StudentFailure.badRequest(error.detail));
        }
      }
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.unexpected());
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
    required String status,
    required String admissionYear,
  }) async {
    final data = {
      "first_name": firstName,
      "last_name": lastName,
      "patronymic": patronymic,
      "gender": gender,
      "birthday": birthday,
      "status": status,
      "group": group,
      "admission_year": admissionYear,
    };

    try {
      await _dio.post("student/student/", data: data);

      return right(unit);
    } on DioError catch (err) {
      debugPrint(err.toString());
      return left(const StudentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StudentFailure.unexpected());
    }
  }
}
