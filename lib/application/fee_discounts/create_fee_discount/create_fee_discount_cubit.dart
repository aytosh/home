import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee_discount/fee_discount_failure.dart';
import 'package:school_management/domain/fee_discount/i_fee_discount_repository.dart';

part 'create_fee_discount_state.dart';
part 'create_fee_discount_cubit.freezed.dart';

@injectable
class CreateFeeDiscountCubit extends Cubit<CreateFeeDiscountState> {
  final IFeeDiscountRepository _repository;

  CreateFeeDiscountCubit(this._repository)
      : super(CreateFeeDiscountState.initial());

  Future<void> resetFields() async {
    emit(
      CreateFeeDiscountState.initial(),
    );
  }

  Future<void> feeIdChanged(int feeId) async {
    emit(
      state.copyWith(
        feeId: feeId,
        feeDiscountFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> categoryIdChanged(int categoryId) async {
    emit(
      state.copyWith(
        categoryId: categoryId,
        feeDiscountFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<FeeDiscountFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        feeDiscountFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createFeeDiscount(
      feeId: state.feeId,
      categoryId: state.categoryId,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        feeDiscountFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
