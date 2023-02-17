import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student_cards/student_cards_cubit.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/student_card_filter.dart';

class StudentCardCountText extends StatelessWidget {
  final String? label;
  final List<StudentCardFilter> studentCardFilters;

  const StudentCardCountText({
    super.key,
    this.label,
    required this.studentCardFilters,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentCardsCubit, StudentCardsState>(
      builder: (_, state) => state.maybeWhen(
        loadSuccess: (studentCards, _) => Row(
          children: [
            Text(
              "${label ?? "Label"}: ${_getCount(studentCards)}",
              style: kCountTextStyle,
            ),
            const SizedBox(width: 4),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  int _getCount(List<StudentCard> studentCards) {
    int count = 0;

    if (studentCardFilters.isNotEmpty) {
      for (final studentCardFilter in studentCardFilters) {
        switch (studentCardFilter.name) {
          case "status":
            count += studentCards
                .where(
                  (studentCard) =>
                      studentCard.status == studentCardFilter.value,
                )
                .length;
            break;
          default:
            break;
        }
      }

      return count;
    }

    return studentCards.length;
  }
}
