import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee_category/fee_category.dart';
import 'package:school_management/domain/fee_category/fee_category_failure.dart';
import 'package:school_management/domain/fee_category/i_fee_category_repository.dart';

part 'fee_categories_state.dart';
part 'fee_categories_cubit.freezed.dart';

@injectable
class FeeCategoriesCubit extends Cubit<FeeCategoriesState> {
  final IFeeCategoryRepository _repository;

  FeeCategoriesCubit(this._repository)
      : super(const FeeCategoriesState.initial());

  Future<void> getFeeCategories() async {
    emit(const FeeCategoriesState.loadInProgress());

    final failureOrMessages = await _repository.getFeeCategories();

    emit(
      failureOrMessages.fold(
        (f) => FeeCategoriesState.loadFailure(f),
        (feeCategories) => FeeCategoriesState.loadSuccess(feeCategories),
      ),
    );
  }
}
