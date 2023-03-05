import 'package:dartz/dartz.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/domain/staff/staff_failure.dart';

abstract class IStaffRepository {
  Future<Either<StaffFailure, Staff>> getStaff(int id);

  Future<Either<StaffFailure, List<Staff>>> getStaffs([int? page]);

  Future<Either<StaffFailure, Unit>> createStaff({
    required String firstName,
    required String lastName,
    required String patronymic,
    required String gender,
    required String birthday,
    required String status,
    required String position,
    required String nationality,
    required String citizenship,
    required String maritalStatus,
    required String speciality,
  });
}
