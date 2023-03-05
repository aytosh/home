// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentPlanDto _$$_PaymentPlanDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentPlanDto(
      id: json['id'] as int,
      date: json['date'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PaymentPlanDtoToJson(_$_PaymentPlanDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'amount': instance.amount,
    };
