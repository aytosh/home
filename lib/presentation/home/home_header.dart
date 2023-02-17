import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/presentation/common/constants/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            context
                .read<AuthStatusBloc>()
                .add(const AuthStatusEvent.signedOut());
          },
          icon: const Icon(
            Icons.logout,
            color: kBackgroundColor,
          ),
        ),
        const SizedBox(width: 35),
      ],
    );
  }
}
