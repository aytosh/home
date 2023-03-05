import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CustomFormField extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Function(String)? onChanged;

  const CustomFormField({
    super.key,
    this.hintText,
    this.obscureText,
    required this.textInputAction,
    required this.textInputType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: kFormFieldDecoration,
      child: TextFormField(
        autocorrect: false,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.only(top: 22, left: 17),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: kTextGreyLightStyle,
        ),
      ),
    );
  }
}
