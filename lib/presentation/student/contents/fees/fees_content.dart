import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/fees/get_fee/fee_cubit.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';
import 'package:school_management/presentation/common/widgets/add_button.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/discount_create/show_discount_create_dialog.dart';
import 'package:school_management/presentation/student/contents/fees/dialogs/payment_plan_create/show_payment_plan_create_dialog.dart';
import 'package:school_management/presentation/student/contents/fees/discounts_layout.dart';
import 'package:school_management/presentation/student/contents/fees/fee_information_row.dart';
import 'package:school_management/presentation/student/contents/fees/payment_plan_layout.dart';
import 'package:school_management/presentation/student/custom_date_field.dart';

class FeesContent extends StatelessWidget {
  static const label = "Контракт";

  const FeesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 59),
          BlocBuilder<StudentCubit, StudentState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FeeInformationRow(feeId: state.student.feeId!),
                ],
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 50),
          AddButton(
            onTap: () {
              showDiscountCreateDialog(context);
            },
          ),
          const SizedBox(height: 35),
          BlocBuilder<FeeCubit, FeeState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) =>
                  DiscountsLayout(feeDiscountIds: state.fee.discountIds),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 46),
          Row(
            children: [
              Container(
                height: 34,
                width: 278,
                padding: const EdgeInsets.only(top: 4, right: 25, left: 10),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: kShadowDefaultOffset,
                      color: kShadowLightColor,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.images.calendar.path,
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomDateField(
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 34,
                width: 34,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: kShadowDefaultOffset,
                      color: kShadowLightColor,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      Assets.images.checked.path,
                      height: 11.63,
                      width: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          AddButton(
            onTap: () {
              showPaymentPlanCreateDialog(context);
            },
          ),
          const SizedBox(height: 35),
          BlocBuilder<FeeCubit, FeeState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) =>
                  PaymentPlanLayout(paymentPlanIds: state.fee.paymentPlanIds!),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
