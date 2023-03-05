import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/fee_categories/get_fee_categories/fee_categories_cubit.dart';
import 'package:school_management/application/fee_discount_categories/get_fee_discount_categories/fee_discount_categories_cubit.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/create_fee/create_fee_cubit.dart';
import 'package:school_management/application/full_students/create_full_student/create_full_student_cubit.dart';
import 'package:school_management/application/groups/get_groups/groups_cubit.dart';
import 'package:school_management/application/sessions/get_sessions/sessions_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/utils/content_item.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/family_member_create/family_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/fee_create/fee_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/contents/student_create/student_create_content.dart';
import 'package:school_management/presentation/home/pages/students/dialog/student_create_dialog.dart';

void showStudentCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      final contentItems = [
        const ContentItem(
          label: StudentCreateContent.label,
          content: StudentCreateContent(),
        ),
        const ContentItem(
          label: FamilyMemberCreateContent.label,
          content: FamilyMemberCreateContent(),
        ),
        const ContentItem(
          label: FeeCreateContent.label,
          content: FeeCreateContent(),
        )
      ];

      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<FeeCategoriesCubit>(),
          ),
          BlocProvider.value(
            value: context.read<FeeDiscountCategoriesCubit>(),
          ),
          BlocProvider.value(
            value: context.read<GroupsCubit>(),
          ),
          BlocProvider.value(
            value: context.read<SessionsCubit>(),
          ),
          BlocProvider.value(
            value: context.read<CreateFullStudentCubit>(),
          ),
          BlocProvider.value(
            value: context.read<CreateStudentCubit>(),
          ),
          BlocProvider.value(
            value: context.read<CreateFamilyMemberCubit>(),
          ),
          BlocProvider.value(
            value: context.read<CreateFeeCubit>(),
          ),
          BlocProvider.value(
            value: context.read<CreateFeeDiscountCubit>(),
          ),
        ],
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: StudentCreateDialog(contentItems: contentItems),
        ),
      );
    },
  );
}
