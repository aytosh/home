import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';
import 'package:school_management/presentation/common/widgets/custom_table.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/discount_create/widgets/filters_dropdown.dart';

class DiscountCreateDialog extends StatelessWidget {
  final int feeId;

  const DiscountCreateDialog({super.key, required this.feeId});

  @override
  Widget build(BuildContext context) {
    context.read<CreateFeeDiscountCubit>().feeIdChanged(feeId);

    return BlocListener<CreateFeeDiscountCubit, CreateFeeDiscountState>(
      listener: (_, state) {
        state.feeDiscountFailureOrSuccessOption.fold(
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
              "Скидки".toUpperCase(),
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
                  children: ["Название"]
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
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 16,
                          bottom: 9,
                          left: 16,
                        ),
                        child: FiltersDropdown(
                          onChanged: (value) {
                            context
                                .read<CreateFeeDiscountCubit>()
                                .categoryIdChanged(value);
                          },
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
                context.read<CreateFeeDiscountCubit>().addButtonPressed();
              },
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    );
  }
}
