import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';

class CustomAddButton extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const CustomAddButton({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: kAddButtonDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
