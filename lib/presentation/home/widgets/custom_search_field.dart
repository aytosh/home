import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? text;

  const CustomSearchField({
    super.key,
    this.controller,
    this.focusNode,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      constraints: const BoxConstraints(maxWidth: 300),
      decoration: kSearchFieldDecoration,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.only(top: 10, left: 11),
          hintStyle: kTextGreyStyle,
          hintText: text,
          suffixIconConstraints: const BoxConstraints(maxHeight: 25.72),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 5.72, right: 12.83),
            child: Image.asset(Assets.images.search.path),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
