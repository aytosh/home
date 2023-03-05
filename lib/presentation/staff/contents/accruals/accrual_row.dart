import 'package:flutter/material.dart';
import 'package:school_management/domain/accrual/accrual.dart';
import 'package:school_management/presentation/common/widgets/custom_table_row.dart';

class AccrualRow extends StatelessWidget {
  final Accrual accrual;
  final Map<int, TableColumnWidth>? widths;

  const AccrualRow({super.key, required this.accrual, this.widths});

  @override
  Widget build(BuildContext context) {
    return CustomTableRow(
      widths: widths,
      children: [
        getTableContent(accrual.date),
        getTableContent(accrual.note),
        getTableContent(accrual.currency),
        getTableContent(accrual.amount.toString()),
      ],
    );
  }
}
