import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CustomDialogButton extends StatelessWidget {
  final String? text;
  final Function()? onTap;

  const CustomDialogButton({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 116,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: kCreateButtonDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              text ?? "Button",
              style: kCreateButtonTilteStyle,
            ),
          ),
        ),
      ),
    );
  }
}
