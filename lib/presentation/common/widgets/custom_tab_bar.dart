import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

const kTabMargin = 17.5;

class CustomTabBar extends HookWidget {
  final List<String> labels;
  final Function(int)? onTap;

  const CustomTabBar({super.key, required this.labels, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final selectedTab = useState(0);

    return SizedBox(
      height: 44,
      child: Align(
        alignment: Alignment.center,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: labels.length,
          itemBuilder: (_, index) => Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                selectedTab.value = index;
                onTap?.call(index);
              },
              child: Container(
                margin: _getMargin(index),
                alignment: Alignment.center,
                child: Text(
                  labels[index],
                  style: index == selectedTab.value
                      ? kTabBarLabelStyle.copyWith(
                          shadows: const [
                            Shadow(
                              color: kTextColor,
                              offset: Offset(0, -4),
                            )
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: kSecondaryLightColor,
                          decorationThickness: 6,
                        )
                      : kTabBarUnselectedLabelStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  EdgeInsets _getMargin(int index) {
    if (index == 0) {
      return const EdgeInsets.only(right: kTabMargin);
    }
    if (index == labels.length - 1) {
      return const EdgeInsets.only(left: kTabMargin);
    }
    return const EdgeInsets.symmetric(horizontal: kTabMargin);
  }
}
