import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/student_create/widgets/gender_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/student_create/widgets/group_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/widgets/custom_date_field.dart';
import 'package:school_management/presentation/home/pages/students/dialog/widgets/custom_form_field.dart';

class StudentCreateContent extends StatelessWidget {
  static const label = "Ученик";

  const StudentCreateContent({super.key});

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
                CustomFormField(
                  hintText: "Имя",
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Фамилия",
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Отчество",
                  onChanged: (value) {},
                ),
                const SizedBox(height: 21.05),
                CustomDateField(
                  hintText: "Дата рождения (день/месяц/год)",
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(width: 12.5),
            Column(
              children: [
                GenderDropdown(
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20.05),
                GroupDropdown(
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20.05),
                CustomFormField(
                  hintText: "Год поступления",
                  onChanged: (value) {},
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
