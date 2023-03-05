// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeDto _$FeeDtoFromJson(Map<String, dynamic> json) {
  return _FeeDto.fromJson(json);
}

/// @nodoc
mixin _$FeeDto {
  int get id => throw _privateConstructorUsedError;
  double get payment_usd => throw _privateConstructorUsedError;
  double get payment_usd_left => throw _privateConstructorUsedError;
  double get paid => throw _privateConstructorUsedError;
  int get fee_category => throw _privateConstructorUsedError;
  List<ObjectWithIdDto>? get payment_plan => throw _privateConstructorUsedError;
  List<ObjectWithIdDto> get discounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeDtoCopyWith<FeeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDtoCopyWith<$Res> {
  factory $FeeDtoCopyWith(FeeDto value, $Res Function(FeeDto) then) =
      _$FeeDtoCopyWithImpl<$Res, FeeDto>;
  @useResult
  $Res call(
      {int id,
      double payment_usd,
      double payment_usd_left,
      double paid,
      int fee_category,
      List<ObjectWithIdDto>? payment_plan,
      List<ObjectWithIdDto> discounts});
}

/// @nodoc
class _$FeeDtoCopyWithImpl<$Res, $Val extends FeeDto>
    implements $FeeDtoCopyWith<$Res> {
  _$FeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_usd = null,
    Object? payment_usd_left = null,
    Object? paid = null,
    Object? fee_category = null,
    Object? payment_plan = freezed,
    Object? discounts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_usd: null == payment_usd
          ? _value.payment_usd
          : payment_usd // ignore: cast_nullable_to_non_nullable
              as double,
      payment_usd_left: null == payment_usd_left
          ? _value.payment_usd_left
          : payment_usd_left // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      fee_category: null == fee_category
          ? _value.fee_category
          : fee_category // ignore: cast_nullable_to_non_nullable
              as int,
      payment_plan: freezed == payment_plan
          ? _value.payment_plan
          : payment_plan // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      discounts: null == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeDtoCopyWith<$Res> implements $FeeDtoCopyWith<$Res> {
  factory _$$_FeeDtoCopyWith(_$_FeeDto value, $Res Function(_$_FeeDto) then) =
      __$$_FeeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double payment_usd,
      double payment_usd_left,
      double paid,
      int fee_category,
      List<ObjectWithIdDto>? payment_plan,
      List<ObjectWithIdDto> discounts});
}

/// @nodoc
class __$$_FeeDtoCopyWithImpl<$Res>
    extends _$FeeDtoCopyWithImpl<$Res, _$_FeeDto>
    implements _$$_FeeDtoCopyWith<$Res> {
  __$$_FeeDtoCopyWithImpl(_$_FeeDto _value, $Res Function(_$_FeeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_usd = null,
    Object? payment_usd_left = null,
    Object? paid = null,
    Object? fee_category = null,
    Object? payment_plan = freezed,
    Object? discounts = null,
  }) {
    return _then(_$_FeeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_usd: null == payment_usd
          ? _value.payment_usd
          : payment_usd // ignore: cast_nullable_to_non_nullable
              as double,
      payment_usd_left: null == payment_usd_left
          ? _value.payment_usd_left
          : payment_usd_left // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      fee_category: null == fee_category
          ? _value.fee_category
          : fee_category // ignore: cast_nullable_to_non_nullable
              as int,
      payment_plan: freezed == payment_plan
          ? _value._payment_plan
          : payment_plan // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      discounts: null == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeDto extends _FeeDto {
  const _$_FeeDto(
      {required this.id,
      required this.payment_usd,
      required this.payment_usd_left,
      required this.paid,
      required this.fee_category,
      required final List<ObjectWithIdDto>? payment_plan,
      required final List<ObjectWithIdDto> discounts})
      : _payment_plan = payment_plan,
        _discounts = discounts,
        super._();

  factory _$_FeeDto.fromJson(Map<String, dynamic> json) =>
      _$$_FeeDtoFromJson(json);

  @override
  final int id;
  @override
  final double payment_usd;
  @override
  final double payment_usd_left;
  @override
  final double paid;
  @override
  final int fee_category;
  final List<ObjectWithIdDto>? _payment_plan;
  @override
  List<ObjectWithIdDto>? get payment_plan {
    final value = _payment_plan;
    if (value == null) return null;
    if (_payment_plan is EqualUnmodifiableListView) return _payment_plan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ObjectWithIdDto> _discounts;
  @override
  List<ObjectWithIdDto> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'FeeDto(id: $id, payment_usd: $payment_usd, payment_usd_left: $payment_usd_left, paid: $paid, fee_category: $fee_category, payment_plan: $payment_plan, discounts: $discounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payment_usd, payment_usd) ||
                other.payment_usd == payment_usd) &&
            (identical(other.payment_usd_left, payment_usd_left) ||
                other.payment_usd_left == payment_usd_left) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.fee_category, fee_category) ||
                other.fee_category == fee_category) &&
            const DeepCollectionEquality()
                .equals(other._payment_plan, _payment_plan) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      payment_usd,
      payment_usd_left,
      paid,
      fee_category,
      const DeepCollectionEquality().hash(_payment_plan),
      const DeepCollectionEquality().hash(_discounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDtoCopyWith<_$_FeeDto> get copyWith =>
      __$$_FeeDtoCopyWithImpl<_$_FeeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeDtoToJson(
      this,
    );
  }
}

abstract class _FeeDto extends FeeDto {
  const factory _FeeDto(
      {required final int id,
      required final double payment_usd,
      required final double payment_usd_left,
      required final double paid,
      required final int fee_category,
      required final List<ObjectWithIdDto>? payment_plan,
      required final List<ObjectWithIdDto> discounts}) = _$_FeeDto;
  const _FeeDto._() : super._();

  factory _FeeDto.fromJson(Map<String, dynamic> json) = _$_FeeDto.fromJson;

  @override
  int get id;
  @override
  double get payment_usd;
  @override
  double get payment_usd_left;
  @override
  double get paid;
  @override
  int get fee_category;
  @override
  List<ObjectWithIdDto>? get payment_plan;
  @override
  List<ObjectWithIdDto> get discounts;
  @override
  @JsonKey(ignore: true)
  _$$_FeeDtoCopyWith<_$_FeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
