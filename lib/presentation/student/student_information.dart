import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/get_gender_title.dart';
import 'package:school_management/presentation/common/utils/get_status_title.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          final student = state.student;
          return Row(
            children: [
              const SizedBox(width: 83),
              const CustomAvatar(),
              const SizedBox(width: 30),
              Column(
                children: [
                  _getStudentField(student.studentId),
                  const SizedBox(height: 15),
                  _getStudentField(student.firstName),
                  const SizedBox(height: 10),
                  _getStudentField(student.lastName),
                  const SizedBox(height: 10),
                  _getStudentField(student.patronymic),
                ],
              ),
              const SizedBox(width: 17),
              Column(
                children: [
                  _getStudentField(getGenderTitle(student.gender)),
                  const SizedBox(height: 15),
                  _getStudentField(student.birthday),
                  const SizedBox(height: 10),
                  _getStudentField(student.group.title),
                  const SizedBox(height: 10),
                  _getStudentField(getStatusTitle(student.status)),
                ],
              ),
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _getStudentField(String text) {
    return Container(
      height: 36,
      alignment: Alignment.centerLeft,
      constraints: const BoxConstraints(maxWidth: 239),
      padding: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: kPrimaryColor),
        color: kBackgroundColor,
      ),
      child: Text(
        text,
        style: kTableContentTextStyle.copyWith(fontSize: 14),
      ),
    );
  }
}
