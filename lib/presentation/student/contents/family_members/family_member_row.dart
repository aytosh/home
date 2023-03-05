import 'package:flutter/material.dart';
import 'package:school_management/domain/family_member/family_member.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class FamilyMemberRow extends StatelessWidget {
  final FamilyMember familyMember;
  final Map<int, TableColumnWidth>? widths;

  const FamilyMemberRow({super.key, required this.familyMember, this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: [
        getTableContent(familyMember.who),
        getTableContent(familyMember.fullName),
        getTableContent(familyMember.address),
        getTableContent(familyMember.phoneNumber),
        getTableContent(familyMember.workPlace),
        getTableContent(familyMember.idPassport),
        getTableContent(familyMember.isResposible.toString()),
      ],
    );
  }
}
