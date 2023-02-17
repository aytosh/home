import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class DiscountsLayout extends StatelessWidget {
  const DiscountsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = {
      0: const FlexColumnWidth(82),
      1: const FlexColumnWidth(325),
      2: const FlexColumnWidth(141),
      3: const FlexColumnWidth(389),
      4: const FlexColumnWidth(226),
    };

    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
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
                      "Скидки",
                      style: kTextLightStyle,
                    ),
                  ],
                ),
              ),
              CustomTableRow(
                color: kSecondaryColor,
                widths: width,
                children: const [
                  SizedBox.shrink(),
                  CustomTableCell("Название"),
                  CustomTableCell("Сумма"),
                  CustomTableCell("Заметка"),
                  CustomTableCell("Документ"),
                ],
              )
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
