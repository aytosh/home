import 'package:flutter/material.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/presentation/common/utils/get_status_title.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class StudentCardRow extends StatelessWidget {
  final StudentCard? studentCard;
  final Map<int, TableColumnWidth>? widths;

  const StudentCardRow({super.key, this.studentCard, required this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: studentCard != null
          ? [
              CustomTableCell(studentCard!.studentId),
              CustomTableCell(studentCard!.firstName),
              CustomTableCell(studentCard!.lastName),
              CustomTableCell(studentCard!.group.title),
              CustomTableCell(getStatusTitle(studentCard!.status)),
              CustomTableCell(studentCard!.admissionYear),
            ]
          : [],
    );
  }
}
