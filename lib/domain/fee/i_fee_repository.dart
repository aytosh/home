import 'package:dartz/dartz.dart';
import 'package:school_management/domain/fee/fee.dart';
import 'package:school_management/domain/fee/fee_failure.dart';

abstract class IFeeRepository {
  Future<Either<FeeFailure, Fee>> getFee(int feeId);

  Future<Either<FeeFailure, Unit>> createFee({
    required int studentId,
    required int categoryId,
  });
}
