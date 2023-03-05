// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/common/gender.dart';
import 'package:school_management/domain/student/status.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/infrastructure/common/object_with_id_dto.dart';
import 'package:school_management/infrastructure/groups/group_dto.dart';

part 'student_dto.freezed.dart';
part 'student_dto.g.dart';

@freezed
class StudentDto with _$StudentDto {
  const StudentDto._();

  const factory StudentDto({
    required int id,
    required String student_id,
    required String first_name,
    required String last_name,
    required String patronymic,
    required String gender,
    required String birthday,
    required GroupDto group,
    required String status,
    required String admission_year,
    List<ObjectWithIdDto>? family_members,
    List<ObjectWithIdDto>? payments,
    required ObjectWithIdDto? fee,
  }) = _StudentDto;

  Student toDomain() {
    return Student(
      id: id,
      studentId: student_id,
      firstName: first_name,
      lastName: last_name,
      patronymic: patronymic,
      gender: getGender(gender),
      birthday: birthday,
      group: group.toDomain(),
      status: getStatus(status),
      admissionYear: admission_year,
      familyMemberIds: family_members?.map((e) => e.id).toList(),
      paymentIds: payments?.map((e) => e.id).toList(),
      feeId: fee?.id,
    );
  }

  factory StudentDto.fromJson(Map<String, dynamic> json) =>
      _$StudentDtoFromJson(json);
}
