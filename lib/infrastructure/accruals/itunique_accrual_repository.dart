import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/accrual/accrual.dart';
import 'package:school_management/domain/accrual/accruals_failure.dart';
import 'package:school_management/domain/accrual/i_accrual_repository.dart';
import 'package:school_management/infrastructure/accruals/accrual_dto.dart';

@LazySingleton(as: IAccrualRepository)
class ITUniqueAccrualRepository extends IAccrualRepository {
  final Dio _dio;

  ITUniqueAccrualRepository(this._dio);

  @override
  Future<Either<AccrualFailure, List<Accrual>>> getAccruals(int staffId) async {
    try {
      final List<Accrual> list = [];

      final response = await _dio.get("finance/accrual/");

      final results = jsonDecode(response.data);

      for (final result in results) {
        final accrualDto = AccrualDto.fromJson(result);

        if (accrualDto.staff == staffId) {
          list.add(accrualDto.toDomain());
        }
      }

      return right(list);
    } on DioError catch (_) {
      return left(const AccrualFailure.unexpected());
    } on SocketException catch (_) {
      return left(const AccrualFailure.serverError());
    }
  }

  @override
  Future<Either<AccrualFailure, Unit>> createAccrual({
    required int staffId,
    required double amount,
    required String currency,
    required String note,
  }) async {
    final data = {
      "amount": amount,
      "currency": currency,
      "note": note,
      "staff": staffId,
    };

    try {
      await _dio.post("finance/accrual/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const AccrualFailure.unexpected());
    } on SocketException catch (_) {
      return left(const AccrualFailure.serverError());
    }
  }
}
