import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/staffs/create_staff/create_staff_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/widgets/academic_status_dropdown.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/widgets/custom_date_field.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/widgets/custom_form_field.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/widgets/gender_dropdown.dart';

class StaffCreateDialog extends StatelessWidget {
  const StaffCreateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateStaffCubit, CreateStaffState>(
      listener: (_, state) {
        state.staffFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (_) {},
              (r) {
                context.pop();
              },
            );
          },
        );
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 857),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 71),
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
                      onChanged: (value) {
                        context
                            .read<CreateStaffCubit>()
                            .firstNameChanged(value);
                      },
                    ),
                    const SizedBox(height: 20.05),
                    CustomFormField(
                      hintText: "Фамилия",
                      onChanged: (value) {
                        context.read<CreateStaffCubit>().lastNameChanged(value);
                      },
                    ),
                    const SizedBox(height: 20.05),
                    CustomFormField(
                      hintText: "Отчество",
                      onChanged: (value) {
                        context
                            .read<CreateStaffCubit>()
                            .patrynomicChanged(value);
                      },
                    ),
                  ],
                ),
                const SizedBox(width: 12.5),
                Column(
                  children: [
                    GenderDropdown(
                      onChanged: (value) {
                        context.read<CreateStaffCubit>().genderChanged(value);
                      },
                    ),
                    const SizedBox(height: 20.05),
                    CustomDateField(
                      hintText: "Дата рождения (день/месяц/год)",
                      onChanged: (value) {
                        context.read<CreateStaffCubit>().birthdayChanged(value);
                      },
                    ),
                    const SizedBox(height: 20.05),
                    AcademicStatusDropdown(
                      onChanged: (value) {
                        context.read<CreateStaffCubit>().statusChanged(value);
                      },
                    ),
                  ],
                ),
                const Spacer(flex: 3),
              ],
            ),
            const SizedBox(height: 25.05),
            CustomDialogButton(
              text: "Добавить",
              onTap: () {
                context.read<CreateStaffCubit>().addButtonPressed();
              },
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
