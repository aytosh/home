// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_discount_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeeDiscountCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeeDiscountCategoryCopyWith<FeeDiscountCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDiscountCategoryCopyWith<$Res> {
  factory $FeeDiscountCategoryCopyWith(
          FeeDiscountCategory value, $Res Function(FeeDiscountCategory) then) =
      _$FeeDiscountCategoryCopyWithImpl<$Res, FeeDiscountCategory>;
  @useResult
  $Res call({int id, String title, String type, double value});
}

/// @nodoc
class _$FeeDiscountCategoryCopyWithImpl<$Res, $Val extends FeeDiscountCategory>
    implements $FeeDiscountCategoryCopyWith<$Res> {
  _$FeeDiscountCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$_FeeDiscountCategoryCopyWith<$Res>
    implements $FeeDiscountCategoryCopyWith<$Res> {
  factory _$$_FeeDiscountCategoryCopyWith(_$_FeeDiscountCategory value,
          $Res Function(_$_FeeDiscountCategory) then) =
      __$$_FeeDiscountCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String type, double value});
}

/// @nodoc
class __$$_FeeDiscountCategoryCopyWithImpl<$Res>
    extends _$FeeDiscountCategoryCopyWithImpl<$Res, _$_FeeDiscountCategory>
    implements _$$_FeeDiscountCategoryCopyWith<$Res> {
  __$$_FeeDiscountCategoryCopyWithImpl(_$_FeeDiscountCategory _value,
      $Res Function(_$_FeeDiscountCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$_FeeDiscountCategory(
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

class _$_FeeDiscountCategory extends _FeeDiscountCategory {
  const _$_FeeDiscountCategory(
      {required this.id,
      required this.title,
      required this.type,
      required this.value})
      : super._();

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
    return 'FeeDiscountCategory(id: $id, title: $title, type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDiscountCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDiscountCategoryCopyWith<_$_FeeDiscountCategory> get copyWith =>
      __$$_FeeDiscountCategoryCopyWithImpl<_$_FeeDiscountCategory>(
          this, _$identity);
}

abstract class _FeeDiscountCategory extends FeeDiscountCategory {
  const factory _FeeDiscountCategory(
      {required final int id,
      required final String title,
      required final String type,
      required final double value}) = _$_FeeDiscountCategory;
  const _FeeDiscountCategory._() : super._();

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
  _$$_FeeDiscountCategoryCopyWith<_$_FeeDiscountCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
