import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/student_payments/get_payments/payments_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';
import 'package:school_management/presentation/student/contents/payments/payment_row.dart';

class PaymentsLayout extends StatelessWidget {
  final List<int> paymentIds;

  const PaymentsLayout({super.key, required this.paymentIds});

  @override
  Widget build(BuildContext context) {
    context.read<PaymentsCubit>().getPayments(paymentIds);

    final widths = {
      0: const FlexColumnWidth(216),
      1: const FlexColumnWidth(216),
      2: const FlexColumnWidth(141),
      3: const FlexColumnWidth(141),
      4: const FlexColumnWidth(226),
      5: const FlexColumnWidth(226),
    };

    return BlocBuilder<PaymentsCubit, PaymentsState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => SizedBox(
          height: 614,
          child: Column(
            children: [
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: [
                  getTableHeader("Категория оплаты"),
                  getTableHeader("Тип оплаты"),
                  getTableHeader("Сумма"),
                  getTableHeader("Курс"),
                  getTableHeader("Платильщик"),
                  getTableHeader("Дата"),
                ],
              ),
              state.payments.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.payments.length,
                      itemBuilder: (_, index) => PaymentRow(
                        widths: widths,
                        payment: state.payments[index],
                      ),
                    )
                  : Expanded(
                      child: Center(
                        child: Text(
                          "Нет оплат",
                          style: kNoElementsTextStyle,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
