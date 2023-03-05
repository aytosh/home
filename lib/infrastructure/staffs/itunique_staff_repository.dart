import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/staff/i_staff_repository.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/domain/staff/staff_failure.dart';
import 'package:school_management/infrastructure/staffs/staff_dto.dart';

@LazySingleton(as: IStaffRepository)
class ITUniqueStaffRepository extends IStaffRepository {
  final Dio _dio;

  ITUniqueStaffRepository(this._dio);

  @override
  Future<Either<StaffFailure, Staff>> getStaff(int id) async {
    try {
      final response = await _dio.get("staff/staff/$id/");

      final result = jsonDecode(response.data);

      final staff = StaffDto.fromJson(result).toDomain();

      return right(staff);
    } on DioError catch (_) {
      return left(const StaffFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StaffFailure.serverError());
    }
  }

  @override
  Future<Either<StaffFailure, List<Staff>>> getStaffs([int? page]) async {
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

      final response = await _dio.get("staff/staff/$params");

      final data = jsonDecode(response.data);
      final results = data["results"];

      debugPrint(results.toString());

      final List<Staff> list = [];
      results.forEach((c) => list.add(StaffDto.fromJson(c).toDomain()));
      return right(list);
    } on DioError catch (_) {
      return left(const StaffFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StaffFailure.serverError());
    }
  }

  @override
  Future<Either<StaffFailure, Unit>> createStaff({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required String status,
    required String position,
    required String nationality,
    required String citizenship,
    required String maritalStatus,
    required String speciality,
  }) async {
    final data = {
      "first_name": firstName,
      "last_name": lastName,
      "patronymic": patronymic,
      "gender": gender,
      "birthday": birthday,
      "status": status,
      "position": "staff",
      "nationality": "test",
      "citizenship": "test",
      "marital_status": "test",
      "specialty": "test",
    };

    try {
      await _dio.post("staff/staff/", data: data);

      return right(unit);
    } on DioError catch (err) {
      debugPrint(err.toString());
      return left(const StaffFailure.unexpected());
    } on SocketException catch (_) {
      return left(const StaffFailure.serverError());
    }
  }
}
