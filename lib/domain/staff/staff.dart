import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/common/gender.dart';

part 'staff.freezed.dart';

@freezed
class Staff with _$Staff {
  const Staff._();

  const factory Staff({
    required int id,
    required String firstName,
    required String lastName,
    required String patronymic,
    required Gender gender,
    required String birthday,
    required String status,
    required String speciality,
  }) = _Staff;
}
