import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/auth/login_form/login_form_bloc.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/widgets/base.dart';
import 'package:school_management/presentation/auth/login/login_body.dart';

class LoginScreen extends StatelessWidget {
  static const path = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: BlocProvider(
        create: (context) => getIt<LoginFormBloc>(),
        child: const LoginBody(),
      ),
    );
  }
}
