import 'package:flutter/material.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class StaffContent extends StatelessWidget {
  final Staff staff;
  final Map<int, TableColumnWidth>? widths;

  const StaffContent({super.key, required this.staff, required this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: [
        getTableContent(staff.id.toString()),
        getTableContent(staff.firstName),
        getTableContent(staff.lastName),
        getTableContent(staff.status),
        getTableContent(staff.speciality),
      ],
    );
  }
}
