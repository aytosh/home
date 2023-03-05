import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_add_button.dart';
import 'package:school_management/presentation/home/pages/students/components/students_layout.dart';
import 'package:school_management/presentation/home/pages/students/components/student_search_bar.dart';
import 'package:school_management/presentation/home/pages/students/dialog/show_student_create_dialog.dart';
import 'package:school_management/presentation/home/widgets/custom_filter_dropdown.dart';

class AccountingPage extends StatelessWidget {
  static const title = "Бухгалтерия";
  static const label = "Управление бухгалтерией";

  const AccountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 97),
      child: Column(
        children: [
          const SizedBox(height: 59),
          const StudentSearchBar(),
          const SizedBox(height: 32),
          // const StudentsLayout(),
          Row(
            children: [
              Row(
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
                  const Spacer(),
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
                  const Spacer(),
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
              const SizedBox(width: 78),
            ],
          ),
          const SizedBox(height: 167),
          //TODO: See
          Row(
            children: [
              const Spacer(),
              Container(
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
            ],
          ),
          const SizedBox(height: 103),
        ],
      ),
    );
  }
}
