import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class StaffsHeader extends StatelessWidget {
  final Map<int, FlexColumnWidth>? widths;

  const StaffsHeader({super.key, this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      color: kSecondaryColor,
      widths: widths,
      children: [
        getTableHeader("ID"),
        getTableHeader("Имя"),
        getTableHeader("Фамилия"),
        getTableHeader("Статус"),
        getTableHeader("Основная должность"),
      ],
    );
  }
}
