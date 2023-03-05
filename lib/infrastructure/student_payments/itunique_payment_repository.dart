import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student_payment/i_payment_repository.dart';
import 'package:school_management/domain/student_payment/payment.dart';
import 'package:school_management/domain/student_payment/payment_failure.dart';
import 'package:school_management/infrastructure/student_payments/payment_dto.dart';

@LazySingleton(as: IPaymentRepository)
class ITUniqueFamilyMemberRepository extends IPaymentRepository {
  final Dio _dio;

  ITUniqueFamilyMemberRepository(this._dio);

  @override
  Future<Either<PaymentFailure, List<Payment>>> getPayments(
      List<int> paymentIds) async {
    try {
      final List<Payment> list = [];

      for (final id in paymentIds) {
        final response = await _dio.get("student/payment/$id/");

        final result = jsonDecode(response.data);

        final payment = PaymentDto.fromJson(result).toDomain();

        list.add(payment);
      }

      return right(list);
    } on DioError catch (_) {
      return left(const PaymentFailure.unexpected());
    } on SocketException catch (_) {
      return left(const PaymentFailure.serverError());
    }
  }

  @override
  Future<Either<PaymentFailure, Unit>> createPayment() {
    // TODO: Implement method
    throw UnimplementedError();
  }
}
