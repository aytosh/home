import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';

class CustomCheckbox extends HookWidget {
  final Function(bool)? onTap;

  const CustomCheckbox({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);

    return SizedBox.square(
      dimension: 15.88,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 12,
            width: 14,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              border: Border.all(
                width: 0.5,
                color: kSecondaryDarkColor,
              ),
            ),
          ),
          Visibility(
            visible: isChecked.value,
            child: Image.asset(
              Assets.images.checkbox.path,
              height: 15.58,
              width: 15.58,
            ),
          ),
          SizedBox(
            height: 12,
            width: 14,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  isChecked.value = !isChecked.value;
                  onTap?.call(isChecked.value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
