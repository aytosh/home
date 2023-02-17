import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class PaymentPlanLayout extends StatelessWidget {
  const PaymentPlanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final widths = {
      0: const FlexColumnWidth(82),
      1: const FlexColumnWidth(540),
      2: const FlexColumnWidth(540),
    };

    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          final paymentPlans = [];

          for (final fee in state.student.fees) {
            paymentPlans.addAll(fee.paymentPlans);
          }

          return Column(
            children: [
              Container(
                height: 49,
                alignment: Alignment.centerLeft,
                color: kSecondaryColor,
                child: Row(
                  children: [
                    const SizedBox(width: 11),
                    Text(
                      "План оплат",
                      style: kTextLightStyle,
                    ),
                  ],
                ),
              ),
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: const [
                  SizedBox.shrink(),
                  CustomTableCell("Дата"),
                  CustomTableCell("Сумма"),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: paymentPlans.length,
                itemBuilder: (_, index) => CustomTableRow(
                  widths: widths,
                  children: [
                    const SizedBox.shrink(),
                    CustomTableCell(paymentPlans[index].date),
                    CustomTableCell(paymentPlans[index].amount.toString()),
                  ],
                ),
              ),
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
