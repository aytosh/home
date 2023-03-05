import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/common/widgets/custom_dialog_button.dart';

class StudentCreateDialog extends HookWidget {
  final List<ContentItem> contentItems;

  const StudentCreateDialog({super.key, required this.contentItems});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final currentContent = useState(0);

    final contents = contentItems.map((e) => e.content).toList();
    final labels = contentItems.map((e) => e.label.toUpperCase()).toList();

    return Container(
      constraints: const BoxConstraints(maxWidth: 857),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 34,
            child: Text(
              labels[currentContent.value],
              style: kDialogTitleStyle,
            ),
          ),
          ExpandablePageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: contents,
          ),
          Positioned(
            bottom: 34,
            child: CustomDialogButton(
              text: currentContent.value == contents.length - 1
                  ? "Добавить"
                  : "Следующее",
              onTap: () {
                if (currentContent.value + 1 != contents.length) {
                  currentContent.value++;
                  _changeContent(controller, currentContent.value);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _changeContent(PageController controller, int index) {
    controller.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.linearToEaseOut,
    );
  }
}
