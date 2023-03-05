import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';

class CustomDateField extends HookWidget {
  final Function(String)? onChanged;

  const CustomDateField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Container(
      height: 23.95,
      constraints: const BoxConstraints(maxWidth: 239.5),
      decoration: kCreateFormDecoration,
      child: TextFormField(
        cursorColor: kPrimaryColor,
        cursorHeight: 15,
        cursorWidth: 1.5,
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
        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.only(top: 2),
          border: InputBorder.none,
        ),
        style: GoogleFonts.nunito(
          fontSize: 12,
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
