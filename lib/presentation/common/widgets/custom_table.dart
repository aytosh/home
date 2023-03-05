import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';

class CustomTable extends StatelessWidget {
  final List<TableRow> children;
  final Map<int, TableColumnWidth>? widths;

  const CustomTable({super.key, required this.children, this.widths});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.symmetric(horizontal: 77),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Table(
        border: TableBorder.all(
          color: kSecondaryColor,
          width: 0.5,
        ),
        columnWidths: widths,
        children: children,
      ),
    );
  }
}

class CustomTableCell extends StatelessWidget {
  final Widget? child;

  const CustomTableCell({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        height: 31,
        padding: const EdgeInsets.only(
          top: 8,
          left: 12,
        ),
        child: child,
      ),
    );
  }
}
