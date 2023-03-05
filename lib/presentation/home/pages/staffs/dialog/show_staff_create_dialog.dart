import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/staffs/create_staff/create_staff_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/home/pages/staffs/dialog/staff_create_dialog.dart';

void showStaffCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return BlocProvider.value(
        value: context.read<CreateStaffCubit>(),
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const StaffCreateDialog(),
        ),
      );
    },
  );
}
