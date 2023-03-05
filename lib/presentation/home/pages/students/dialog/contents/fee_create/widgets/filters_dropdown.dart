import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/fee_discount_categories/get_fee_discount_categories/fee_discount_categories_cubit.dart';

import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';

class FiltersDropdown extends StatefulWidget {
  final Function(int)? onChanged;

  const FiltersDropdown({super.key, this.onChanged});

  @override
  createState() => _FiltersDropdownState();
}

class _FiltersDropdownState extends State<FiltersDropdown> {
  late OverlayEntry _overlayEntry;

  String? value;

  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      constraints: const BoxConstraints(maxWidth: 196),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(7),
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
                padding: const EdgeInsets.only(top: 3, left: 7),
                child: Text(
                  value ?? "Фильтр",
                  style: GoogleFonts.nunito(
                    color: kPrimaryColor,
                    fontSize: 9,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 7, right: 6),
                child: Image.asset(
                  Assets.images.arrowDown.path,
                  height: 5,
                  width: 6,
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
                  top: offset.dy + size.height + 5,
                  left: offset.dx,
                  child: BlocBuilder<FeeDiscountCategoriesCubit,
                      FeeDiscountCategoriesState>(
                    builder: (_, state) => state.maybeMap(
                      loadSuccess: (state) => Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 2),
                              blurRadius: 8,
                              color: kShadowLightColor,
                            ),
                          ],
                        ),
                        child: Column(children: [
                          for (final feeDiscountCategory
                              in state.feeDiscountCategories)
                            FilterDropdownOption(
                              onTap: () {
                                widget.onChanged?.call(feeDiscountCategory.id);
                                value = feeDiscountCategory.title;
                                _toggleDropdown();
                              },
                              item: feeDiscountCategory.title,
                            ),
                        ]),
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
      height: 34,
      width: 300,
      color: selected.value ? kPrimaryColor : kBackgroundColor,
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
                  ? GoogleFonts.nunito(color: kBackgroundColor)
                  : GoogleFonts.nunito(color: kTextGreyColor),
            ),
          ),
        ),
      ),
    );
  }
}
