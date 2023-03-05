import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/accrual/accruals_failure.dart';
import 'package:school_management/domain/accrual/i_accrual_repository.dart';

part 'create_accrual_state.dart';
part 'create_accrual_cubit.freezed.dart';

@injectable
class CreateAccrualCubit extends Cubit<CreateAccrualState> {
  final IAccrualRepository _repository;

  CreateAccrualCubit(this._repository) : super(CreateAccrualState.initial());

  Future<void> resetFields() async {
    emit(CreateAccrualState.initial().copyWith(
      staffId: state.staffId,
    ));
  }

  Future<void> staffIdChanged(int staffId) async {
    emit(
      state.copyWith(
        staffId: staffId,
        accrualFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> amountChanged(double amount) async {
    emit(
      state.copyWith(
        amount: amount,
        accrualFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> currencyChanged(String currency) async {
    emit(
      state.copyWith(
        currency: currency,
        accrualFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> noteChanged(String note) async {
    emit(
      state.copyWith(
        note: note,
        accrualFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<AccrualFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        accrualFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createAccrual(
      staffId: state.staffId,
      amount: state.amount,
      currency: state.currency,
      note: state.note,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        accrualFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
