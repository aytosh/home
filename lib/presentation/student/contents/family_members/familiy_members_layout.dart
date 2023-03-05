import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/family_members/get_family_members/family_members_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';
import 'package:school_management/presentation/student/contents/family_members/family_member_row.dart';

class FamilyMembersLayout extends StatelessWidget {
  final List<int> familyMemberIds;

  const FamilyMembersLayout({super.key, required this.familyMemberIds});

  @override
  Widget build(BuildContext context) {
    context.read<FamilyMembersCubit>().getFamilyMembers(familyMemberIds);

    final widths = {
      0: const FlexColumnWidth(150),
      1: const FlexColumnWidth(216),
      2: const FlexColumnWidth(190),
      3: const FlexColumnWidth(136),
      4: const FlexColumnWidth(190),
      5: const FlexColumnWidth(247),
      6: const FlexColumnWidth(160),
    };

    return BlocBuilder<FamilyMembersCubit, FamilyMembersState>(
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
                  getTableHeader("Кем является"),
                  getTableHeader("ФИО"),
                  getTableHeader("Адрес"),
                  getTableHeader("Телефон"),
                  getTableHeader("Место работы"),
                  getTableHeader("Серия и номер паспорта"),
                  getTableHeader("Отвественный"),
                ],
              ),
              state.familyMembers.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.familyMembers.length,
                      itemBuilder: (_, index) => FamilyMemberRow(
                        widths: widths,
                        familyMember: state.familyMembers[index],
                      ),
                    )
                  : Expanded(
                      child: Center(
                        child: Text(
                          "Нет членов семьи",
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
