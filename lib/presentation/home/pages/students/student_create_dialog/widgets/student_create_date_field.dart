import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class StudentCreateDateField extends HookWidget {
  final String? hintText;
  final Function(String)? onChanged;

  const StudentCreateDateField({super.key, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Container(
      height: 23.95,
      constraints: const BoxConstraints(maxWidth: 239.5),
      decoration: kCreateFormDecoration,
      child: TextFormField(
        readOnly: true,
        controller: controller,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101),
          );

          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

            controller.text = formattedDate;

            onChanged?.call(formattedDate);
          }
        },
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
