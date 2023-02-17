import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/group/group.dart';

part 'student_card.freezed.dart';

@freezed
class StudentCard with _$StudentCard {
  const StudentCard._();

  const factory StudentCard({
    required int id,
    required String studentId,
    required String firstName,
    required String lastName,
    required Group group,
    required String status,
    required String admissionYear,
  }) = _StudentCard;
}
