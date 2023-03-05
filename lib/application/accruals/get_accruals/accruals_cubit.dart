import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/accrual/accrual.dart';
import 'package:school_management/domain/accrual/accruals_failure.dart';
import 'package:school_management/domain/accrual/i_accrual_repository.dart';

part 'accruals_state.dart';
part 'accruals_cubit.freezed.dart';

@injectable
class AccrualsCubit extends Cubit<AccrualsState> {
  final IAccrualRepository _repository;
  AccrualsCubit(this._repository) : super(const AccrualsState.initial());

  Future<void> getAccruals(int staffId) async {
    emit(const AccrualsState.loadInProgress());

    final failureOrMessages = await _repository.getAccruals(staffId);

    emit(
      failureOrMessages.fold(
        (f) => AccrualsState.loadFailure(f),
        (accruals) => AccrualsState.loadSuccess(accruals),
      ),
    );
  }
}
