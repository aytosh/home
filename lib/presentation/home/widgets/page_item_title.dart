import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/application/page_item_title/page_item_title_cubit.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class PageItemTitle extends HookWidget {
  final String? initialTitle;

  const PageItemTitle({super.key, this.initialTitle});

  @override
  Widget build(BuildContext context) {
    final title = useState(initialTitle ?? "Title");

    return BlocListener<PageItemTitleCubit, PageItemTitleState>(
      listener: (context, state) {
        title.value = state.title;
      },
      child: Text(
        title.value,
        style: kPageItemTitleStyle,
      ),
    );
  }
}
