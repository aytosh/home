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
      family_members: (json['family_members'] as List<dynamic>)
          .map((e) => FamilyMemberDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      fee: (json['fee'] as List<dynamic>)
          .map((e) => FeeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>)
          .map((e) => PaymentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'fee': instance.fee,
      'payments': instance.payments,
    };

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

_$_FeeDto _$$_FeeDtoFromJson(Map<String, dynamic> json) => _$_FeeDto(
      id: json['id'] as int,
      payment_usd: (json['payment_usd'] as num).toDouble(),
      payment_usd_left: (json['payment_usd_left'] as num).toDouble(),
      paid: (json['paid'] as num).toDouble(),
      fee_category: json['fee_category'] as int,
      payment_plan: (json['payment_plan'] as List<dynamic>)
          .map((e) => PaymentPlanDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeeDtoToJson(_$_FeeDto instance) => <String, dynamic>{
      'id': instance.id,
      'payment_usd': instance.payment_usd,
      'payment_usd_left': instance.payment_usd_left,
      'paid': instance.paid,
      'fee_category': instance.fee_category,
      'payment_plan': instance.payment_plan,
    };

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

_$_PaymentDto _$$_PaymentDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentDto(
      id: json['id'] as int,
      payment_category: json['payment_category'] as String,
      payment_type: json['payment_type'] as String,
      amount_usd: (json['amount_usd'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
      who_paid: json['who_paid'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_PaymentDtoToJson(_$_PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_category': instance.payment_category,
      'payment_type': instance.payment_type,
      'amount_usd': instance.amount_usd,
      'rate': instance.rate,
      'who_paid': instance.who_paid,
      'date': instance.date,
    };
