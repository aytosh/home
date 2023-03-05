import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee_discount/fee_discount.dart';
import 'package:school_management/domain/fee_discount/fee_discount_failure.dart';

abstract class IFeeDiscountRepository {
  Future<Either<FeeDiscountFailure, List<FeeDiscount>>> getFeeDiscounts(
      List<int> feeDiscountIds);

  Future<Either<FeeDiscountFailure, Unit>> createFeeDiscount({
    required int feeId,
    required int categoryId,
  });
}
