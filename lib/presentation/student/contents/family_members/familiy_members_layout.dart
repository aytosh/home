import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';
import 'package:school_management/presentation/student/contents/family_members/family_member_row.dart';

class FamilyMembersLayout extends StatelessWidget {
  const FamilyMembersLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final widths = {
      0: const FlexColumnWidth(150),
      1: const FlexColumnWidth(216),
      2: const FlexColumnWidth(190),
      3: const FlexColumnWidth(136),
      4: const FlexColumnWidth(190),
      5: const FlexColumnWidth(247),
      6: const FlexColumnWidth(160),
    };

    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => Column(
          children: [
            CustomTableRow(
              color: kSecondaryColor,
              widths: widths,
              children: const [
                CustomTableCell("Кем является"),
                CustomTableCell("ФИО"),
                CustomTableCell("Адрес"),
                CustomTableCell("Телефон"),
                CustomTableCell("Место работы"),
                CustomTableCell("Серия и номер паспорта"),
                CustomTableCell("Отвественный"),
              ],
            ),
            state.student.familyMembers.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.student.familyMembers.length,
                    itemBuilder: (_, index) => FamilyMemberRow(
                      widths: widths,
                      familyMember: state.student.familyMembers[index],
                    ),
                  )
                : Container(
                    height: 614,
                    decoration: BoxDecoration(
                      border: Border.all(color: kSecondaryLightColor),
                    ),
                    child: Center(
                      child: Text(
                        "Нет членов семьи",
                        style: kNoElementsTextStyle,
                      ),
                    ),
                  ),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
