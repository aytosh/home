import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/students/get_students/students_cubit.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/home/pages/students/components/student_content.dart';
import 'package:school_management/presentation/home/pages/students/components/students_header.dart';
import 'package:school_management/presentation/home/pages/students/hooks/scroll_controller_hook.dart';
import 'package:school_management/presentation/student/student_screen.dart';

class StudentsLayout extends HookWidget {
  const StudentsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollControllerForLoading(context);

    final widths = {
      0: const FlexColumnWidth(169),
      1: const FlexColumnWidth(227),
      2: const FlexColumnWidth(249),
      3: const FlexColumnWidth(136),
      4: const FlexColumnWidth(193),
      5: const FlexColumnWidth(279),
    };

    return BlocBuilder<StudentsCubit, StudentsState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => Container(
          height: 614,
          decoration: kTableDecoration,
          child: Column(
            children: [
              StudentsHeader(widths: widths),
              Expanded(
                child: state.students.isNotEmpty
                    ? SingleChildScrollView(
                        controller: controller,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.students.length + 1,
                          itemBuilder: (_, index) =>
                              index != state.students.length
                                  ? Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          context.pushNamed(
                                            StudentScreen.name,
                                            params: {
                                              "id": state.students[index].id
                                                  .toString()
                                            },
                                          );
                                        },
                                        child: StudentContent(
                                          widths: widths,
                                          student: state.students[index],
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                        ),
                      )
                    : Center(
                        child: Text(
                          "Нет студентов",
                          style: kNoElementsTextStyle,
                        ),
                      ),
              ),
            ],
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
