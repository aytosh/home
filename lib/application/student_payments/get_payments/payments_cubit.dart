import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student_payment/i_payment_repository.dart';
import 'package:school_management/domain/student_payment/payment.dart';
import 'package:school_management/domain/student_payment/payment_failure.dart';

part 'payments_state.dart';
part 'payments_cubit.freezed.dart';

@injectable
class PaymentsCubit extends Cubit<PaymentsState> {
  final IPaymentRepository _repository;

  PaymentsCubit(this._repository) : super(const PaymentsState.initial());

  Future<void> getPayments(List<int> paymentIds) async {
    emit(const PaymentsState.loadInProgress());

    final failureOrMessages = await _repository.getPayments(paymentIds);

    emit(
      failureOrMessages.fold(
        (f) => PaymentsState.loadFailure(f),
        (payments) => PaymentsState.loadSuccess(payments),
      ),
    );
  }
}
