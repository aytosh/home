import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/staffs/get_staffs/staffs_cubit.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/staff_filter.dart';

class StaffCountText extends StatelessWidget {
  final String? label;
  final List<StaffFilter> staffFilters;

  const StaffCountText({
    super.key,
    this.label,
    required this.staffFilters,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaffsCubit, StaffsState>(
      builder: (_, state) => state.maybeWhen(
        loadSuccess: (staffs, _) => Row(
          children: [
            Text(
              "${label ?? "Label"}: ${_getCount(staffs)}",
              style: kCountTextStyle,
            ),
            const SizedBox(width: 4),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  int _getCount(List<Staff> staffs) {
    int count = 0;

    if (staffFilters.isNotEmpty) {
      for (final staffFilter in staffFilters) {
        switch (staffFilter.name) {
          case "status":
            count += staffs
                .where(
                  (staff) => staff.status.toString() == staffFilter.value,
                )
                .length;
            break;
          default:
            break;
        }
      }

      return count;
    }

    return staffs.length;
  }
}
