import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/fee_discount_categories/get_fee_discount_categories/fee_discount_categories_cubit.dart';
import 'package:school_management/application/fee_discounts/get_fee_discounts/fee_discounts_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class DiscountsLayout extends StatelessWidget {
  final List<int> feeDiscountIds;

  const DiscountsLayout({super.key, required this.feeDiscountIds});

  @override
  Widget build(BuildContext context) {
    context.read<FeeDiscountsCubit>().getFeeDiscounts(feeDiscountIds);

    final widths = {
      0: const FlexColumnWidth(500),
      1: const FlexColumnWidth(500),
    };

    return BlocBuilder<FeeDiscountsCubit, FeeDiscountsState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (feeDiscountsState) {
          return Column(
            children: [
              Container(
                height: 49,
                alignment: Alignment.centerLeft,
                color: kSecondaryColor,
                child: Row(
                  children: [
                    const SizedBox(width: 11),
                    Text(
                      "Скидки",
                      style: kTextLightStyle,
                    ),
                  ],
                ),
              ),
              CustomTableRow(
                color: kSecondaryColor,
                widths: widths,
                children: [
                  getTableHeader("Название"),
                  getTableHeader("Сумма"),
                ],
              ),
              feeDiscountsState.feeDiscounts.isNotEmpty
                  ? BlocBuilder<FeeDiscountCategoriesCubit,
                      FeeDiscountCategoriesState>(
                      builder: (_, feeDiscountCategoriesState) =>
                          feeDiscountCategoriesState.maybeMap(
                        loadSuccess: (state) => ListView.builder(
                          shrinkWrap: true,
                          itemCount: feeDiscountsState.feeDiscounts.length,
                          itemBuilder: (_, index) {
                            final categoryId = feeDiscountsState
                                .feeDiscounts[index].categoryId;

                            final category = state.feeDiscountCategories
                                .firstWhere(
                                    (element) => element.id == categoryId);

                            return CustomTableRow(
                              widths: widths,
                              children: [
                                CustomTableCell(
                                  child: Text(
                                    category.title,
                                    style: GoogleFonts.nunito(
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                CustomTableCell(
                                  child: Text(
                                    "${category.value}\$",
                                    style: GoogleFonts.nunito(
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        orElse: () => const SizedBox.shrink(),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Нет скидок",
                        style: kNoElementsTextStyle,
                      ),
                    ),
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
