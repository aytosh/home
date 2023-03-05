import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:school_management/application/auth/auth_status/auth_status_bloc.dart';
import 'package:school_management/application/fee_categories/get_fee_categories/fee_categories_cubit.dart';
import 'package:school_management/application/fee_discount_categories/get_fee_discount_categories/fee_discount_categories_cubit.dart';
import 'package:school_management/application/groups/get_groups/groups_cubit.dart';
import 'package:school_management/application/sessions/get_sessions/sessions_cubit.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/core/app_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthStatusBloc>()
            ..add(
              const AuthStatusEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<FeeCategoriesCubit>()..getFeeCategories(),
        ),
        BlocProvider(
          create: (context) => getIt<GroupsCubit>()..getGroups(),
        ),
        BlocProvider(
          create: (context) => getIt<SessionsCubit>()..getSessions(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<FeeDiscountCategoriesCubit>()..getFeeDiscountCategories(),
        ),
      ],
      child: const App(),
    );
  }
}

class App extends HookWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
    );
  }
}
