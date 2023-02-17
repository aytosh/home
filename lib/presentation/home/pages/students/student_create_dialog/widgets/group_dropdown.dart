import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/application/groups/cubit/groups_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class GroupDropdown extends HookWidget {
  final Function(int)? onChanged;

  const GroupDropdown({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final showOptions = useState(false);
    final text = useState("Класс");

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
          child: GroupOptions(
            onTap: (value) {
              onChanged?.call(2);
              text.value = value;
              showOptions.value = false;
            },
          ),
        ),
      ],
    );
  }
}

class GroupOptions extends HookWidget {
  final Function(String)? onTap;

  const GroupOptions({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);

    return Container(
      height: 24,
      width: 52,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: const EdgeInsets.only(top: 5, right: 3.42, left: 11.73),
      decoration: isHovered.value
          ? kCreateDropdownDecoration.copyWith(color: kSecondaryColor)
          : kCreateDropdownDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onHover: (value) {
            isHovered.value = value;
          },
          onTap: () {
            onTap?.call("1A");
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1 A",
                style: isHovered.value
                    ? kCreateDropdownTextStyle.copyWith(
                        fontSize: 10, color: kBackgroundColor)
                    : kCreateDropdownTextStyle.copyWith(fontSize: 10),
              ),
              const SizedBox(width: 3.42),
              Column(
                children: [
                  Image.asset(
                    Assets.images.gradeArrowUp.path,
                    height: 3.33,
                    width: 5,
                  ),
                  const SizedBox(height: 7.85),
                  Image.asset(
                    Assets.images.gradeArrowDown.path,
                    height: 3.33,
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
