import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/common/widgets/custom_tab_bar.dart';
import 'package:school_management/presentation/student/student_information.dart';

class StudentBody extends HookWidget {
  final List<ContentItem> contentItems;

  const StudentBody({super.key, required this.contentItems});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    final labels = contentItems.map((e) => e.label).toList();
    final contents = contentItems.map((e) => e.content).toList();

    return Column(
      children: [
        const SizedBox(height: 73),
        Text(
          "Ученики".toUpperCase(),
          style: kItemTitleStyle,
        ),
        const SizedBox(height: 36),
        const StudentInformation(),
        const SizedBox(height: 45),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 65),
          decoration: kBackgroundDecoration,
          child: Column(
            children: [
              const SizedBox(height: 17),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: CustomTabBar(
                  onTap: (value) {
                    _changePage(pageController, value);
                  },
                  labels: labels,
                ),
              ),
              ExpandablePageView(
                physics: const NeverScrollableScrollPhysics(),
                pageSnapping: false,
                controller: pageController,
                children: contents,
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
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
