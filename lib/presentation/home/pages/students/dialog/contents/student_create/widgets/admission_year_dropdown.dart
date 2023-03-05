import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/sessions/get_sessions/sessions_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class AdmissionYearDropdown extends StatefulWidget {
  final Function(String)? onChanged;

  const AdmissionYearDropdown({super.key, this.onChanged});

  @override
  createState() => _AdmissionYearDropdownState();
}

class _AdmissionYearDropdownState extends State<AdmissionYearDropdown> {
  late PageController _pageController;

  late OverlayEntry _overlayEntry;

  String? title;

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
                      title ?? "Год поступления",
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
                  child: BlocBuilder<SessionsCubit, SessionsState>(
                    builder: (_, state) => state.maybeMap(
                      loadSuccess: (state) => Container(
                        height: 24,
                        width: 90,
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
                              itemCount: state.sessions.length,
                              itemBuilder: (_, index) => Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    widget.onChanged
                                        ?.call(state.sessions[index].slug);
                                    title = state.sessions[index].title;
                                    _toggleDropdown(close: true);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: Text(
                                      state.sessions[index].title,
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
                                      _pageDown(state.sessions.length);
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
                      orElse: () => const SizedBox.shrink(),
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

  void _pageDown(int length) {
    if (_currentIndex + 1 < length) {
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
