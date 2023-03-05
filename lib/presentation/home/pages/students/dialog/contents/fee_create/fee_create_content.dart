import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/create_fee/create_fee_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/widgets/custom_table.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/fee_create/widgets/fee_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/fee_create/widgets/filters_dropdown.dart';
import 'package:school_management/presentation/home/pages/students/dialog/widgets/custom_form_field.dart';

class FeeCreateContent extends StatelessWidget {
  static const label = "Контракт";

  const FeeCreateContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 108),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FeeDropdown(
              onChanged: (value) {
                context.read<CreateFeeCubit>().feeCategoryIdChanged(value);
              },
            ),
            const SizedBox(width: 12.5),
            CustomFormField(
              hintText: "Первичный взнос",
              onChanged: (value) {},
            ),
          ],
        ),
        const SizedBox(height: 54.05),
        CustomTable(
          widths: const {
            0: FlexColumnWidth(351),
            1: FlexColumnWidth(351),
          },
          children: [
            TableRow(
              children: ["Название", "Сумма"]
                  .map(
                    (e) => CustomTableCell(
                      child: Text(
                        e,
                        style: GoogleFonts.nunito(
                          color: kPrimaryColor,
                          fontSize: 11,
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
                      top: 6,
                      right: 45,
                      left: 12,
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
                CustomTableCell(
                  child: TextFormField(
                    onChanged: (value) {},
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
        const SizedBox(height: 112),
      ],
    );
  }
}
