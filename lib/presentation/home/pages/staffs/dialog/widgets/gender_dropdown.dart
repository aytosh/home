import 'package:flutter/material.dart';
import 'package:school_management/domain/common/gender.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class GenderDropdown extends StatefulWidget {
  final Function(String)? onChanged;

  const GenderDropdown({super.key, this.onChanged});

  @override
  createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  late OverlayEntry _overlayEntry;

  String? gender;

  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.95,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      constraints: const BoxConstraints(maxWidth: 239.5),
      decoration: kCreateDropdownDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _toggleDropdown();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.19, left: 7.98),
                child: Text(
                  gender ?? "Пол",
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
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject()! as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _toggleDropdown(close: true);
          },
          child: SizedBox.fromSize(
            size: MediaQuery.of(context).size,
            child: Stack(
              children: [
                Positioned(
                  top: offset.dy,
                  left: offset.dx + size.width + 7.5,
                  child: Container(
                    height: 49.5,
                    width: 81.43,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: kCreateDropdownOptionsDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 23.5,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                gender = Gender.female.title;
                                widget.onChanged?.call(Gender.female.name);
                                _toggleDropdown(close: true);
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 6.79,
                                      left: 7.98,
                                    ),
                                    child: Text(
                                      Gender.female.title,
                                      style: kCreateDropdownOptionTextStyle,
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
                        SizedBox(
                          height: 23,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                gender = Gender.male.title;
                                widget.onChanged?.call(Gender.male.name);
                                _toggleDropdown(close: true);
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5.24,
                                      left: 7.98,
                                    ),
                                    child: Text(
                                      Gender.male.title,
                                      style: kCreateDropdownOptionTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _toggleDropdown({bool close = false}) async {
    if (_isOpen || close) {
      _overlayEntry.remove();
      setState(() {
        _isOpen = false;
      });
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      setState(() {
        _isOpen = true;
      });
    }
  }
}
