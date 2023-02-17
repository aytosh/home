import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final Function()? onTap;

  const CustomButton({super.key, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      decoration: kLoginButtonDecoration,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              onTap?.call();
            },
            child: child,
          ),
        ),
      ),
    );
  }
}
