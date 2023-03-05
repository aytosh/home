// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  int get id => throw _privateConstructorUsedError;
  String get payment_category => throw _privateConstructorUsedError;
  String get payment_type => throw _privateConstructorUsedError;
  double get amount =>
      throw _privateConstructorUsedError; // required double rate,
  String get who_paid => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {int id,
      String payment_category,
      String payment_type,
      double amount,
      String who_paid,
      String date});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_category = null,
    Object? payment_type = null,
    Object? amount = null,
    Object? who_paid = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_category: null == payment_category
          ? _value.payment_category
          : payment_category // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      who_paid: null == who_paid
          ? _value.who_paid
          : who_paid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDtoCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$_PaymentDtoCopyWith(
          _$_PaymentDto value, $Res Function(_$_PaymentDto) then) =
      __$$_PaymentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String payment_category,
      String payment_type,
      double amount,
      String who_paid,
      String date});
}

/// @nodoc
class __$$_PaymentDtoCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$_PaymentDto>
    implements _$$_PaymentDtoCopyWith<$Res> {
  __$$_PaymentDtoCopyWithImpl(
      _$_PaymentDto _value, $Res Function(_$_PaymentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_category = null,
    Object? payment_type = null,
    Object? amount = null,
    Object? who_paid = null,
    Object? date = null,
  }) {
    return _then(_$_PaymentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_category: null == payment_category
          ? _value.payment_category
          : payment_category // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      who_paid: null == who_paid
          ? _value.who_paid
          : who_paid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDto extends _PaymentDto {
  const _$_PaymentDto(
      {required this.id,
      required this.payment_category,
      required this.payment_type,
      required this.amount,
      required this.who_paid,
      required this.date})
      : super._();

  factory _$_PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDtoFromJson(json);

  @override
  final int id;
  @override
  final String payment_category;
  @override
  final String payment_type;
  @override
  final double amount;
// required double rate,
  @override
  final String who_paid;
  @override
  final String date;

  @override
  String toString() {
    return 'PaymentDto(id: $id, payment_category: $payment_category, payment_type: $payment_type, amount: $amount, who_paid: $who_paid, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payment_category, payment_category) ||
                other.payment_category == payment_category) &&
            (identical(other.payment_type, payment_type) ||
                other.payment_type == payment_type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.who_paid, who_paid) ||
                other.who_paid == who_paid) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, payment_category, payment_type, amount, who_paid, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      __$$_PaymentDtoCopyWithImpl<_$_PaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDtoToJson(
      this,
    );
  }
}

abstract class _PaymentDto extends PaymentDto {
  const factory _PaymentDto(
      {required final int id,
      required final String payment_category,
      required final String payment_type,
      required final double amount,
      required final String who_paid,
      required final String date}) = _$_PaymentDto;
  const _PaymentDto._() : super._();

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDto.fromJson;

  @override
  int get id;
  @override
  String get payment_category;
  @override
  String get payment_type;
  @override
  double get amount;
  @override // required double rate,
  String get who_paid;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
