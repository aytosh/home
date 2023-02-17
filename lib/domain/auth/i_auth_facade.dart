import 'package:dartz/dartz.dart';
import 'package:school_management/domain/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> login({
    required String username,
    required String password,
  });

  Future<bool> checkAuthenticated();

  Future<void> logout();
}
