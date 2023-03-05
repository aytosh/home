import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/widgets/add_button.dart';
import 'package:school_management/presentation/student/contents/family_members/dialog/show_family_member_create_dialog.dart';
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
          AddButton(
            onTap: () {
              showFamilyMemberCreateDialog(context);
            },
          ),
          const SizedBox(height: 28),
          BlocBuilder<StudentCubit, StudentState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) {
                final familyMemberIds = state.student.familyMemberIds!;

                // TODO: See
                context
                    .read<CreateFamilyMemberCubit>()
                    .studentIdChanged(state.student.id);

                return FamilyMembersLayout(familyMemberIds: familyMemberIds);
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
