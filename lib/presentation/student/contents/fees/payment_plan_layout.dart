import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/student_payment_plans/get_payment_plans/payment_plans_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class PaymentPlanLayout extends StatelessWidget {
  final List<int> paymentPlanIds;

  const PaymentPlanLayout({super.key, required this.paymentPlanIds});

  @override
  Widget build(BuildContext context) {
    context.read<PaymentPlansCubit>().getPaymentPlans(paymentPlanIds);

    final widths = {
      0: const FlexColumnWidth(540),
      1: const FlexColumnWidth(540),
    };

    return BlocBuilder<PaymentPlansCubit, PaymentPlansState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => Column(
          children: [
            Container(
              height: 49,
              alignment: Alignment.centerLeft,
              color: kSecondaryColor,
              child: Row(
                children: [
                  const SizedBox(width: 11),
                  Text(
                    "План оплат",
                    style: kTextLightStyle,
                  ),
                ],
              ),
            ),
            CustomTableRow(
              widths: widths,
              children: [
                CustomTableCell(
                  child: Text(
                    "Дата",
                    style: GoogleFonts.nunito(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CustomTableCell(
                  child: Text(
                    "Сумма",
                    style: GoogleFonts.nunito(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            state.paymentPlans.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.paymentPlans.length,
                    itemBuilder: (_, index) => CustomTableRow(
                      widths: widths,
                      children: [
                        CustomTableCell(
                          child: Text(
                            state.paymentPlans[index].date,
                            style: GoogleFonts.nunito(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        CustomTableCell(
                          child: Text(
                            "${state.paymentPlans[index].amount}\$",
                            style: GoogleFonts.nunito(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Нет планов оплат",
                      style: kNoElementsTextStyle,
                    ),
                  ),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
