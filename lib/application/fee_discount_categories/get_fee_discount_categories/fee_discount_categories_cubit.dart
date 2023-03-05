import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category.dart';
import 'package:school_management/domain/fee_discount_category/fee_discount_category_failure.dart';
import 'package:school_management/domain/fee_discount_category/i_fee_discount_category_repository.dart';

part 'fee_discount_categories_state.dart';
part 'fee_discount_categories_cubit.freezed.dart';

@injectable
class FeeDiscountCategoriesCubit extends Cubit<FeeDiscountCategoriesState> {
  final IFeeDiscountCategoryRepository _repository;

  FeeDiscountCategoriesCubit(this._repository)
      : super(const FeeDiscountCategoriesState.initial());

  Future<void> getFeeDiscountCategories() async {
    emit(const FeeDiscountCategoriesState.loadInProgress());
    final failureOrMessages = await _repository.getFeeDiscountCategories();
    emit(
      failureOrMessages.fold(
        (f) => FeeDiscountCategoriesState.loadFailure(f),
        (feeDiscountCategories) =>
            FeeDiscountCategoriesState.loadSuccess(feeDiscountCategories),
      ),
    );
  }
}
