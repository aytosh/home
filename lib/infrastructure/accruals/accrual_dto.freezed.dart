// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accrual_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccrualDto _$AccrualDtoFromJson(Map<String, dynamic> json) {
  return _AccrualDto.fromJson(json);
}

/// @nodoc
mixin _$AccrualDto {
  int get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get staff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccrualDtoCopyWith<AccrualDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccrualDtoCopyWith<$Res> {
  factory $AccrualDtoCopyWith(
          AccrualDto value, $Res Function(AccrualDto) then) =
      _$AccrualDtoCopyWithImpl<$Res, AccrualDto>;
  @useResult
  $Res call(
      {int id,
      double amount,
      String currency,
      String note,
      String date,
      int staff});
}

/// @nodoc
class _$AccrualDtoCopyWithImpl<$Res, $Val extends AccrualDto>
    implements $AccrualDtoCopyWith<$Res> {
  _$AccrualDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? note = null,
    Object? date = null,
    Object? staff = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccrualDtoCopyWith<$Res>
    implements $AccrualDtoCopyWith<$Res> {
  factory _$$_AccrualDtoCopyWith(
          _$_AccrualDto value, $Res Function(_$_AccrualDto) then) =
      __$$_AccrualDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double amount,
      String currency,
      String note,
      String date,
      int staff});
}

/// @nodoc
class __$$_AccrualDtoCopyWithImpl<$Res>
    extends _$AccrualDtoCopyWithImpl<$Res, _$_AccrualDto>
    implements _$$_AccrualDtoCopyWith<$Res> {
  __$$_AccrualDtoCopyWithImpl(
      _$_AccrualDto _value, $Res Function(_$_AccrualDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? note = null,
    Object? date = null,
    Object? staff = null,
  }) {
    return _then(_$_AccrualDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccrualDto extends _AccrualDto {
  const _$_AccrualDto(
      {required this.id,
      required this.amount,
      required this.currency,
      required this.note,
      required this.date,
      required this.staff})
      : super._();

  factory _$_AccrualDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccrualDtoFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final String note;
  @override
  final String date;
  @override
  final int staff;

  @override
  String toString() {
    return 'AccrualDto(id: $id, amount: $amount, currency: $currency, note: $note, date: $date, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccrualDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.staff, staff) || other.staff == staff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, currency, note, date, staff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccrualDtoCopyWith<_$_AccrualDto> get copyWith =>
      __$$_AccrualDtoCopyWithImpl<_$_AccrualDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccrualDtoToJson(
      this,
    );
  }
}

abstract class _AccrualDto extends AccrualDto {
  const factory _AccrualDto(
      {required final int id,
      required final double amount,
      required final String currency,
      required final String note,
      required final String date,
      required final int staff}) = _$_AccrualDto;
  const _AccrualDto._() : super._();

  factory _AccrualDto.fromJson(Map<String, dynamic> json) =
      _$_AccrualDto.fromJson;

  @override
  int get id;
  @override
  double get amount;
  @override
  String get currency;
  @override
  String get note;
  @override
  String get date;
  @override
  int get staff;
  @override
  @JsonKey(ignore: true)
  _$$_AccrualDtoCopyWith<_$_AccrualDto> get copyWith =>
      throw _privateConstructorUsedError;
}
