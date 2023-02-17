import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart';

ScrollController useScrollControllerForLoading(BuildContext context) {
  final ScrollController controller = ScrollController();

  controller.addListener(() {
    final triggerPosition = 0.9 * controller.position.maxScrollExtent;

    if (controller.position.pixels > triggerPosition) {
      context.read<StudentCardsCubit>().fetchMoreStudentCards();
    }
  });

  return controller;
}
