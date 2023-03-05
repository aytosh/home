import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee_discount/fee_discount_failure.dart';
import 'package:school_management/domain/fee_discount/fee_discount.dart';
import 'package:school_management/domain/fee_discount/i_fee_discount_repository.dart';
import 'package:school_management/infrastructure/fee_discounts/fee_discount_dto.dart';

@LazySingleton(as: IFeeDiscountRepository)
class ITUniqueFeeDiscountRepository extends IFeeDiscountRepository {
  final Dio _dio;

  ITUniqueFeeDiscountRepository(this._dio);

  @override
  Future<Either<FeeDiscountFailure, List<FeeDiscount>>> getFeeDiscounts(
      List<int> feeDiscountIds) async {
    try {
      final List<FeeDiscount> list = [];

      for (final id in feeDiscountIds) {
        final response = await _dio.get("fee/discount/$id/");

        final result = jsonDecode(response.data);

        final feeDiscount = FeeDiscountDto.fromJson(result).toDomain();

        list.add(feeDiscount);
      }

      return right(list);
    } on DioError catch (_) {
      return left(const FeeDiscountFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeDiscountFailure.serverError());
    }
  }

  @override
  Future<Either<FeeDiscountFailure, Unit>> createFeeDiscount({
    required int feeId,
    required int categoryId,
  }) async {
    final data = {
      "fee": feeId,
      "discount": categoryId,
    };

    try {
      await _dio.post("fee/discount/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const FeeDiscountFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeDiscountFailure.serverError());
    }
  }
}
