import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/student/contents/family_members/dialog/family_member_create_dialog.dart';

void showDiscountCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return BlocProvider.value(
        value: context.read<CreateFamilyMemberCubit>(),
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const FamilyMemberCreateDialog(),
        ),
      );
    },
  );
}
