import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_students/students_cubit.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/student_filter.dart';

class StudentCountText extends StatelessWidget {
  final String? label;
  final List<StudentFilter> studentFilters;

  const StudentCountText({
    super.key,
    this.label,
    required this.studentFilters,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentsCubit, StudentsState>(
      builder: (_, state) => state.maybeWhen(
        loadSuccess: (students, _) => Row(
          children: [
            Text(
              "${label ?? "Label"}: ${_getCount(students)}",
              style: kCountTextStyle,
            ),
            const SizedBox(width: 4),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  int _getCount(List<Student> students) {
    int count = 0;

    if (studentFilters.isNotEmpty) {
      for (final studentFilter in studentFilters) {
        switch (studentFilter.name) {
          case "status":
            count += students
                .where(
                  (student) => student.status.toString() == studentFilter.value,
                )
                .length;
            break;
          default:
            break;
        }
      }

      return count;
    }

    return students.length;
  }
}
