import 'package:dartz/dartz.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_failure.dart';

abstract class IStudentRepository {
  Future<Either<StudentFailure, Student>> getStudent(int id);

  Future<Either<StudentFailure, List<Student>>> getStudents([int? page]);

  Future<Either<StudentFailure, Unit>> createStudent({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required int group,
    required String admissionYear,
  });

  Future<Either<StudentFailure, Unit>> createFullStudent({
    required String studentFirstName,
    required String studentLastName,
    required String studentPatronymic,
    required String studentGender,
    required String studentBirthday,
    required int studentGroup,
    required String studentAdmissionYear,
    required String familyMemberFirstName,
    required String familyMemberLastName,
    required String familyMemberPatronymic,
    required String familyMemberWho,
    required String familyMemberAddress,
    required String familyMemberPhoneNumber,
    required String familyMemberIdPassport,
    required String familyMemberWorkPlace,
    required bool familyMemberIsResposible,
    required int feeCategoryId,
    required int discountCategoryId,
  });
}
