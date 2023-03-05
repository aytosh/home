import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/accruals/create_accrual/create_accrual_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';
import 'package:school_management/presentation/common/widgets/custom_table.dart';
import 'package:school_management/presentation/staff/contents/accruals/dialog/widgets/currency_dropdown.dart';

class AccrualCreateDialog extends StatelessWidget {
  final int staffId;

  const AccrualCreateDialog({super.key, required this.staffId});

  @override
  Widget build(BuildContext context) {
    context.read<CreateAccrualCubit>().staffIdChanged(staffId);

    return BlocListener<CreateAccrualCubit, CreateAccrualState>(
      listener: (_, state) {
        state.accrualFailureOrSuccessOption.fold(
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
              "Начисления".toUpperCase(),
              style: kDialogTitleStyle,
            ),
            const SizedBox(height: 37),
            CustomTable(
              widths: const {
                0: FlexColumnWidth(207),
                1: FlexColumnWidth(150),
                2: FlexColumnWidth(150),
                3: FlexColumnWidth(139),
              },
              children: [
                TableRow(
                  children: ["Заметки", "Валюта", "Курс", "Сумма"]
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
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 16,
                          bottom: 9,
                          left: 16,
                        ),
                        child: CurrencyDropdown(
                          onChanged: (value) {},
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
            const SizedBox(height: 24),
            CustomDialogButton(
              text: "Добавить",
              onTap: () {
                context.read<CreateAccrualCubit>().addButtonPressed();
              },
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    );
  }
}
