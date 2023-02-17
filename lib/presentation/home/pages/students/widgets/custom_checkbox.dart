import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/gen/assets.gen.dart';

class CustomCheckbox extends HookWidget {
  final Function(bool)? onTap;

  const CustomCheckbox({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);

    return SizedBox(
      height: 17.84,
      width: 15.88,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 11,
              width: 12,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(width: 0.5),
              ),
            ),
          ),
          Positioned(
            bottom: 2.26,
            child: Visibility(
              visible: isChecked.value,
              child: Image.asset(
                Assets.images.checkbox.path,
                height: 15.58,
                width: 15.58,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: SizedBox(
                height: 11,
                width: 12,
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
            ),
          ),
        ],
      ),
    );
  }
}
