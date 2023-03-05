import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/accruals/get_accruals/accruals_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';
import 'package:school_management/presentation/staff/contents/accruals/accrual_row.dart';

class AccrualsLayout extends StatelessWidget {
  const AccrualsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final widths = {
      0: const FlexColumnWidth(85),
      1: const FlexColumnWidth(261),
      2: const FlexColumnWidth(207),
      3: const FlexColumnWidth(150),
      4: const FlexColumnWidth(150),
      5: const FlexColumnWidth(139),
    };

    return BlocBuilder<AccrualsCubit, AccrualsState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => Container(
          height: 614,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: kSecondaryLightColor,
            ),
          ),
          child: Column(
            children: [
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: [
                  getTableHeader("Дата"),
                  getTableHeader("Заметки"),
                  getTableHeader("Валюта"),
                  getTableHeader("Сумма"),
                ],
              ),
              state.accruals.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.accruals.length,
                      itemBuilder: (_, index) => AccrualRow(
                        widths: widths,
                        accrual: state.accruals[index],
                      ),
                    )
                  : Expanded(
                      child: Center(
                        child: Text(
                          "Нет начислений",
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
