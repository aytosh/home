import 'package:flutter/material.dart';
import 'package:school_management/presentation/auth/login/components/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: MediaQuery.of(context).size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LoginForm(),
        ],
      ),
    );
  }
}
