import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/auth/auth_failure.dart';
import 'package:school_management/domain/auth/i_auth_facade.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;

  LoginFormBloc(this._authFacade) : super(LoginFormState.initial()) {
    on<LoginFormEvent>((event, emit) async {
      await event.map(
        usernameChanged: (e) async {
          emit(
            state.copyWith(
              username: e.username,
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (e) async {
          emit(
            state.copyWith(
              password: e.password,
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        loginPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.login(
            username: state.username,
            password: state.password,
          );

          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
