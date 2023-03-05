import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/family_members/get_family_members/family_members_cubit.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fee_discounts/get_fee_discounts/fee_discounts_cubit.dart';
import 'package:school_management/application/fees/get_fee/fee_cubit.dart';
import 'package:school_management/application/student_payment_plans/create_payment_plan/create_payment_plan_cubit.dart';
import 'package:school_management/application/student_payment_plans/get_payment_plans/payment_plans_cubit.dart';
import 'package:school_management/application/student_payments/get_payments/payments_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/home/home_screen.dart';
import 'package:school_management/presentation/student/contents/family_members/family_members_content.dart';
import 'package:school_management/presentation/student/contents/fees/fees_content.dart';
import 'package:school_management/presentation/student/contents/payments/payments_content.dart';
import 'package:school_management/presentation/student/student_body.dart';

class StudentScreen extends StatelessWidget {
  static const name = "student";
  static const path = "/student";

  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contentItems = [
      ContentItem(
        label: FamilyInformationContent.label,
        content: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<FamilyMembersCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFamilyMemberCubit>(),
            ),
          ],
          child: const FamilyInformationContent(),
        ),
      ),
      ContentItem(
        label: FeesContent.label,
        content: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<FeeCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<FeeDiscountsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<PaymentPlansCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateFeeDiscountCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreatePaymentPlanCubit>(),
            ),
          ],
          child: const FeesContent(),
        ),
      ),
      ContentItem(
        label: PaymentsContent.label,
        content: BlocProvider(
          create: (context) => getIt<PaymentsCubit>(),
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
        child: StudentBody(contentItems: contentItems),
      ),
    );
  }
}
