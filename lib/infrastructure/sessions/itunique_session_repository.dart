import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/session/i_session_repository.dart';
import 'package:school_management/domain/session/session.dart';
import 'package:school_management/domain/session/session_failure.dart';
import 'package:school_management/infrastructure/sessions/session_dto.dart';

@LazySingleton(as: ISessionRepository)
class ITUniqueSessionRepository extends ISessionRepository {
  final Dio _dio;

  ITUniqueSessionRepository(this._dio);

  @override
  Future<Either<SessionFailure, List<Session>>> getSessions() async {
    try {
      final response = await _dio.get("session/session/");

      final results = jsonDecode(response.data);

      final List<Session> list = [];
      results.forEach(
        (result) => list.add(SessionDto.fromJson(result).toDomain()),
      );
      return right(list);
    } on DioError catch (_) {
      return left(const SessionFailure.unexpected());
    } on SocketException catch (_) {
      return left(const SessionFailure.serverError());
    }
  }
}
