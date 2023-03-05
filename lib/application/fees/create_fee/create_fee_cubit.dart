import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee/fee_failure.dart';
import 'package:school_management/domain/fee/i_fee_repository.dart';

part 'create_fee_state.dart';
part 'create_fee_cubit.freezed.dart';

@injectable
class CreateFeeCubit extends Cubit<CreateFeeState> {
  final IFeeRepository _repository;

  CreateFeeCubit(this._repository) : super(CreateFeeState.initial());

  Future<void> resetFields() async {
    emit(
      CreateFeeState.initial(),
    );
  }

  Future<void> studentIdChanged(int studentId) async {
    emit(
      state.copyWith(
        studentId: studentId,
        feeFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> feeCategoryIdChanged(int feeCategoryId) async {
    emit(
      state.copyWith(
        feeCategoryId: feeCategoryId,
        feeFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<FeeFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        feeFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createFee(
      studentId: state.studentId,
      categoryId: state.feeCategoryId,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        feeFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
