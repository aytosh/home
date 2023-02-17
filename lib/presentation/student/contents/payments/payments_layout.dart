import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class PaymentsLayout extends StatelessWidget {
  const PaymentsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final widths = {
      0: const FlexColumnWidth(216),
      1: const FlexColumnWidth(216),
      2: const FlexColumnWidth(141),
      3: const FlexColumnWidth(141),
      4: const FlexColumnWidth(226),
      5: const FlexColumnWidth(226),
    };

    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          final payments = state.student.payments;

          return Column(
            children: [
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: const [
                  CustomTableCell("Категория оплаты"),
                  CustomTableCell("Тип оплаты"),
                  CustomTableCell("Сумма"),
                  CustomTableCell("Курс"),
                  CustomTableCell("Платильщик"),
                  CustomTableCell("Дата"),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: payments.length,
                itemBuilder: (_, index) => CustomTableRow(
                  widths: widths,
                  children: [
                    CustomTableCell(payments[index].paymentCategory),
                    CustomTableCell(payments[index].paymentType),
                    CustomTableCell(payments[index].amountUsd.toString()),
                    CustomTableCell(payments[index].rate.toString()),
                    CustomTableCell(payments[index].whoPaid),
                    CustomTableCell(payments[index].date),
                  ],
                ),
              )
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
