import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/fee_category/fee_category_failure.dart';
import 'package:school_management/domain/fee_discount/fee_discount.dart';
import 'package:school_management/domain/fee_discount/fee_discount_failure.dart';
import 'package:school_management/domain/fee_discount/i_fee_discount_repository.dart';

part 'fee_discounts_state.dart';
part 'fee_discounts_cubit.freezed.dart';

@injectable
class FeeDiscountsCubit extends Cubit<FeeDiscountsState> {
  final IFeeDiscountRepository _repository;

  FeeDiscountsCubit(this._repository)
      : super(const FeeDiscountsState.initial());

  Future<void> getFeeDiscounts(List<int> feeDiscountIds) async {
    emit(const FeeDiscountsState.loadInProgress());

    final failureOrMessages = await _repository.getFeeDiscounts(feeDiscountIds);

    emit(
      failureOrMessages.fold(
        (f) => FeeDiscountsState.loadFailure(f),
        (feeDiscounts) => FeeDiscountsState.loadSuccess(feeDiscounts),
      ),
    );
  }
}
