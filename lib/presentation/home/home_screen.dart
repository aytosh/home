import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/create_fee/create_fee_cubit.dart';
import 'package:school_management/application/full_students/create_full_student/create_full_student_cubit.dart';
import 'package:school_management/application/staffs/create_staff/create_staff_cubit.dart';
import 'package:school_management/application/staffs/get_staffs/staffs_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/application/students/get_students/students_cubit.dart';
import 'package:school_management/application/title/title_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/auth/login/login_screen.dart';
import 'package:school_management/presentation/common/utils/page_item.dart';
import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/home/home_body.dart';
import 'package:school_management/presentation/home/home_header.dart';
import 'package:school_management/presentation/home/pages/accounting/accounting_page.dart';
import 'package:school_management/presentation/home/pages/staffs/staffs_page.dart';
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
              create: (context) => getIt<StudentsCubit>()..getStudents(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFullStudentCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateStudentCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFamilyMemberCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFeeCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFeeDiscountCubit>(),
            ),
          ],
          child: const StudentsPage(),
        ),
      ),
      PageItem(
        title: StaffsPage.title,
        label: StaffsPage.label,
        page: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<StaffsCubit>()..getStaffs(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateStaffCubit>(),
            ),
          ],
          child: const StaffsPage(),
        ),
      ),
      // PageItem(
      //   title: AccountingPage.title,
      //   label: AccountingPage.label,
      //   page: const AccountingPage(),
      // ),
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
            create: (context) => getIt<TitleCubit>(),
            child: HomeBody(pageItems: pageItems),
          ),
        ),
      ),
    );
  }
}
