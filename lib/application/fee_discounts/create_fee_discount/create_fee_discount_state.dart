part of 'create_fee_discount_cubit.dart';

@freezed
class CreateFeeDiscountState with _$CreateFeeDiscountState {
  const factory CreateFeeDiscountState({
    required int feeId,
    required int categoryId,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<FeeDiscountFailure, Unit>>
        feeDiscountFailureOrSuccessOption,
  }) = _CreateFeeDiscountState;

  factory CreateFeeDiscountState.initial() => CreateFeeDiscountState(
        feeId: 0,
        categoryId: 0,
        showErrorMessages: false,
        isSubmitting: false,
        feeDiscountFailureOrSuccessOption: none(),
      );
}
