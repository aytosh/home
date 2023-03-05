import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/accruals/create_accrual/create_accrual_cubit.dart';
import 'package:school_management/application/accruals/get_accruals/accruals_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/home/home_screen.dart';
import 'package:school_management/presentation/staff/contents/accruals/accruals_content.dart';
import 'package:school_management/presentation/staff/contents/payments/payments_content.dart';
import 'package:school_management/presentation/staff/staff_body.dart';

class StaffScreen extends StatelessWidget {
  static const name = "staff";
  static const path = "/staff";

  const StaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contentItems = [
      ContentItem(
        label: AccrualsContent.label,
        content: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AccrualsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateAccrualCubit>(),
            ),
          ],
          child: const AccrualsContent(),
        ),
      ),
      ContentItem(
        label: PaymentsContent.label,
        content: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AccrualsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateAccrualCubit>(),
            ),
          ],
          child: const PaymentsContent(),
        ),
      ),
    ];

    return Base(
      header: Row(
        children: [
          const SizedBox(width: 35),
          IconButton(
            onPressed: () {
              context.go(HomeScreen.path);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kBackgroundColor,
            ),
          ),
          const Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: StaffBody(contentItems: contentItems),
      ),
    );
  }
}
