// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accrual_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccrualDto _$$_AccrualDtoFromJson(Map<String, dynamic> json) =>
    _$_AccrualDto(
      id: json['id'] as int,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      note: json['note'] as String,
      date: json['date'] as String,
      staff: json['staff'] as int,
    );

Map<String, dynamic> _$$_AccrualDtoToJson(_$_AccrualDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'note': instance.note,
      'date': instance.date,
      'staff': instance.staff,
    };
