import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class GroupDropdown extends StatefulWidget {
  final Function(int)? onChanged;

  const GroupDropdown({super.key, this.onChanged});

  @override
  createState() => _GroupDropdownState();
}

class _GroupDropdownState extends State<GroupDropdown> {
  final groups = [
    "1A",
    "1B",
    "1C",
    "1D",
    "2A",
  ];

  late PageController _pageController;

  late OverlayEntry _overlayEntry;

  int _currentIndex = 0;

  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
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
                _toggleDropdown();
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.19, left: 7.98),
                    child: Text(
                      groups[_currentIndex],
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
      ],
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject()! as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    _pageController = PageController(initialPage: _currentIndex);

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
                    height: 24,
                    width: 39,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: kCreateDropdownDecoration,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 8),
                        ExpandablePageView.builder(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _pageController,
                          itemCount: groups.length,
                          itemBuilder: (_, index) => Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                widget.onChanged?.call(_currentIndex);
                                _toggleDropdown(close: true);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text(
                                  groups[index],
                                  style: kCreateDropdownOptionTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const SizedBox(height: 3),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  _pageUp();
                                },
                                child: SizedBox(
                                  height: 6,
                                  width: 6,
                                  child: Image.asset(
                                    Assets.images.gradeArrowUp.path,
                                    height: 3.33,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 7.5),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  _pageDown();
                                },
                                child: SizedBox(
                                  height: 6,
                                  width: 6,
                                  child: Image.asset(
                                    Assets.images.gradeArrowDown.path,
                                    height: 3.33,
                                    width: 5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 6),
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

  void _pageUp() {
    if (_currentIndex - 1 != -1) {
      _currentIndex--;
      _changePage(_currentIndex);
    }
  }

  void _pageDown() {
    if (_currentIndex + 1 < groups.length) {
      _currentIndex++;
      _changePage(_currentIndex);
    }
  }

  void _changePage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
