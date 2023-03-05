import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_with_id_dto.freezed.dart';
part 'object_with_id_dto.g.dart';

@freezed
class ObjectWithIdDto with _$ObjectWithIdDto {
  const ObjectWithIdDto._();

  const factory ObjectWithIdDto({
    required int id,
  }) = _ObjectWithIdDto;

  factory ObjectWithIdDto.fromJson(Map<String, dynamic> json) =>
      _$ObjectWithIdDtoFromJson(json);
}
