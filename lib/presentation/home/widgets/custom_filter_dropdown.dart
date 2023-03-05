import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CustomFilterDropdown<T> extends StatelessWidget {
  final String? title;
  final String? text;

  final Function(T)? onChange;

  final List<T> items;

  const CustomFilterDropdown({
    super.key,
    this.text,
    this.title,
    required this.onChange,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Title",
          // TODO: See
          style: GoogleFonts.nunito(
            color: kPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 13),
        _CustomFilterDropdown(
          text: text,
          items: items,
          onChange: onChange,
        )
      ],
    );
  }
}

class _CustomFilterDropdown<T> extends StatefulWidget {
  final String? text;

  final Function(T)? onChange;

  final List<T> items;

  const _CustomFilterDropdown({
    super.key,
    this.text,
    required this.items,
    required this.onChange,
  });

  @override
  createState() => _CustomFilterDropdownState<T>();
}

class _CustomFilterDropdownState<T> extends State<_CustomFilterDropdown<T>> {
  final _layerLink = LayerLink();

  late OverlayEntry _overlayEntry;

  bool _isOpen = false;
  int _currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: this._layerLink,
      child: Container(
        height: 31,
        width: 227,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: kFilterDropdownDecoration,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _toggleDropdown();
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 13,
                left: 8,
              ),
              child: Row(
                children: [
                  Text(
                    _currentIndex == -1
                        ? widget.text ?? "Text"
                        : widget.items[_currentIndex].toString(),
                    style: kFilterDropdownText,
                  ),
                  const Spacer(),
                  Image.asset(
                    Assets.images.arrowDown.path,
                    height: 7,
                    width: 9,
                  ),
                ],
              ),
            ),
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
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _toggleDropdown(close: true);
        },
        child: SizedBox.fromSize(
          size: MediaQuery.of(context).size,
          child: Stack(
            children: [
              Positioned(
                top: offset.dy + size.height,
                left: offset.dx,
                width: size.width,
                child: CompositedTransformFollower(
                  offset: Offset(0, size.height),
                  link: this._layerLink,
                  showWhenUnlinked: false,
                  child: ListView(
                    shrinkWrap: true,
                    children: widget.items.asMap().entries.map(
                      (item) {
                        return FilterDropdownOption(
                          onTap: () {
                            setState(() => _currentIndex = item.key);
                            widget.onChange?.call(item.value);
                            _toggleDropdown();
                          },
                          item: item.value,
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown({bool close = false}) async {
    if (_isOpen || close) {
      _overlayEntry.remove();
      setState(() {
        _isOpen = false;
      });
    } else {
      _overlayEntry = this._createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      setState(() {
        _isOpen = true;
      });
    }
  }
}

class FilterDropdownOption<T> extends HookWidget {
  final T item;
  final Function() onTap;

  const FilterDropdownOption({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final selected = useState(false);

    return Container(
      height: 31,
      width: 227,
      decoration: selected.value
          ? kFilterDropdownSelectedOptionDecoration
          : kFilterDropdownOptionDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onHover: (value) {
            selected.value = value;
          },
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              item.toString(),
              style: selected.value
                  ? kFilterDropdownSelectedText
                  : kFilterDropdownText,
            ),
          ),
        ),
      ),
    );
  }
}
