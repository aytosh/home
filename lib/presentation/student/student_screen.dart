import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';

import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/home/home_screen.dart';
import 'package:school_management/presentation/student/contents/family_members/family_members_content.dart';
import 'package:school_management/presentation/student/contents/fees/fees_content.dart';
import 'package:school_management/presentation/student/contents/payments/payments_content.dart';
import 'package:school_management/presentation/student/student_body.dart';

class StudentScreen extends StatelessWidget {
  static const name = "student";
  static const path = "/student";

  final String id;

  const StudentScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<StudentCubit>().getStudent(id);

    final contentItems = [
      const ContentItem(
        label: FamilyInformationContent.label,
        content: FamilyInformationContent(),
      ),
      const ContentItem(
        label: FeesContent.label,
        content: FeesContent(),
      ),
      const ContentItem(
        label: PaymentsContent.label,
        content: PaymentsContent(),
      ),
    ];

    return Base(
      header: Row(
        children: [
          const SizedBox(width: 35),
          IconButton(
            onPressed: () {
              context.go(HomeScreen.path);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kBackgroundColor,
            ),
          ),
          const Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: StudentBody(contentItems: contentItems),
      ),
    );
  }
}
