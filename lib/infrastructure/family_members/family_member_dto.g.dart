// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamilyMemberDto _$$_FamilyMemberDtoFromJson(Map<String, dynamic> json) =>
    _$_FamilyMemberDto(
      id: json['id'] as int,
      fullname: json['fullname'] as String,
      who: json['who'] as String,
      address: json['address'] as String,
      phone_number: json['phone_number'] as String,
      id_passport: json['id_passport'] as String,
      work_place: json['work_place'] as String,
      is_responsible: json['is_responsible'] as bool,
    );

Map<String, dynamic> _$$_FamilyMemberDtoToJson(_$_FamilyMemberDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'who': instance.who,
      'address': instance.address,
      'phone_number': instance.phone_number,
      'id_passport': instance.id_passport,
      'work_place': instance.work_place,
      'is_responsible': instance.is_responsible,
    };
