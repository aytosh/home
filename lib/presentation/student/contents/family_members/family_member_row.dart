import 'package:flutter/material.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class FamilyMemberRow extends StatelessWidget {
  final FamilyMember? familyMember;
  final Map<int, TableColumnWidth>? widths;

  const FamilyMemberRow({super.key, this.familyMember, required this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: familyMember != null
          ? [
              CustomTableCell(familyMember!.who),
              CustomTableCell(familyMember!.fullName),
              CustomTableCell(familyMember!.address),
              CustomTableCell(familyMember!.phoneNumber),
              CustomTableCell(familyMember!.workPlace),
              CustomTableCell(familyMember!.idPassport),
              CustomTableCell(familyMember!.isResposible.toString()),
            ]
          : [],
    );
  }
}
