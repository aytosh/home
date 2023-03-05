import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/staffs/get_staff/staff_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/widgets/custom_avatar.dart';

class StaffInformation extends StatelessWidget {
  const StaffInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaffCubit, StaffState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          final student = state.staff;
          return Row(
            children: [
              const SizedBox(width: 83),
              const CustomAvatar(),
              const SizedBox(width: 30),
              Column(
                children: [
                  _getStaffField(student.id.toString()),
                  const SizedBox(height: 15),
                  _getStaffField(student.firstName),
                  const SizedBox(height: 10),
                  _getStaffField(student.lastName),
                  const SizedBox(height: 10),
                  _getStaffField(student.patronymic),
                ],
              ),
              const SizedBox(width: 17),
              Column(
                children: [
                  _getStaffField(student.speciality),
                  const SizedBox(height: 15),
                  _getStaffField(student.gender.title),
                  const SizedBox(height: 10),
                  _getStaffField(student.birthday),
                  const SizedBox(height: 10),
                  _getStaffField(student.status),
                ],
              ),
            ],
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _getStaffField(String text) {
    return Container(
      height: 36,
      alignment: Alignment.centerLeft,
      constraints: const BoxConstraints(maxWidth: 239),
      padding: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: kPrimaryColor),
        color: kBackgroundColor,
      ),
      child: Text(
        text,
        style: kTableContentTextStyle.copyWith(fontSize: 14),
      ),
    );
  }
}
