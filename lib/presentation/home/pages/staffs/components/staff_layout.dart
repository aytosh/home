import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/staffs/get_staffs/staffs_cubit.dart';
import 'package:school_management/presentation/common/constants/decorations.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/home/pages/staffs/components/staff_content.dart';
import 'package:school_management/presentation/home/pages/staffs/components/staffs_header.dart';
import 'package:school_management/presentation/home/pages/staffs/hooks/scroll_controller_hook.dart';
import 'package:school_management/presentation/staff/staff_screen.dart';

class StaffLayout extends HookWidget {
  const StaffLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollControllerForLoading(context);

    final widths = {
      0: const FlexColumnWidth(169),
      1: const FlexColumnWidth(227),
      2: const FlexColumnWidth(249),
      3: const FlexColumnWidth(193),
      4: const FlexColumnWidth(415),
    };

    return BlocBuilder<StaffsCubit, StaffsState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) => Container(
          height: 614,
          decoration: kTableDecoration,
          child: Column(
            children: [
              StaffsHeader(widths: widths),
              Expanded(
                child: state.staffs.isNotEmpty
                    ? SingleChildScrollView(
                        controller: controller,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.staffs.length + 1,
                          itemBuilder: (_, index) =>
                              index != state.staffs.length
                                  ? Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          context.pushNamed(
                                            StaffScreen.name,
                                            params: {
                                              "id": state.staffs[index].id
                                                  .toString()
                                            },
                                          );
                                        },
                                        child: StaffContent(
                                          widths: widths,
                                          staff: state.staffs[index],
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                        ),
                      )
                    : Center(
                        child: Text(
                          "Нет сотрудников",
                          style: kNoElementsTextStyle,
                        ),
                      ),
              ),
            ],
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
