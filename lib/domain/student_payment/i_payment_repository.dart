import 'package:dartz/dartz.dart';
import 'package:school_management/domain/student_payment/payment.dart';
import 'package:school_management/domain/student_payment/payment_failure.dart';

abstract class IPaymentRepository {
  Future<Either<PaymentFailure, List<Payment>>> getPayments(
      List<int> paymentIds);

  Future<Either<PaymentFailure, Unit>> createPayment();
}
