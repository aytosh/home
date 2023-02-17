import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/student_card_filter.dart';
import 'package:school_management/presentation/common/widgets/custom_add_button.dart';
import 'package:school_management/presentation/home/pages/students/components/student_cards_layout.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/show_student_create_dialog.dart';
import 'package:school_management/presentation/home/pages/students/widgets/student_card_count_text.dart';
import 'package:school_management/presentation/home/widgets/custom_search_field.dart';

class StudentsPage extends StatelessWidget {
  static const title = "Ученики";
  static const label = "Управление учениками";

  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studentCardFiltersCountTexts = [
      const StudentCardCountText(
        label: "Выпускник",
        studentCardFilters: [
          StudentCardFilter(name: "status", value: "graduated"),
        ],
      ),
      const StudentCardCountText(
        label: "Отчисленный",
        studentCardFilters: [
          StudentCardFilter(name: "status", value: "out-of"),
        ],
      ),
      const StudentCardCountText(
        label: "Не подтвержденный",
        studentCardFilters: [
          StudentCardFilter(name: "status", value: "not-confirmed"),
          StudentCardFilter(name: "status", value: "pre-registered"),
        ],
      ),
      const StudentCardCountText(
        label: "Активный",
        studentCardFilters: [
          StudentCardFilter(name: "status", value: "active"),
        ],
      ),
      const StudentCardCountText(
        label: "Итого",
        studentCardFilters: [],
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 58, bottom: 179) +
          const EdgeInsets.symmetric(horizontal: 97),
      child: Column(
        children: [
          Row(
            children: const [
              Flexible(child: CustomSearchField(text: "Поиск")),
            ],
          ),
          const SizedBox(height: 32),
          const StudentCardsLayout(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: CustomAddButton(
                  onTap: () {
                    showStudentCreateDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 13,
                      right: 39,
                      left: 20,
                    ),
                    child: Text(
                      "Добавить ученика",
                      style: kTextLightStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Flexible(
                child: Container(
                  height: 15,
                  margin: const EdgeInsets.only(top: 37),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: studentCardFiltersCountTexts.length,
                    itemBuilder: (_, index) =>
                        studentCardFiltersCountTexts[index],
                    separatorBuilder: (_, __) => const SizedBox(width: 25),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
