// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentPlanDto _$PaymentPlanDtoFromJson(Map<String, dynamic> json) {
  return _PaymentPlanDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentPlanDto {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentPlanDtoCopyWith<PaymentPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPlanDtoCopyWith<$Res> {
  factory $PaymentPlanDtoCopyWith(
          PaymentPlanDto value, $Res Function(PaymentPlanDto) then) =
      _$PaymentPlanDtoCopyWithImpl<$Res, PaymentPlanDto>;
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class _$PaymentPlanDtoCopyWithImpl<$Res, $Val extends PaymentPlanDto>
    implements $PaymentPlanDtoCopyWith<$Res> {
  _$PaymentPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentPlanDtoCopyWith<$Res>
    implements $PaymentPlanDtoCopyWith<$Res> {
  factory _$$_PaymentPlanDtoCopyWith(
          _$_PaymentPlanDto value, $Res Function(_$_PaymentPlanDto) then) =
      __$$_PaymentPlanDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class __$$_PaymentPlanDtoCopyWithImpl<$Res>
    extends _$PaymentPlanDtoCopyWithImpl<$Res, _$_PaymentPlanDto>
    implements _$$_PaymentPlanDtoCopyWith<$Res> {
  __$$_PaymentPlanDtoCopyWithImpl(
      _$_PaymentPlanDto _value, $Res Function(_$_PaymentPlanDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$_PaymentPlanDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentPlanDto extends _PaymentPlanDto {
  const _$_PaymentPlanDto(
      {required this.id, required this.date, required this.amount})
      : super._();

  factory _$_PaymentPlanDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentPlanDtoFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final double amount;

  @override
  String toString() {
    return 'PaymentPlanDto(id: $id, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentPlanDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentPlanDtoCopyWith<_$_PaymentPlanDto> get copyWith =>
      __$$_PaymentPlanDtoCopyWithImpl<_$_PaymentPlanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentPlanDtoToJson(
      this,
    );
  }
}

abstract class _PaymentPlanDto extends PaymentPlanDto {
  const factory _PaymentPlanDto(
      {required final int id,
      required final String date,
      required final double amount}) = _$_PaymentPlanDto;
  const _PaymentPlanDto._() : super._();

  factory _PaymentPlanDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentPlanDto.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentPlanDtoCopyWith<_$_PaymentPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
