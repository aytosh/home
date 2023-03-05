import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee_category/fee_category.dart';
import 'package:school_management/domain/fee_category/fee_category_failure.dart';
import 'package:school_management/domain/fee_category/i_fee_category_repository.dart';
import 'package:school_management/infrastructure/fee_categories/fee_category_dto.dart';

@LazySingleton(as: IFeeCategoryRepository)
class ITUniqueFeeCategoryRepository extends IFeeCategoryRepository {
  final Dio _dio;

  ITUniqueFeeCategoryRepository(this._dio);

  @override
  Future<Either<FeeCategoryFailure, List<FeeCategory>>>
      getFeeCategories() async {
    try {
      final response = await _dio.get("student/fee_category/");

      final results = jsonDecode(response.data);

      final List<FeeCategory> list = [];
      results.forEach((c) => list.add(FeeCategoryDto.fromJson(c).toDomain()));

      return right(list);
    } on DioError catch (_) {
      return left(const FeeCategoryFailure.unexpected());
    } on SocketException catch (_) {
      return left(const FeeCategoryFailure.serverError());
    }
  }
}
