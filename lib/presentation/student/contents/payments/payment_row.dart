import 'package:flutter/material.dart';
import 'package:school_management/domain/student_payment/payment.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class PaymentRow extends StatelessWidget {
  final Payment payment;
  final Map<int, TableColumnWidth>? widths;

  const PaymentRow({super.key, required this.payment, this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: [
        getTableContent(payment.paymentCategory),
        getTableContent(payment.paymentType),
        getTableContent(payment.amount.toString()),
        getTableContent(payment.rate.toString()),
        getTableContent(payment.whoPaid),
        getTableContent(payment.date),
      ],
    );
  }
}
