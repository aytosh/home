// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_discount_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeDiscountCategoryDto _$FeeDiscountCategoryDtoFromJson(
    Map<String, dynamic> json) {
  return _FeeDiscountCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$FeeDiscountCategoryDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeDiscountCategoryDtoCopyWith<FeeDiscountCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDiscountCategoryDtoCopyWith<$Res> {
  factory $FeeDiscountCategoryDtoCopyWith(FeeDiscountCategoryDto value,
          $Res Function(FeeDiscountCategoryDto) then) =
      _$FeeDiscountCategoryDtoCopyWithImpl<$Res, FeeDiscountCategoryDto>;
  @useResult
  $Res call({int id, String title, String type, double value});
}

/// @nodoc
class _$FeeDiscountCategoryDtoCopyWithImpl<$Res,
        $Val extends FeeDiscountCategoryDto>
    implements $FeeDiscountCategoryDtoCopyWith<$Res> {
  _$FeeDiscountCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeDiscountCategoryDtoCopyWith<$Res>
    implements $FeeDiscountCategoryDtoCopyWith<$Res> {
  factory _$$_FeeDiscountCategoryDtoCopyWith(_$_FeeDiscountCategoryDto value,
          $Res Function(_$_FeeDiscountCategoryDto) then) =
      __$$_FeeDiscountCategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String type, double value});
}

/// @nodoc
class __$$_FeeDiscountCategoryDtoCopyWithImpl<$Res>
    extends _$FeeDiscountCategoryDtoCopyWithImpl<$Res,
        _$_FeeDiscountCategoryDto>
    implements _$$_FeeDiscountCategoryDtoCopyWith<$Res> {
  __$$_FeeDiscountCategoryDtoCopyWithImpl(_$_FeeDiscountCategoryDto _value,
      $Res Function(_$_FeeDiscountCategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$_FeeDiscountCategoryDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeDiscountCategoryDto extends _FeeDiscountCategoryDto {
  const _$_FeeDiscountCategoryDto(
      {required this.id,
      required this.title,
      required this.type,
      required this.value})
      : super._();

  factory _$_FeeDiscountCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_FeeDiscountCategoryDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String type;
  @override
  final double value;

  @override
  String toString() {
    return 'FeeDiscountCategoryDto(id: $id, title: $title, type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDiscountCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDiscountCategoryDtoCopyWith<_$_FeeDiscountCategoryDto> get copyWith =>
      __$$_FeeDiscountCategoryDtoCopyWithImpl<_$_FeeDiscountCategoryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeDiscountCategoryDtoToJson(
      this,
    );
  }
}

abstract class _FeeDiscountCategoryDto extends FeeDiscountCategoryDto {
  const factory _FeeDiscountCategoryDto(
      {required final int id,
      required final String title,
      required final String type,
      required final double value}) = _$_FeeDiscountCategoryDto;
  const _FeeDiscountCategoryDto._() : super._();

  factory _FeeDiscountCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_FeeDiscountCategoryDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get type;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_FeeDiscountCategoryDtoCopyWith<_$_FeeDiscountCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
