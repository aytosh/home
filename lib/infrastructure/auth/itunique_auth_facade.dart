import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/auth/auth_failure.dart';
import 'package:school_management/domain/auth/i_auth_facade.dart';
import 'package:school_management/infrastructure/core/hive_box_names.dart';
import 'package:school_management/presentation/common/utils/get_token.dart';

@LazySingleton(as: IAuthFacade)
class ITUniqueAuthFacade implements IAuthFacade {
  final Dio _dio;

  ITUniqueAuthFacade(this._dio);

  @override
  Future<Either<AuthFailure, Unit>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        "account/login/",
        data: {"username": username, "password": password},
      );

      final results = jsonDecode(response.data);
      final token = results["token"];

      _setToken(token);

      return right(unit);
    } on DioError catch (err) {
      if (err.response?.statusCode == 400) {
        return left(const AuthFailure.invalidCredentials());
      }
      return left(const AuthFailure.serverError());
    } on SocketException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<bool> checkAuthenticated() async {
    return getToken() != "null";
  }

  @override
  Future<void> logout() async {
    try {
      Future.wait([
        Hive.box(BoxNames.settingsBox).clear(),
        _dio.post("account/logout/"),
      ]);
    } on DioError catch (err) {
      debugPrint(err.toString());
    } on SocketException catch (err) {
      debugPrint(err.toString());
    }
  }

  Future<void> _setToken(String token) async {
    await Hive.box(BoxNames.settingsBox).put(BoxKeys.tokenKey, token);
  }
}
