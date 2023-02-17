import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school_management/domain/group/group.dart';

part 'group_dto.freezed.dart';
part 'group_dto.g.dart';

@freezed
class GroupDto with _$GroupDto {
  const GroupDto._();

  const factory GroupDto({
    required int id,
    required String title,
    required String session,
    required String class_category,
  }) = _GroupDto;

  Group toDomain() {
    return Group(
      id: id,
      title: title,
      session: session,
      classCategory: class_category,
    );
  }

  factory GroupDto.fromJson(Map<String, dynamic> json) =>
      _$GroupDtoFromJson(json);
}
