// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StaffDto _$$_StaffDtoFromJson(Map<String, dynamic> json) => _$_StaffDto(
      id: json['id'] as int,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      patronymic: json['patronymic'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as String,
      status: json['status'] as String,
      specialty: json['specialty'] as String,
    );

Map<String, dynamic> _$$_StaffDtoToJson(_$_StaffDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'patronymic': instance.patronymic,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'status': instance.status,
      'specialty': instance.specialty,
    };
