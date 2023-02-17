import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class GenderDropdown extends HookWidget {
  final Function(String)? onChanged;

  const GenderDropdown({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final text = useState("Пол");
    final showOptions = useState(false);

    return Row(
      children: [
        Container(
          height: 23.95,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          constraints: const BoxConstraints(maxWidth: 239.5),
          decoration: kCreateDropdownDecoration,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                showOptions.value = !showOptions.value;
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.19, left: 7.98),
                    child: Text(
                      text.value,
                      style: kCreateDropdownTextStyle,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 7.96),
                    child: Image.asset(
                      Assets.images.arrowDown.path,
                      height: 5.54,
                      width: 7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 11.5),
        Visibility(
          visible: showOptions.value,
          child: GenderOptions(
            onTap: (value) {
              late String gender;

              switch (value) {
                case "Женский":
                  gender = "female";
                  break;
                case "Мужской":
                  gender = "male";
                  break;
              }

              onChanged?.call(gender);

              text.value = value;
              showOptions.value = false;
            },
          ),
        ),
      ],
    );
  }
}

class GenderOptions extends HookWidget {
  final Function(String)? onTap;

  const GenderOptions({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final womanGenderHovered = useState(false);
    final manGenderHovered = useState(false);

    return Container(
      width: 81.43,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: kCreateDropdownOptionsDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColoredBox(
            color:
                womanGenderHovered.value ? kSecondaryColor : Colors.transparent,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onHover: (value) {
                  womanGenderHovered.value = value;
                },
                onTap: () {
                  onTap?.call("Женский");
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6.79, bottom: 6, left: 7.98),
                      child: Text(
                        "Женский",
                        style: womanGenderHovered.value
                            ? kCreateDropdownTextStyle.copyWith(
                                color: kTextLightColor,
                                fontSize: 10,
                              )
                            : kCreateDropdownTextStyle.copyWith(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            color: kPinkColor,
          ),
          ColoredBox(
            color:
                manGenderHovered.value ? kSecondaryColor : Colors.transparent,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onHover: (value) {
                  manGenderHovered.value = value;
                },
                onTap: () {
                  onTap?.call("Мужской");
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6.79, bottom: 6, left: 7.98),
                      child: Text(
                        "Мужской",
                        style: manGenderHovered.value
                            ? kCreateDropdownTextStyle.copyWith(
                                color: kTextLightColor,
                                fontSize: 10,
                              )
                            : kCreateDropdownTextStyle.copyWith(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
