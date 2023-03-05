import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student_payment_plan/i_payment_plan_repository.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan_failure.dart';

part 'create_payment_plan_state.dart';
part 'create_payment_plan_cubit.freezed.dart';

@injectable
class CreatePaymentPlanCubit extends Cubit<CreatePaymentPlanState> {
  final IPaymentPlanRepository _repository;

  CreatePaymentPlanCubit(this._repository)
      : super(CreatePaymentPlanState.initial());

  Future<void> resetFields() async {
    emit(
      CreatePaymentPlanState.initial(),
    );
  }

  Future<void> studentIdChanged(int studentId) async {
    emit(
      state.copyWith(
        stundetId: studentId,
        paymentPlanFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> feeIdChanged(int feeId) async {
    emit(
      state.copyWith(
        feeId: feeId,
        paymentPlanFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> dateChanged(String date) async {
    emit(
      state.copyWith(
        date: date,
        paymentPlanFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> amountChanged(double amount) async {
    emit(
      state.copyWith(
        amount: amount,
        paymentPlanFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<PaymentPlanFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        paymentPlanFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createPaymentPlan(
      studentId: state.stundetId,
      feeId: state.feeId,
      date: state.date,
      amount: state.amount,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        paymentPlanFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
