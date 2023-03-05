import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_students/students_cubit.dart';

ScrollController useScrollControllerForLoading(BuildContext context) {
  final ScrollController controller = ScrollController();

  controller.addListener(() {
    final triggerPosition = 0.9 * controller.position.maxScrollExtent;

    if (controller.position.pixels > triggerPosition) {
      context.read<StudentsCubit>().fetchMoreStudents();
    }
  });

  return controller;
}
