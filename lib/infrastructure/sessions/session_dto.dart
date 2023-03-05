// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/session/session.dart';

part 'session_dto.freezed.dart';
part 'session_dto.g.dart';

@freezed
class SessionDto with _$SessionDto {
  const SessionDto._();

  const factory SessionDto({
    required String slug,
    required String title,
  }) = _SessionDto;

  Session toDomain() {
    return Session(
      slug: slug,
      title: title,
    );
  }

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);
}
