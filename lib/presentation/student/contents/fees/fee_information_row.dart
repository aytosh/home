import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/fees/get_fee/fee_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class FeeInformationRow extends StatelessWidget {
  final int feeId;

  const FeeInformationRow({super.key, required this.feeId});

  @override
  Widget build(BuildContext context) {
    context.read<FeeCubit>().getFee(feeId);

    return BlocBuilder<FeeCubit, FeeState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          final fee = state.fee;

          return Container(
            height: 31,
            constraints: const BoxConstraints(maxWidth: 744),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kPrimaryColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getFeeInformation("Контракт", fee.paymentUsd),
                _getFeeInformation("К оплате", fee.paymentUsdLeft),
                _getFeeInformation("К плану", 0),
                _getFeeInformation("Сумма плана", 0),
                _getFeeInformation("Разница", 0),
              ],
            ),
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _getFeeInformation(String text, double amount) {
    return Text(
      "$text: $amount\$",
      style: kFeeInformationTextStyle,
    );
  }
}
