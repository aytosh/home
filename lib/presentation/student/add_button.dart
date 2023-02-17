import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_add_button.dart';

class AddButton extends StatelessWidget {
  final Function()? onTap;

  const AddButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CustomAddButton(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 13, right: 15, left: 13),
        child: Text(
          "Добавить запись +",
          style: kTextLightStyle,
        ),
      ),
    );
  }
}
