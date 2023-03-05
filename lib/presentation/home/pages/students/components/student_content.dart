import 'package:flutter/material.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class StudentContent extends StatelessWidget {
  final Student student;
  final Map<int, TableColumnWidth>? widths;

  const StudentContent(
      {super.key, required this.student, required this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: [
        getTableContent(student.studentId),
        getTableContent(student.firstName),
        getTableContent(student.lastName),
        getTableContent(student.group.title),
        getTableContent(student.status.title),
        getTableContent(student.admissionYear),
      ],
    );
  }
}
