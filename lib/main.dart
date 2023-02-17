import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/injectable.dart';
import 'package:school_management/presentation/common/utils/global_bloc_observer.dart';
import 'package:school_management/presentation/core/app_widget.dart';
import 'package:school_management/setup_hive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.test);
  await setupHive();
  Bloc.observer = GlobalBlocObserver();
  runApp(const AppWidget());
}
