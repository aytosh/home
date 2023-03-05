// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeeCategoryDto _$$_FeeCategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_FeeCategoryDto(
      id: json['id'] as int,
      title: json['title'] as String,
      amount_usd: (json['amount_usd'] as num).toDouble(),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_FeeCategoryDtoToJson(_$_FeeCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount_usd': instance.amount_usd,
      'note': instance.note,
    };
