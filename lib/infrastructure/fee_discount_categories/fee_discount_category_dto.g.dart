// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_discount_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeeDiscountCategoryDto _$$_FeeDiscountCategoryDtoFromJson(
        Map<String, dynamic> json) =>
    _$_FeeDiscountCategoryDto(
      id: json['id'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FeeDiscountCategoryDtoToJson(
        _$_FeeDiscountCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'value': instance.value,
    };
