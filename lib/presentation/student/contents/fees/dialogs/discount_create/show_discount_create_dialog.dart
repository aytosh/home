import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/get_fee/fee_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/discount_create/discount_create_dialog.dart';

void showDiscountCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<CreateFeeDiscountCubit>(),
          ),
          BlocProvider.value(
            value: context.read<FeeCubit>(),
          ),
        ],
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: BlocBuilder<FeeCubit, FeeState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) => DiscountCreateDialog(feeId: state.fee.id),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      );
    },
  );
}
