import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/student_filter.dart';
import 'package:school_management/presentation/common/widgets/custom_add_button.dart';
import 'package:school_management/presentation/home/pages/students/components/students_layout.dart';
import 'package:school_management/presentation/home/pages/students/components/student_search_bar.dart';
import 'package:school_management/presentation/home/pages/students/dialog/show_student_create_dialog.dart';
import 'package:school_management/presentation/home/pages/students/widgets/student_count_text.dart';
import 'package:school_management/presentation/home/widgets/custom_filter_dropdown.dart';

class StudentsPage extends StatelessWidget {
  static const title = "Ученики";
  static const label = "Управление учениками";

  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studentFiltersCountTexts = [
      const StudentCountText(
        label: "Выпускник",
        studentFilters: [
          StudentFilter(name: "status", value: "graduated"),
        ],
      ),
      const StudentCountText(
        label: "Отчисленный",
        studentFilters: [
          StudentFilter(name: "status", value: "out-of"),
        ],
      ),
      const StudentCountText(
        label: "Не подтвержденный",
        studentFilters: [
          StudentFilter(name: "status", value: "not-confirmed"),
          StudentFilter(name: "status", value: "pre-registered"),
        ],
      ),
      const StudentCountText(
        label: "Активный",
        studentFilters: [
          StudentFilter(name: "status", value: "active"),
        ],
      ),
      const StudentCountText(
        label: "Итого",
        studentFilters: [],
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 97),
      child: Column(
        children: [
          const SizedBox(height: 59),
          const StudentSearchBar(),
          const SizedBox(height: 32),
          const StudentsLayout(),
          Row(
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
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 37),
                child: SizedBox(
                  height: 15,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: studentFiltersCountTexts.length,
                    itemBuilder: (_, index) => studentFiltersCountTexts[index],
                    separatorBuilder: (_, __) => const SizedBox(width: 25),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 44),
                child: Row(
                  children: [
                    CustomFilterDropdown<String>(
                      onChange: (value) {},
                      items: const [
                        "Активный",
                        "Отчисленный",
                        "Не подтвержденный",
                      ],
                      title: "Академический статус",
                      text: "Активный",
                    ),
                    const SizedBox(width: 80),
                    CustomFilterDropdown<String>(
                      onChange: (value) {},
                      items: const [
                        "1-А",
                        "1-А",
                        "1-А",
                        "1-А",
                        "1-А",
                        "1-А",
                      ],
                      title: "Класс",
                      text: "Все классы",
                    ),
                    const SizedBox(width: 80),
                    CustomFilterDropdown<String>(
                      onChange: (value) {},
                      items: const [
                        "Женский",
                        "Мужской",
                      ],
                      title: "Пол",
                      text: "Женский",
                    ),
                  ],
                ),
              ),
              const Spacer(),
              //TODO: See
              Padding(
                padding: const EdgeInsets.only(top: 102),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 37,
                        width: 151,
                        child: Center(
                          child: Text(
                            "Показать",
                            style: GoogleFonts.nunito(
                              color: kTextLightColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 77),
            ],
          ),
          const SizedBox(height: 280),
        ],
      ),
    );
  }
}
