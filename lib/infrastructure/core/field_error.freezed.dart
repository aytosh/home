// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FieldError _$FieldErrorFromJson(Map<String, dynamic> json) {
  return _FieldError.fromJson(json);
}

/// @nodoc
mixin _$FieldError {
  String get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldErrorCopyWith<FieldError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldErrorCopyWith<$Res> {
  factory $FieldErrorCopyWith(
          FieldError value, $Res Function(FieldError) then) =
      _$FieldErrorCopyWithImpl<$Res, FieldError>;
  @useResult
  $Res call({String detail});
}

/// @nodoc
class _$FieldErrorCopyWithImpl<$Res, $Val extends FieldError>
    implements $FieldErrorCopyWith<$Res> {
  _$FieldErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FieldErrorCopyWith<$Res>
    implements $FieldErrorCopyWith<$Res> {
  factory _$$_FieldErrorCopyWith(
          _$_FieldError value, $Res Function(_$_FieldError) then) =
      __$$_FieldErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String detail});
}

/// @nodoc
class __$$_FieldErrorCopyWithImpl<$Res>
    extends _$FieldErrorCopyWithImpl<$Res, _$_FieldError>
    implements _$$_FieldErrorCopyWith<$Res> {
  __$$_FieldErrorCopyWithImpl(
      _$_FieldError _value, $Res Function(_$_FieldError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$_FieldError(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldError extends _FieldError {
  const _$_FieldError({required this.detail}) : super._();

  factory _$_FieldError.fromJson(Map<String, dynamic> json) =>
      _$$_FieldErrorFromJson(json);

  @override
  final String detail;

  @override
  String toString() {
    return 'FieldError(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldError &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldErrorCopyWith<_$_FieldError> get copyWith =>
      __$$_FieldErrorCopyWithImpl<_$_FieldError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldErrorToJson(
      this,
    );
  }
}

abstract class _FieldError extends FieldError {
  const factory _FieldError({required final String detail}) = _$_FieldError;
  const _FieldError._() : super._();

  factory _FieldError.fromJson(Map<String, dynamic> json) =
      _$_FieldError.fromJson;

  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$$_FieldErrorCopyWith<_$_FieldError> get copyWith =>
      throw _privateConstructorUsedError;
}
