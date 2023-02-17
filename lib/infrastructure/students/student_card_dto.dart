// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/infrastructure/groups/group_dto.dart';

part 'student_card_dto.freezed.dart';
part 'student_card_dto.g.dart';

@freezed
class StudentCardDto with _$StudentCardDto {
  const StudentCardDto._();

  const factory StudentCardDto({
    required int id,
    required String student_id,
    required String first_name,
    required String last_name,
    required GroupDto group,
    required String status,
    required String admission_year,
  }) = _StudentCardDto;

  StudentCard toDomain() {
    return StudentCard(
      id: id,
      studentId: student_id,
      firstName: first_name,
      lastName: last_name,
      group: group.toDomain(),
      status: status,
      admissionYear: admission_year,
    );
  }

  factory StudentCardDto.fromJson(Map<String, dynamic> json) =>
      _$StudentCardDtoFromJson(json);
}
