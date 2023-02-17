import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/application/auth/login_form/login_form_bloc.dart';
import 'package:school_management/presentation/auth/widgets/custom_button.dart';
import 'package:school_management/presentation/common/constants/styles.dart';
import 'package:school_management/presentation/common/utils/flushbar_creator.dart';

import 'package:school_management/presentation/auth/widgets/custom_checkbox.dart';
import 'package:school_management/presentation/auth/widgets/custom_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  invalidCredentials: (_) => "Invalid Credentials",
                  orElse: () => "Server Error. Try again later",
                ),
              ).show(context);
            },
            (_) {
              // TODO: Try something different
              context.read<AuthStatusBloc>().add(
                    const AuthStatusEvent.authCheckRequested(),
                  );
            },
          ),
        );
      },
      builder: (context, state) => Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Column(
          children: [
            Text(
              "WELCOME",
              style: kWelcomeTitleStyle,
            ),
            const SizedBox(height: 52),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 305),
              child: Column(
                children: [
                  CustomFormField(
                    hintText: "Имя пользователя",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    onChanged: (value) => context
                        .read<LoginFormBloc>()
                        .add(LoginFormEvent.usernameChanged(value)),
                  ),
                  const SizedBox(height: 37),
                  CustomFormField(
                    hintText: "Пароль",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (value) => context
                        .read<LoginFormBloc>()
                        .add(LoginFormEvent.passwordChanged(value)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 27),
                        child: Text(
                          "Запомнить меня",
                          style: kRememberMeTextStyle,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: CustomCheckbox(
                          onTap: (value) {},
                        ),
                      ),
                      const SizedBox(width: 12)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 301),
              child: CustomButton(
                onTap: () {
                  FocusScope.of(context).unfocus();

                  context.read<LoginFormBloc>().add(
                        const LoginFormEvent.loginPressed(),
                      );
                },
                child: Center(
                  child: Text(
                    "Вход",
                    style: kLoginButtonTitleStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
