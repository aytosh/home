// TODO: Complete

import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/home/widgets/custom_search_field.dart';

class StaffSearchBar extends StatelessWidget {
  const StaffSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final fruits = [
      "a",
      "ab",
      "abc",
      "abcd",
      "abcde",
      "abcdef",
      "abcdefg",
      "abcdefgh",
      "abcdefghi",
      "abcdefghih",
      "abcdefghihk",
      "abcdefghihkl",
      "abcdefghihklm",
      "abcdefghihklmn",
      "abcdefghihklmno",
      "abcdefghihklmnop",
    ];
    return Autocomplete(
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return CustomSearchField(
          text: "Поиск",
          focusNode: focusNode,
          controller: textEditingController,
        );
      },
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return fruits.where((String option) {
          return option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      optionsViewBuilder: (context, onSelected, options) {
        return Align(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 300, maxHeight: 300),
              decoration: kSearchOptionsDecoration,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options.elementAt(index);

                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        onSelected(option);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 6,
                        ),
                        child: Text(
                          option,
                          style: kSearchOptionTextStyle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
