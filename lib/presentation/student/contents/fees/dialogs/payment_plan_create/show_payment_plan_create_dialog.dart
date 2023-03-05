import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/fees/get_fee/fee_cubit.dart';
import 'package:school_management/application/student_payment_plans/create_payment_plan/create_payment_plan_cubit.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/payment_plan_create/payment_plan_create_dialog.dart';

void showPaymentPlanCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<CreatePaymentPlanCubit>(),
          ),
          BlocProvider.value(
            value: context.read<StudentCubit>(),
          ),
          BlocProvider.value(
            value: context.read<FeeCubit>(),
          ),
        ],
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: BlocBuilder<StudentCubit, StudentState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) {
                final studentId = state.student.id;

                return BlocBuilder<FeeCubit, FeeState>(
                  builder: (_, state) => state.maybeMap(
                    loadSuccess: (state) {
                      final feeId = state.fee.id;

                      return PaymentPlanCreateDialog(
                        studentId: studentId,
                        feeId: feeId,
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      );
    },
  );
}
