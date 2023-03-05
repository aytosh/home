import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/widgets/add_button.dart';
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
          BlocBuilder<StudentCubit, StudentState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) {
                final paymentIds = state.student.paymentIds!;

                // TODO: See

                return PaymentsLayout(paymentIds: paymentIds);
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
