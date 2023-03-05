// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accrual.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Accrual {
  int get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccrualCopyWith<Accrual> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccrualCopyWith<$Res> {
  factory $AccrualCopyWith(Accrual value, $Res Function(Accrual) then) =
      _$AccrualCopyWithImpl<$Res, Accrual>;
  @useResult
  $Res call({int id, double amount, String currency, String note, String date});
}

/// @nodoc
class _$AccrualCopyWithImpl<$Res, $Val extends Accrual>
    implements $AccrualCopyWith<$Res> {
  _$AccrualCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccrualCopyWith<$Res> implements $AccrualCopyWith<$Res> {
  factory _$$_AccrualCopyWith(
          _$_Accrual value, $Res Function(_$_Accrual) then) =
      __$$_AccrualCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double amount, String currency, String note, String date});
}

/// @nodoc
class __$$_AccrualCopyWithImpl<$Res>
    extends _$AccrualCopyWithImpl<$Res, _$_Accrual>
    implements _$$_AccrualCopyWith<$Res> {
  __$$_AccrualCopyWithImpl(_$_Accrual _value, $Res Function(_$_Accrual) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? note = null,
    Object? date = null,
  }) {
    return _then(_$_Accrual(
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
    ));
  }
}

/// @nodoc

class _$_Accrual extends _Accrual {
  const _$_Accrual(
      {required this.id,
      required this.amount,
      required this.currency,
      required this.note,
      required this.date})
      : super._();

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
  String toString() {
    return 'Accrual(id: $id, amount: $amount, currency: $currency, note: $note, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accrual &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, currency, note, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccrualCopyWith<_$_Accrual> get copyWith =>
      __$$_AccrualCopyWithImpl<_$_Accrual>(this, _$identity);
}

abstract class _Accrual extends Accrual {
  const factory _Accrual(
      {required final int id,
      required final double amount,
      required final String currency,
      required final String note,
      required final String date}) = _$_Accrual;
  const _Accrual._() : super._();

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
  @JsonKey(ignore: true)
  _$$_AccrualCopyWith<_$_Accrual> get copyWith =>
      throw _privateConstructorUsedError;
}
