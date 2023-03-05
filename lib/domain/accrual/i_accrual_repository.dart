import 'package:dartz/dartz.dart';
import 'package:school_management/domain/accrual/accrual.dart';
import 'package:school_management/domain/accrual/accruals_failure.dart';

abstract class IAccrualRepository {
  Future<Either<AccrualFailure, List<Accrual>>> getAccruals(int staffId);

  Future<Either<AccrualFailure, Unit>> createAccrual({
    required int staffId,
    required double amount,
    required String currency,
    required String note,
  });
}
