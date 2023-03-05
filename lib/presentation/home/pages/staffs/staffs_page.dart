import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/staff_filter.dart';
import 'package:school_management/presentation/common/widgets/custom_add_button.dart';
import 'package:school_management/presentation/home/pages/staffs/components/staff_layout.dart';
import 'package:school_management/presentation/home/pages/staffs/components/staff_search_bar.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/show_staff_create_dialog.dart';
import 'package:school_management/presentation/home/pages/staffs/widgets/staff_count_text.dart';
import 'package:school_management/presentation/home/widgets/custom_filter_dropdown.dart';

class StaffsPage extends StatelessWidget {
  static const title = "Сотрудники";
  static const label = "Управление сотрудниками";

  const StaffsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final staffFiltersCountTexts = [
      const StaffCountText(
        label: "Выпускник",
        staffFilters: [
          StaffFilter(name: "status", value: "graduated"),
        ],
      ),
      const StaffCountText(
        label: "Отчисленный",
        staffFilters: [
          StaffFilter(name: "status", value: "out-of"),
        ],
      ),
      const StaffCountText(
        label: "Не подтвержденный",
        staffFilters: [
          StaffFilter(name: "status", value: "not-confirmed"),
          StaffFilter(name: "status", value: "pre-registered"),
        ],
      ),
      const StaffCountText(
        label: "Активный",
        staffFilters: [
          StaffFilter(name: "status", value: "active"),
        ],
      ),
      const StaffCountText(
        label: "Итого",
        staffFilters: [],
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 97),
      child: Column(
        children: [
          const SizedBox(height: 59),
          const StaffSearchBar(),
          const SizedBox(height: 32),
          const StaffLayout(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: CustomAddButton(
                  onTap: () {
                    showStaffCreateDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 13,
                      right: 39,
                      left: 20,
                    ),
                    child: Text(
                      "Добавить преподавателя",
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
                    itemCount: staffFiltersCountTexts.length,
                    itemBuilder: (_, index) => staffFiltersCountTexts[index],
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
                        "Работает",
                        "Уволен",
                        "Переведен в др. школу",
                        "Переведен из др. школы",
                      ],
                      title: "Статус",
                      text: "Работает",
                    ),
                    const SizedBox(width: 80),
                    CustomFilterDropdown<String>(
                      onChange: (value) {},
                      items: const [
                        "Преподаватель нач.классов",
                        "Охранник",
                        "Повар",
                        "Уборщица",
                      ],
                      title: "Должность",
                      text: "Преподаватель нач.классов",
                    ),
                    const SizedBox(width: 80),
                    CustomFilterDropdown<String>(
                      onChange: (value) {},
                      items: const [
                        "Активен",
                        "В декретном отпуске",
                      ],
                      title: "Академический статус",
                      text: "Активен",
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
