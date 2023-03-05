import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/application/fee_categories/get_fee_categories/fee_categories_cubit.dart';
import 'package:school_management/domain/fee_category/fee_category.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class FeeDropdown extends StatefulWidget {
  final Function(int)? onChanged;

  const FeeDropdown({super.key, this.onChanged});

  @override
  createState() => _FeeDropdownState();
}

class _FeeDropdownState extends State<FeeDropdown> {
  late OverlayEntry _overlayEntry;

  String? fee;

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
                  fee ?? "Контракт",
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
                  top: offset.dy + size.height + 3,
                  left: offset.dx,
                  child: BlocBuilder<FeeCategoriesCubit, FeeCategoriesState>(
                    builder: (_, state) => state.maybeMap(
                      loadSuccess: (state) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (final feeCategory in state.feeCategories)
                            FilterDropdownOption(
                              feeCategory: feeCategory,
                              onTap: (value) {
                                setState(() => fee = feeCategory.title);
                                widget.onChanged?.call(value);
                                _toggleDropdown();
                              },
                            )
                        ],
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

class FilterDropdownOption extends HookWidget {
  final FeeCategory feeCategory;
  final Function(int) onTap;

  const FilterDropdownOption({
    super.key,
    required this.feeCategory,
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
            onTap(feeCategory.id);
            debugPrint(feeCategory.id.toString());
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              feeCategory.title,
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
