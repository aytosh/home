import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category_failure.dart';

abstract class IFeeDiscountCategoryRepository {
  Future<Either<FeeDiscountCategoryFailure, List<FeeDiscountCategory>>>
      getFeeDiscountCategories();
}
