import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/accruals/get_accruals/accruals_cubit.dart';
import 'package:school_management/application/staffs/get_staff/staff_cubit.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';
import 'package:school_management/presentation/common/widgets/add_button.dart';
import 'package:school_management/presentation/staff/contents/payments/payments_layout.dart';
import 'package:school_management/presentation/staff/custom_date_field.dart';

class PaymentsContent extends StatelessWidget {
  static const label = "Выплаты";

  const PaymentsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Row(
            children: [
              Container(
                height: 34,
                width: 180,
                padding: const EdgeInsets.only(top: 4, right: 25, left: 10),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: kShadowDefaultOffset,
                      color: kShadowLightColor,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.images.calendar.path,
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomDateField(
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 34,
                width: 180,
                padding: const EdgeInsets.only(top: 4, right: 25, left: 10),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: kShadowDefaultOffset,
                      color: kShadowLightColor,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.images.calendar.path,
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomDateField(
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 34,
                width: 34,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: kShadowDefaultOffset,
                      color: kShadowLightColor,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      Assets.images.search.path,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 62),
          AddButton(
            onTap: () {},
          ),
          const SizedBox(height: 62),
          BlocBuilder<StaffCubit, StaffState>(
            builder: (_, state) => state.maybeMap(
              loadSuccess: (state) {
                final staffId = state.staff.id;

                context.read<AccrualsCubit>().getAccruals(staffId);

                return ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 980),
                  child: const PaymentsLayout(),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 88),
        ],
      ),
    );
  }
}
