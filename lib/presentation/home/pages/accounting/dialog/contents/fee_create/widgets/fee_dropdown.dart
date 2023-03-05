import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class FeeDropdown extends StatefulWidget {
  final Function(String)? onChanged;

  const FeeDropdown({super.key, this.onChanged});

  @override
  createState() => _FeeDropdownState();
}

class _FeeDropdownState extends State<FeeDropdown> {
  late OverlayEntry _overlayEntry;

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
                  "Контракт",
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
                  top: offset.dy,
                  left: offset.dx,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [],
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
