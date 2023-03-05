import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student_payment_plan/i_payment_plan_repository.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan.dart';
import 'package:school_management/domain/student_payment_plan/payment_plan_failure.dart';

part 'payment_plans_state.dart';
part 'payment_plans_cubit.freezed.dart';

@injectable
class PaymentPlansCubit extends Cubit<PaymentPlansState> {
  final IPaymentPlanRepository _repository;

  PaymentPlansCubit(this._repository)
      : super(const PaymentPlansState.initial());

  Future<void> getPaymentPlans(List<int> paymentPlanIds) async {
    emit(const PaymentPlansState.loadInProgress());

    final failureOrMessages = await _repository.getPaymentPlans(paymentPlanIds);

    emit(
      failureOrMessages.fold(
        (f) => PaymentPlansState.loadFailure(f),
        (familyMembers) => PaymentPlansState.loadSuccess(familyMembers),
      ),
    );
  }
}
