// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentDto _$$_StudentDtoFromJson(Map<String, dynamic> json) =>
    _$_StudentDto(
      id: json['id'] as int,
      student_id: json['student_id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      patronymic: json['patronymic'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as String,
      group: GroupDto.fromJson(json['group'] as Map<String, dynamic>),
      status: json['status'] as String,
      admission_year: json['admission_year'] as String,
      family_members: (json['family_members'] as List<dynamic>?)
          ?.map((e) => ObjectWithIdDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => ObjectWithIdDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      fee: json['fee'] == null
          ? null
          : ObjectWithIdDto.fromJson(json['fee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudentDtoToJson(_$_StudentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'patronymic': instance.patronymic,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'group': instance.group,
      'status': instance.status,
      'admission_year': instance.admission_year,
      'family_members': instance.family_members,
      'payments': instance.payments,
      'fee': instance.fee,
    };
