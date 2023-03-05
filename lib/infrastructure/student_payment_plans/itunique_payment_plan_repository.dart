import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student_payment_plan/i_payment_plan_repository.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan_failure.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan.dart';
import 'package:school_management/infrastructure/student_payment_plans/payment_plan_dto.dart';

@LazySingleton(as: IPaymentPlanRepository)
class ITUniquePaymentPlanRepository extends IPaymentPlanRepository {
  final Dio _dio;

  ITUniquePaymentPlanRepository(this._dio);

  @override
  Future<Either<PaymentPlanFailure, List<PaymentPlan>>> getPaymentPlans(
      List<int> paymentPlanIds) async {
    try {
      final List<PaymentPlan> list = [];

      for (final id in paymentPlanIds) {
        final response = await _dio.get("student/payment_plan/$id/");

        final result = jsonDecode(response.data);

        final familyMember = PaymentPlanDto.fromJson(result).toDomain();

        list.add(familyMember);
      }

      return right(list);
    } on DioError catch (_) {
      return left(const PaymentPlanFailure.unexpected());
    } on SocketException catch (_) {
      return left(const PaymentPlanFailure.serverError());
    }
  }

  @override
  Future<Either<PaymentPlanFailure, Unit>> createPaymentPlan({
    required String date,
    required double amount,
    required int studentId,
    required int feeId,
  }) async {
    final data = {
      "date": date,
      "amount": amount,
      "student": studentId,
      "fee": feeId,
    };

    try {
      await _dio.post("student/payment_plan/", data: data);

      return right(unit);
    } on DioError catch (_) {
      return left(const PaymentPlanFailure.unexpected());
    } on SocketException catch (_) {
      return left(const PaymentPlanFailure.serverError());
    }
  }
}
