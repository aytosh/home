// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeDiscountDto _$FeeDiscountDtoFromJson(Map<String, dynamic> json) {
  return _FeeDiscountDto.fromJson(json);
}

/// @nodoc
mixin _$FeeDiscountDto {
  int get id => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeDiscountDtoCopyWith<FeeDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDiscountDtoCopyWith<$Res> {
  factory $FeeDiscountDtoCopyWith(
          FeeDiscountDto value, $Res Function(FeeDiscountDto) then) =
      _$FeeDiscountDtoCopyWithImpl<$Res, FeeDiscountDto>;
  @useResult
  $Res call({int id, int fee, int discount});
}

/// @nodoc
class _$FeeDiscountDtoCopyWithImpl<$Res, $Val extends FeeDiscountDto>
    implements $FeeDiscountDtoCopyWith<$Res> {
  _$FeeDiscountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fee = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeDiscountDtoCopyWith<$Res>
    implements $FeeDiscountDtoCopyWith<$Res> {
  factory _$$_FeeDiscountDtoCopyWith(
          _$_FeeDiscountDto value, $Res Function(_$_FeeDiscountDto) then) =
      __$$_FeeDiscountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int fee, int discount});
}

/// @nodoc
class __$$_FeeDiscountDtoCopyWithImpl<$Res>
    extends _$FeeDiscountDtoCopyWithImpl<$Res, _$_FeeDiscountDto>
    implements _$$_FeeDiscountDtoCopyWith<$Res> {
  __$$_FeeDiscountDtoCopyWithImpl(
      _$_FeeDiscountDto _value, $Res Function(_$_FeeDiscountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fee = null,
    Object? discount = null,
  }) {
    return _then(_$_FeeDiscountDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeDiscountDto extends _FeeDiscountDto {
  const _$_FeeDiscountDto(
      {required this.id, required this.fee, required this.discount})
      : super._();

  factory _$_FeeDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_FeeDiscountDtoFromJson(json);

  @override
  final int id;
  @override
  final int fee;
  @override
  final int discount;

  @override
  String toString() {
    return 'FeeDiscountDto(id: $id, fee: $fee, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDiscountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fee, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDiscountDtoCopyWith<_$_FeeDiscountDto> get copyWith =>
      __$$_FeeDiscountDtoCopyWithImpl<_$_FeeDiscountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeDiscountDtoToJson(
      this,
    );
  }
}

abstract class _FeeDiscountDto extends FeeDiscountDto {
  const factory _FeeDiscountDto(
      {required final int id,
      required final int fee,
      required final int discount}) = _$_FeeDiscountDto;
  const _FeeDiscountDto._() : super._();

  factory _FeeDiscountDto.fromJson(Map<String, dynamic> json) =
      _$_FeeDiscountDto.fromJson;

  @override
  int get id;
  @override
  int get fee;
  @override
  int get discount;
  @override
  @JsonKey(ignore: true)
  _$$_FeeDiscountDtoCopyWith<_$_FeeDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
