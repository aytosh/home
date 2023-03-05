import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee/fee.dart';
import 'package:school_management/domain/fee/fee_failure.dart';
import 'package:school_management/domain/fee/i_fee_repository.dart';

part 'fee_state.dart';
part 'fee_cubit.freezed.dart';

@injectable
class FeeCubit extends Cubit<FeeState> {
  final IFeeRepository _repository;

  FeeCubit(this._repository) : super(const FeeState.initial());

  Future<void> getFee(int id) async {
    emit(const FeeState.loadInProgress());
    final failureOrMessages = await _repository.getFee(id);
    emit(
      failureOrMessages.fold(
        (f) => FeeState.loadFailure(f),
        (fee) => FeeState.loadSuccess(fee),
      ),
    );
  }
}
