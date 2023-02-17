import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/flushbar_creator.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/gender_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/group_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/status_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/student_create_button.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/student_create_date_field.dart';
import 'package:school_management/presentation/home/pages/students/student_create_dialog/widgets/student_create_form_field.dart';

void showStudentCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<CreateStudentCubit>(),
          ),
          BlocProvider.value(
            value: context.read<StudentCardsCubit>(),
          ),
        ],
        child: BlocListener<CreateStudentCubit, CreateStudentState>(
          listener: (context, state) {
            state.studentFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => showError(
                  message: failure.maybeMap(
                    unexpected: (_) => "Invalid Input. Please fill all fields",
                    orElse: () => "Server Error. Try again later",
                  ),
                ),
                (_) {
                  context.read<StudentCardsCubit>().getStudentCards();
                  context.pop();
                },
              ),
            );
          },
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            backgroundColor: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 424,
              constraints: const BoxConstraints(maxWidth: 1040),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 72),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Stack(
                              children: [
                                const CustomAvatar(),
                                Positioned(
                                  right: 20.58,
                                  bottom: 3.58,
                                  child: Image.asset(
                                    Assets.images.addProfilePictureButton.path,
                                    height: 15.83,
                                    width: 15.83,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 31),
                      Padding(
                        padding: const EdgeInsets.only(top: 93),
                        child: Column(
                          children: [
                            StudentCreateFormField(
                              hintText: "Имя",
                              onChanged: (value) => context
                                  .read<CreateStudentCubit>()
                                  .firstNameChanged(value),
                            ),
                            const SizedBox(height: 20.05),
                            StudentCreateFormField(
                              hintText: "Фамилия",
                              onChanged: (value) => context
                                  .read<CreateStudentCubit>()
                                  .lastNameChanged(value),
                            ),
                            const SizedBox(height: 20.05),
                            StudentCreateFormField(
                              hintText: "Отчество",
                              onChanged: (value) => context
                                  .read<CreateStudentCubit>()
                                  .patrynomicChanged(value),
                            ),
                            const SizedBox(height: 21.05),
                            StudentCreateDateField(
                              hintText: "Дата рождения (день/месяц/год)",
                              onChanged: (value) => context
                                  .read<CreateStudentCubit>()
                                  .birthdayChanged(value),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 18.5),
                      Padding(
                        padding: const EdgeInsets.only(top: 79),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 53,
                              width: 332.43,
                              child: GenderDropdown(
                                onChanged: (value) => context
                                    .read<CreateStudentCubit>()
                                    .genderChanged(value),
                              ),
                            ),
                            const SizedBox(height: 14.5),
                            SizedBox(
                              width: 303,
                              child: GroupDropdown(
                                onChanged: (value) => context
                                    .read<CreateStudentCubit>()
                                    .groupChanged(value),
                              ),
                            ),
                            const SizedBox(height: 8.54),
                            SizedBox(
                              height: 53,
                              width: 343.61,
                              child: StatusDropdown(
                                onChanged: (value) => context
                                    .read<CreateStudentCubit>()
                                    .statusChanged(value),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 109.5),
                  Align(
                    alignment: Alignment.topCenter,
                    child: StudentCreateButton(
                      onTap: () =>
                          context.read<CreateStudentCubit>().addButtonPressed(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
