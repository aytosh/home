part of 'fee_discount_categories_cubit.dart';

@freezed
class FeeDiscountCategoriesState with _$FeeDiscountCategoriesState {
  const factory FeeDiscountCategoriesState.initial() = _Initial;
  const factory FeeDiscountCategoriesState.loadInProgress() = _LoadInProgress;
  const factory FeeDiscountCategoriesState.loadSuccess(
      List<FeeDiscountCategory> feeDiscountCategories) = _LoadSuccess;
  const factory FeeDiscountCategoriesState.loadFailure(
      FeeDiscountCategoryFailure feeDiscountCategoryFailure) = _LoadFailure;
}
