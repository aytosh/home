part of 'fee_discounts_cubit.dart';

@freezed
class FeeDiscountsState with _$FeeDiscountsState {
  const factory FeeDiscountsState.initial() = _Initial;
  const factory FeeDiscountsState.loadInProgress() = _LoadInProgress;
  const factory FeeDiscountsState.loadSuccess(
      List<FeeDiscount> feeDiscounts) = _LoadSuccess;
  const factory FeeDiscountsState.loadFailure(
      FeeDiscountFailure feeDiscountFailure) = _LoadFailure;
}
