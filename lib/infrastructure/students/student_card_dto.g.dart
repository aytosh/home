// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentCardDto _$$_StudentCardDtoFromJson(Map<String, dynamic> json) =>
    _$_StudentCardDto(
      id: json['id'] as int,
      student_id: json['student_id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      group: GroupDto.fromJson(json['group'] as Map<String, dynamic>),
      status: json['status'] as String,
      admission_year: json['admission_year'] as String,
    );

Map<String, dynamic> _$$_StudentCardDtoToJson(_$_StudentCardDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'group': instance.group,
      'status': instance.status,
      'admission_year': instance.admission_year,
    };
