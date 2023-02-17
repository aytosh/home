import 'package:flutter/material.dart';
import 'package:school_management/presentation/student/add_button.dart';
import 'package:school_management/presentation/student/contents/payments/payments_layout.dart';

class PaymentsContent extends StatelessWidget {
  static const label = "Оплата";

  const PaymentsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          AddButton(
            onTap: () {},
          ),
          const SizedBox(height: 28),
          const PaymentsLayout(),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
