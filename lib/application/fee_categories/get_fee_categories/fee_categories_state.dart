part of 'fee_categories_cubit.dart';

@freezed
class FeeCategoriesState with _$FeeCategoriesState {
  const factory FeeCategoriesState.initial() = _Initial;
  const factory FeeCategoriesState.loadInProgress() = _LoadInProgress;
  const factory FeeCategoriesState.loadSuccess(
      List<FeeCategory> feeCategories) = _LoadSuccess;
  const factory FeeCategoriesState.loadFailure(
      FeeCategoryFailure studentFailure) = _LoadFailure;
}
