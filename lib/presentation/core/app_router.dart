import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/application/students/get_student/student_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/utils/refresh_stream.dart';
import 'package:school_management/presentation/home/home_screen.dart';
import 'package:school_management/presentation/auth/login/login_screen.dart';
import 'package:school_management/presentation/student/student_screen.dart';

class AppRouter {
  late GoRouter router;

  AppRouter(BuildContext context) {
    final authStatusBloc = context.read<AuthStatusBloc>();

    router = GoRouter(
      debugLogDiagnostics: true,
      routerNeglect: true,
      initialLocation: "/",
      routes: [
        GoRoute(
          path: "/",
          redirect: (_, __) => LoginScreen.path,
        ),
        GoRoute(
          path: LoginScreen.path,
          builder: (_, __) => const LoginScreen(),
        ),
        GoRoute(
          path: HomeScreen.path,
          builder: (_, __) => const HomeScreen(),
        ),
        GoRoute(
          name: StudentScreen.name,
          path: "${StudentScreen.path}/:id",
          builder: (_, state) => BlocProvider(
            create: (context) => getIt<StudentCubit>(),
            child: StudentScreen(id: state.params["id"]!),
          ),
        ),
      ],
      redirect: (_, state) {
        final isLoggedIn =
            authStatusBloc.state == const AuthStatusState.authenticated();

        final isLoginScreen = state.subloc == LoginScreen.path;

        if (isLoggedIn) {
          if (isLoginScreen) {
            return HomeScreen.path;
          }
        }

        return null;
      },
      refreshListenable: RefreshStream(authStatusBloc.stream),
    );
  }
}
