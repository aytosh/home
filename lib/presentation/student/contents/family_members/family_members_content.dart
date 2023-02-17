import 'package:flutter/material.dart';
import 'package:school_management/presentation/student/add_button.dart';
import 'package:school_management/presentation/student/contents/family_members/familiy_members_layout.dart';

class FamilyInformationContent extends StatelessWidget {
  static const label = "Информация о семье";

  const FamilyInformationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          AddButton(),
          const SizedBox(height: 28),
          const FamilyMembersLayout(),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
