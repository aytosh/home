import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/application/page_item_title/page_item_title_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/auth/login/login_screen.dart';
import 'package:school_management/presentation/common/utils/page_item.dart';
import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/home/home_body.dart';
import 'package:school_management/presentation/home/home_header.dart';
import 'package:school_management/presentation/home/pages/staff/staff_page.dart';
import 'package:school_management/presentation/home/pages/students/students_page.dart';

class HomeScreen extends StatelessWidget {
  static const path = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageItems = [
      PageItem(
        title: StudentsPage.title,
        label: StudentsPage.label,
        page: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<StudentCardsCubit>()..getStudentCards(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateStudentCubit>(),
            ),
          ],
          child: const StudentsPage(),
        ),
      ),
      const PageItem(
        title: StaffPage.title,
        label: StaffPage.label,
        page: StaffPage(),
      )
    ];

    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => context.pushReplacement(LoginScreen.path),
          orElse: () {},
        );
      },
      child: Base(
        header: const HomeHeader(),
        body: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => getIt<PageItemTitleCubit>(),
            child: HomeBody(pageItems: pageItems),
          ),
        ),
      ),
    );
  }
}
