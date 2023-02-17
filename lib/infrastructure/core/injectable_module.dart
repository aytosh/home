import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/presentation/common/utils/get_token.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "itunique.net:8000";

  @Named("HttpUrl")
  String get httpUrl => "http://$baseUrl/";

  @lazySingleton
  Dio dio(@Named("HttpUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: url, responseType: ResponseType.plain),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          final token = getToken();
          if (token != "null") {
            options.headers["Authorization"] = "Token $token";
          }
          return handler.next(options); // continue
        },
      ),
    );

    return dio;
  }
}
