// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDto _$$_PaymentDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentDto(
      id: json['id'] as int,
      payment_category: json['payment_category'] as String,
      payment_type: json['payment_type'] as String,
      amount: (json['amount'] as num).toDouble(),
      who_paid: json['who_paid'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_PaymentDtoToJson(_$_PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_category': instance.payment_category,
      'payment_type': instance.payment_type,
      'amount': instance.amount,
      'who_paid': instance.who_paid,
      'date': instance.date,
    };
