import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/student_payment_plans/create_payment_plan/create_payment_plan_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';
import 'package:school_management/presentation/common/widgets/custom_table.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/payment_plan_create/widgets/custom_date_field.dart';

class PaymentPlanCreateDialog extends StatelessWidget {
  final int studentId;
  final int feeId;

  const PaymentPlanCreateDialog({
    super.key,
    required this.feeId,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {
    context.read<CreatePaymentPlanCubit>().studentIdChanged(studentId);
    context.read<CreatePaymentPlanCubit>().feeIdChanged(feeId);

    return BlocListener<CreatePaymentPlanCubit, CreatePaymentPlanState>(
      listener: (_, state) {
        state.paymentPlanFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (_) {},
              (_) {
                context.pop();
              },
            );
          },
        );
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 857),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 17),
            Text(
              "План оплат".toUpperCase(),
              style: kDialogTitleStyle,
            ),
            const SizedBox(height: 37),
            CustomTable(
              widths: const {
                0: FlexColumnWidth(351),
                1: FlexColumnWidth(351),
              },
              children: [
                TableRow(
                  children: ["Дата", "Сумма"]
                      .map(
                        (e) => CustomTableCell(
                          child: Text(
                            e,
                            style: GoogleFonts.nunito(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  children: [
                    CustomTableCell(
                      child: CustomDateField(
                        onChanged: (value) {
                          context
                              .read<CreatePaymentPlanCubit>()
                              .dateChanged(value);
                        },
                      ),
                    ),
                    CustomTableCell(
                      child: TextFormField(
                        onChanged: (value) {
                          context
                              .read<CreatePaymentPlanCubit>()
                              .amountChanged(double.parse(value));
                        },
                        cursorColor: kPrimaryColor,
                        cursorHeight: 15,
                        cursorWidth: 1.5,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: 2),
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            CustomDialogButton(
              text: "Добавить",
              onTap: () {
                context.read<CreatePaymentPlanCubit>().addButtonPressed();
              },
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    );
  }
}
