import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/styles.dart';

class FeeInformationRow extends StatelessWidget {
  const FeeInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentCubit, StudentState>(
      builder: (_, state) => state.maybeMap(
        loadSuccess: (state) {
          return Container(
            height: 31,
            constraints: const BoxConstraints(maxWidth: 744),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kPrimaryColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getFeeInformation("Контракт", 0),
                _getFeeInformation("К оплате", 0),
                _getFeeInformation("К плану", 0),
                _getFeeInformation("Сумма плана", 0),
                _getFeeInformation("Разница", 0),
              ],
            ),
          );
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _getFeeInformation(String text, double amount) {
    return Text(
      "$text: $amount\$",
      style: kFeeInformationTextStyle,
    );
  }
}
