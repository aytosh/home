import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee_category/fee_category.dart';
import 'package:school_management/domain/fee_category/fee_category_failure.dart';

abstract class IFeeCategoryRepository {
  Future<Either<FeeCategoryFailure, List<FeeCategory>>> getFeeCategories();
}
