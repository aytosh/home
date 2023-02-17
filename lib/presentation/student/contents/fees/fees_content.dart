import 'package:flutter/material.dart';
import 'package:school_management/presentation/student/add_button.dart';
import 'package:school_management/presentation/student/contents/fees/discounts_layout.dart';
import 'package:school_management/presentation/student/contents/fees/fee_information_row.dart';
import 'package:school_management/presentation/student/contents/fees/payment_plan_layout.dart';

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
          const Align(
            alignment: Alignment.topCenter,
            child: FeeInformationRow(),
          ),
          const SizedBox(height: 50),
          AddButton(
            onTap: () {},
          ),
          const SizedBox(height: 35),
          const DiscountsLayout(),
          const SizedBox(height: 45),
          const SizedBox.shrink(),
          const SizedBox(height: 25),
          AddButton(
            onTap: () {},
          ),
          const SizedBox(height: 35),
          const PaymentPlanLayout(),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
