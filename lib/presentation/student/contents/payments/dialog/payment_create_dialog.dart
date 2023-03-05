import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';
import 'package:school_management/presentation/student/contents/family_members/dialog/widget/custom_form_field.dart';
import 'package:school_management/presentation/student/contents/family_members/dialog/widget/is_responsible_dropdown.dart';
import 'package:school_management/presentation/student/contents/family_members/dialog/widget/who_dropdown.dart';

class FamilyDiscountCreateDialog extends StatelessWidget {
  const FamilyDiscountCreateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateFamilyMemberCubit, CreateFamilyMemberState>(
      listener: (_, state) {
        state.familyMemberFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (_) {},
              (_) {
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
                        context
                            .read<CreateFamilyMemberCubit>()
                            .whoChanged(value);
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
            const SizedBox(height: 41.05),
            CustomDialogButton(
              text: "Добавить",
              onTap: () {
                context.read<CreateFamilyMemberCubit>().addButtonPressed();
              },
            ),
            const SizedBox(height: 29),
          ],
        ),
      ),
    );
  }
}
