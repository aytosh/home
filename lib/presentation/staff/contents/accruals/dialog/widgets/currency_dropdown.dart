import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class CurrencyDropdown extends StatefulWidget {
  final Function(String)? onChanged;

  const CurrencyDropdown({super.key, this.onChanged});

  @override
  createState() => _CurrencyDropdownState();
}

class _CurrencyDropdownState extends State<CurrencyDropdown> {
  final currencies = [
    {
      "title": "SOM",
      "slug": "som",
    },
    {
      "title": "USD",
      "slug": "usd",
    },
  ];

  late OverlayEntry _overlayEntry;

  String? currency;

  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      constraints: const BoxConstraints(maxWidth: 239.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: kShadowDefaultOffset,
            blurRadius: 20,
            color: kShadowLightColor,
          ),
        ],
      ),
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
                padding: const EdgeInsets.only(top: 4, left: 7.98),
                child: Text(
                  currency ?? "Фильтр",
                  style: GoogleFonts.nunito(
                    color: kPrimaryColor,
                  ),
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
                  top: offset.dy + size.height,
                  left: offset.dx + size.width,
                  child: Container(
                    width: 78,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final c in currencies)
                          FilterDropdownOption(
                            title: c["title"]!,
                            slug: c["slug"]!,
                            onTap: (value) {
                              currency = c["title"]!;
                              widget.onChanged?.call(value);
                              _toggleDropdown(close: true);
                            },
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

class FilterDropdownOption extends HookWidget {
  final String title;
  final String slug;
  final Function(String) onTap;

  const FilterDropdownOption({
    super.key,
    required this.title,
    required this.slug,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final selected = useState(false);

    return Container(
      height: 34,
      width: 78,
      color: selected.value ? kPrimaryColor : kBackgroundColor,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onHover: (value) {
            selected.value = value;
          },
          onTap: () {
            onTap(slug);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              title,
              style: selected.value
                  ? GoogleFonts.nunito(color: kBackgroundColor)
                  : GoogleFonts.nunito(color: kTextGreyColor),
            ),
          ),
        ),
      ),
    );
  }
}
