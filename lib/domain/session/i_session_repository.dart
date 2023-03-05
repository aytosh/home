import 'package:dartz/dartz.dart';
import 'package:school_management/domain/session/session.dart';
import 'package:school_management/domain/session/session_failure.dart';

abstract class ISessionRepository {
  Future<Either<SessionFailure, List<Session>>> getSessions();
}
