import 'package:dartz/dartz.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/domain/student/student_failure.dart';

abstract class IStudentRepository {
  Future<Either<StudentFailure, Student>> getStudent(String id);

  Future<Either<StudentFailure, List<StudentCard>>> getStudentCards(
      {int? page});

  Future<Either<StudentFailure, Unit>> createStudent({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required int group,
    required String status,
    required String admissionYear,
  });
}
