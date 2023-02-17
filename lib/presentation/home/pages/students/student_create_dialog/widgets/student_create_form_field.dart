import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class StudentCreateFormField extends StatelessWidget {
  final String? hintText;
  final Function(String)? onChanged;

  const StudentCreateFormField({super.key, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.95,
      constraints: const BoxConstraints(maxWidth: 239.5),
      decoration: kCreateFormDecoration,
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.only(top: 8.5, left: 7.98),
          hintText: hintText ?? "Text",
          hintStyle: kCreateFormHintStyle,
          border: InputBorder.none,
        ),
        style: kCreateFormHintStyle.copyWith(color: kTextColor),
      ),
    );
  }
}
