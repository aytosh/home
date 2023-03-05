import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class StudentsHeader extends StatelessWidget {
  final Map<int, FlexColumnWidth>? widths;

  const StudentsHeader({super.key, this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      color: kSecondaryColor,
      widths: widths,
      children: [
        getTableHeader("ID"),
        getTableHeader("Имя"),
        getTableHeader("Фамилия"),
        getTableHeader("Класс"),
        getTableHeader("Статус"),
        getTableHeader("Год поступления"),
      ],
    );
  }
}
