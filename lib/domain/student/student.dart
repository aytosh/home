import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:school_management/domain/group/group.dart';
import 'package:school_management/domain/common/gender.dart';
import 'package:school_management/domain/student/status.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const Student._();

  const factory Student({
    required int id,
    required String studentId,
    required String firstName,
    required String lastName,
    required String patronymic,
    required Gender gender,
    required String birthday,
    required Group group,
    required Status status,
    required String admissionYear,
    int? feeId,
    List<int>? familyMemberIds,
    List<int>? paymentIds,
  }) = _Student;
}
