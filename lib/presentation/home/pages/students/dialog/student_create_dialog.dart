import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/create_fee/create_fee_cubit.dart';
import 'package:school_management/application/full_students/create_full_student/create_full_student_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
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

    return MultiBlocListener(
      listeners: [
        BlocListener<CreateFullStudentCubit, CreateFullStudentState>(
          listener: (_, state) {
            state.fullStudentFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (_) {},
                (_) {
                  context.pop();
                },
              ),
            );
          },
        ),
        BlocListener<CreateStudentCubit, CreateStudentState>(
          listener: (_, state) {
            context
                .read<CreateFullStudentCubit>()
                .createStudentStateChanged(state);
          },
        ),
        BlocListener<CreateFamilyMemberCubit, CreateFamilyMemberState>(
          listener: (_, state) {
            context
                .read<CreateFullStudentCubit>()
                .createFamilyMemberStateChanged(state);
          },
        ),
        BlocListener<CreateFeeCubit, CreateFeeState>(
          listener: (_, state) {
            context.read<CreateFullStudentCubit>().createFeeStateChanged(state);
          },
        ),
        BlocListener<CreateFeeDiscountCubit, CreateFeeDiscountState>(
          listener: (_, state) {
            context
                .read<CreateFullStudentCubit>()
                .createFeeDiscountStateChanged(state);
          },
        ),
      ],
      child: ConstrainedBox(
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
              child: Row(
                children: [
                  if (currentContent.value != 0) ...[
                    CustomDialogButton(
                      text: "Назад",
                      onTap: () {
                        currentContent.value--;
                        _changeContent(controller, currentContent.value);
                      },
                    ),
                    const SizedBox(width: 10),
                  ],
                  CustomDialogButton(
                    text: currentContent.value == contents.length - 1
                        ? "Добавить"
                        : "Следующее",
                    onTap: () {
                      if (currentContent.value != contents.length - 1) {
                        currentContent.value++;
                        _changeContent(controller, currentContent.value);
                      } else {
                        context
                            .read<CreateFullStudentCubit>()
                            .addButtonPressed();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
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
