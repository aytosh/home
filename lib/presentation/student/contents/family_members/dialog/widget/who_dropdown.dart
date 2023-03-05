import 'package:flutter/material.dart';
import 'package:school_management/domain/family_member/who.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class WhoDropdown extends StatefulWidget {
  final Function(String)? onChanged;

  const WhoDropdown({super.key, this.onChanged});

  @override
  createState() => _WhoDropdownState();
}

class _WhoDropdownState extends State<WhoDropdown> {
  late OverlayEntry _overlayEntry;

  String? who;

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
                  who ?? "Кем является",
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
                  top: offset.dy - 49.5 - 8,
                  left: offset.dx,
                  child: Container(
                    height: 49.5,
                    width: 54,
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
                                who = Who.father.title;
                                widget.onChanged?.call(Who.father.name);
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
                                      Who.father.title,
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
                                who = Who.mother.title;
                                widget.onChanged?.call(Who.mother.name);
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
                                      Who.mother.title,
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
