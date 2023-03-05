import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/family_member_create/family_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/fee_create/fee_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/student_create/student_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/student_create_dialog.dart';

void showStudentCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      final contentItems = [
        const ContentItem(
          label: StudentCreateContent.label,
          content: StudentCreateContent(),
        ),
        const ContentItem(
          label: FamilyMemberCreateContent.label,
          content: FamilyMemberCreateContent(),
        ),
        const ContentItem(
          label: FeeCreateContent.label,
          content: FeeCreateContent(),
        )
      ];

      return Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: StudentCreateDialog(contentItems: contentItems),
      );
    },
  );
}
