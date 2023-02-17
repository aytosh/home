import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/home/pages/students/components/student_card_row.dart';
import 'package:school_management/presentation/home/pages/students/hooks/scroll_controller_hook.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';
import 'package:school_management/presentation/student/student_screen.dart';

class StudentCardsLayout extends HookWidget {
  const StudentCardsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollControllerForLoading(context);

    final widths = {
      0: const FlexColumnWidth(169),
      1: const FlexColumnWidth(227),
      2: const FlexColumnWidth(249),
      3: const FlexColumnWidth(136),
      4: const FlexColumnWidth(193),
      5: const FlexColumnWidth(279),
    };

    return Container(
      decoration: kTableDecoration,
      child: BlocBuilder<StudentCardsCubit, StudentCardsState>(
        builder: (_, state) => state.maybeMap(
          loadSuccess: (state) => Column(
            children: [
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: const [
                  CustomTableCell("ID"),
                  CustomTableCell("Имя"),
                  CustomTableCell("Фамилия"),
                  CustomTableCell("Класс"),
                  CustomTableCell("Статус"),
                  CustomTableCell("Год поступления"),
                ],
              ),
              state.studentCards.isNotEmpty
                  ? SingleChildScrollView(
                      controller: controller,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.studentCards.length + 1,
                        itemBuilder: (_, index) =>
                            index != state.studentCards.length
                                ? Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        context.pushNamed(
                                          StudentScreen.name,
                                          params: {
                                            "id": state.studentCards[index].id
                                                .toString()
                                          },
                                        );
                                      },
                                      child: StudentCardRow(
                                        widths: widths,
                                        studentCard: state.studentCards[index],
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                      ),
                    )
                  : SizedBox(
                      height: 614,
                      child: Center(
                        child: Text(
                          "Нет студентов",
                          style: kNoElementsTextStyle,
                        ),
                      ),
                    ),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
