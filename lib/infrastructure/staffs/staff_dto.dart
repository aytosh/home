// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/common/gender.dart';
import 'package:school_management/domain/staff/staff.dart';

part 'staff_dto.freezed.dart';
part 'staff_dto.g.dart';

@freezed
class StaffDto with _$StaffDto {
  const StaffDto._();

  const factory StaffDto({
    required int id,
    required String first_name,
    required String last_name,
    required String patronymic,
    required String gender,
    required String birthday,
    required String status,
    required String specialty,
  }) = _StaffDto;

  Staff toDomain() {
    return Staff(
      id: id,
      firstName: first_name,
      lastName: last_name,
      patronymic: patronymic,
      gender: getGender(gender),
      birthday: birthday,
      status: status,
      speciality: specialty,
    );
  }

  factory StaffDto.fromJson(Map<String, dynamic> json) =>
      _$StaffDtoFromJson(json);
}
