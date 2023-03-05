import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/family_member_create/widgets/is_responsible_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/family_member_create/widgets/who_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/widgets/custom_form_field.dart';

class FamilyMemberCreateContent extends StatelessWidget {
  static const label = "Родитель";

  const FamilyMemberCreateContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 108),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Stack(
              children: [
                const CustomAvatar(),
                Positioned(
                  right: 20.58,
                  bottom: 3.58,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          Assets.images.addProfilePictureButton.path,
                          height: 15.83,
                          width: 15.83,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 25),
            Column(
              children: [
                WhoDropdown(
                  onChanged: (value) {
                    context.read<CreateFamilyMemberCubit>().whoChanged(value);
                  },
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Имя",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .firstNameChanged(value);
                  },
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Фамилия",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .lastNameChanged(value);
                  },
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Отчество",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .patronymicChanged(value);
                  },
                ),
                const SizedBox(height: 21.05),
                IsResponsibleDropdown(
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .isResposibleChanged(value);
                  },
                ),
              ],
            ),
            const SizedBox(width: 12.5),
            Column(
              children: [
                CustomFormField(
                  hintText: "Адрес",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .addressChanged(value);
                  },
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Телефон",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .phoneNumberChanged(value);
                  },
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Место работы",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .workPlaceChanged(value);
                  },
                ),
                const SizedBox(height: 21.05),
                CustomFormField(
                  hintText: "Серия и номер паспорта",
                  onChanged: (value) {
                    context
                        .read<CreateFamilyMemberCubit>()
                        .idPassportChanged(value);
                  },
                ),
              ],
            ),
            const Spacer(flex: 3),
          ],
        ),
        const SizedBox(height: 93.05),
      ],
    );
  }
}
