// TODO: Set paddings there

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/application/title/title_cubit.dart';
import 'package:school_management/presentation/common/utils/page_item.dart';
import 'package:school_management/presentation/common/widgets/custom_tab_bar.dart';
import 'package:school_management/presentation/home/widgets/page_item_title.dart';

class HomeBody extends HookWidget {
  final List<PageItem> pageItems;

  const HomeBody({Key? key, required this.pageItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    final titles = pageItems.map((e) => e.title.toUpperCase()).toList();
    final labels = pageItems.map((e) => e.label).toList();
    final pages = pageItems.map((e) => e.page).toList();

    return Column(
      children: [
        const SizedBox(height: 149),
        PageItemTitle(initialTitle: titles[0]),
        const SizedBox(height: 49),
        CustomTabBar(
          onTap: (value) {
            _changePage(pageController, value);
            context.read<TitleCubit>().titleChanged(titles[value]);
          },
          labels: labels,
        ),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: pages,
        ),
      ],
    );
  }

  void _changePage(PageController controller, int index) {
    controller.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.linearToEaseOut,
    );
  }
}
