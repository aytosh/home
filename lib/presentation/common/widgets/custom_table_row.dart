import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/borders.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CustomTableRow extends StatelessWidget {
  final Color color;
  final List<Widget> children;
  final Map<int, TableColumnWidth>? widths;

  const CustomTableRow({
    super.key,
    this.color = Colors.white,
    required this.children,
    this.widths,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: kTableBorder,
      columnWidths: widths,
      children: [
        TableRow(
          decoration: BoxDecoration(color: color),
          children: children
              .map(
                (cell) => TableCell(child: cell),
              )
              .toList(),
        ),
      ],
    );
  }
}

class CustomTableCell extends StatelessWidget {
  final String? text;

  const CustomTableCell(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 52),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 19),
      child: Text(
        text ?? "Cell",
        style: kTableContentTextStyle,
      ),
    );
  }
}
