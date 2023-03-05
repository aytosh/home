import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:school_management/presentation/common/constants/colors.dart';

class CustomDateField extends HookWidget {
  final Function(String)? onChanged;

  const CustomDateField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return TextFormField(
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
        contentPadding: EdgeInsets.zero,
        hintText: "Начальная дата (день/месяц/год)",
        hintStyle: GoogleFonts.nunito(
          color: kTextGreyColor,
        ),
        border: InputBorder.none,
      ),
      style: GoogleFonts.nunito(
        color: Colors.black,
      ),
    );
  }
}
