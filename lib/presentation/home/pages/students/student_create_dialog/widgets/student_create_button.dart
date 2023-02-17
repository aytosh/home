import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class StudentCreateButton extends StatelessWidget {
  final Function()? onTap;

  const StudentCreateButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 106,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: kCreateButtonDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              "Добавить",
              style: kCreateButtonTilteStyle,
            ),
          ),
        ),
      ),
    );
  }
}
