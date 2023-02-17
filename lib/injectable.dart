import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/injectable.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) => getIt.init(environment: env);
