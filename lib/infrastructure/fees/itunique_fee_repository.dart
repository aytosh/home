import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee/fee_failure.dart';
import 'package:school_management/domain/fee/fee.dart';
import 'package:school_management/domain/fee/i_fee_repository.dart';
import 'package:school_management/infrastructure/fees/fee_dto.dart';

@LazySingleton(as: IFeeRepository)
class ITUniqueFeeRepository extends IFeeRepository {
  final Dio _dio;

  ITUniqueFeeRepository(this._dio);

  @override
  Future<Either<FeeFailure, Fee>> getFee(int feeId) async {
    try {
      final response = await _dio.get("fee/fee/$feeId/");

      final result = jsonDecode(response.data);

      final fee = FeeDto.fromJson(result).toDomain();

      return right(fee);
    } on DioError catch (_) {
      return left(const FeeFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeFailure.serverError());
    }
  }

  @override
  Future<Either<FeeFailure, Unit>> createFee({
    required int studentId,
    required int categoryId,
  }) async {
    final data = {
      "student": studentId,
      "fee_category": categoryId,
    };

    try {
      await _dio.post("fee/fee/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const FeeFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeFailure.serverError());
    }
  }
}
