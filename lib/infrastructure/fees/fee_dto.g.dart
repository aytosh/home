// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeeDto _$$_FeeDtoFromJson(Map<String, dynamic> json) => _$_FeeDto(
      id: json['id'] as int,
      payment_usd: (json['payment_usd'] as num).toDouble(),
      payment_usd_left: (json['payment_usd_left'] as num).toDouble(),
      paid: (json['paid'] as num).toDouble(),
      fee_category: json['fee_category'] as int,
      payment_plan: (json['payment_plan'] as List<dynamic>?)
          ?.map((e) => ObjectWithIdDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => ObjectWithIdDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeeDtoToJson(_$_FeeDto instance) => <String, dynamic>{
      'id': instance.id,
      'payment_usd': instance.payment_usd,
      'payment_usd_left': instance.payment_usd_left,
      'paid': instance.paid,
      'fee_category': instance.fee_category,
      'payment_plan': instance.payment_plan,
      'discounts': instance.discounts,
    };
