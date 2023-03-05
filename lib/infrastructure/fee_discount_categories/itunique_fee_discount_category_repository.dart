import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category_failure.dart';
import 'package:school_management/domain/fee_discount_category/i_fee_discount_category_repository.dart';
import 'package:school_management/infrastructure/fee_discount_categories/fee_discount_category_dto.dart';

@LazySingleton(as: IFeeDiscountCategoryRepository)
class ITUniqueFeeDiscountCategoryRepository
    extends IFeeDiscountCategoryRepository {
  final Dio _dio;

  ITUniqueFeeDiscountCategoryRepository(this._dio);

  @override
  Future<Either<FeeDiscountCategoryFailure, List<FeeDiscountCategory>>>
      getFeeDiscountCategories() async {
    try {
      final response = await _dio.get("fee/discount_category/");

      final results = jsonDecode(response.data);

      final List<FeeDiscountCategory> list = [];
      results.forEach(
        (result) =>
            list.add(FeeDiscountCategoryDto.fromJson(result).toDomain()),
      );
      return right(list);
    } on DioError catch (_) {
      return left(const FeeDiscountCategoryFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeDiscountCategoryFailure.serverError());
    }
  }
}
