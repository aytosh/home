import 'package:dartz/dartz.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan_failure.dart';

abstract class IPaymentPlanRepository {
  Future<Either<PaymentPlanFailure, List<PaymentPlan>>> getPaymentPlans(
      List<int> paymentPlanIds);

  Future<Either<PaymentPlanFailure, Unit>> createPaymentPlan({
    required String date,
    required double amount,
    required int studentId,
    required int feeId,
  });
}
