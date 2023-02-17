// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupDto _$$_GroupDtoFromJson(Map<String, dynamic> json) => _$_GroupDto(
      id: json['id'] as int,
      title: json['title'] as String,
      session: json['session'] as String,
      class_category: json['class_category'] as String,
    );

Map<String, dynamic> _$$_GroupDtoToJson(_$_GroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'session': instance.session,
      'class_category': instance.class_category,
    };
