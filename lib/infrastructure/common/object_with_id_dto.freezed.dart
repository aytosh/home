// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_with_id_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObjectWithIdDto _$ObjectWithIdDtoFromJson(Map<String, dynamic> json) {
  return _ObjectWithIdDto.fromJson(json);
}

/// @nodoc
mixin _$ObjectWithIdDto {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectWithIdDtoCopyWith<ObjectWithIdDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectWithIdDtoCopyWith<$Res> {
  factory $ObjectWithIdDtoCopyWith(
          ObjectWithIdDto value, $Res Function(ObjectWithIdDto) then) =
      _$ObjectWithIdDtoCopyWithImpl<$Res, ObjectWithIdDto>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ObjectWithIdDtoCopyWithImpl<$Res, $Val extends ObjectWithIdDto>
    implements $ObjectWithIdDtoCopyWith<$Res> {
  _$ObjectWithIdDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObjectWithIdDtoCopyWith<$Res>
    implements $ObjectWithIdDtoCopyWith<$Res> {
  factory _$$_ObjectWithIdDtoCopyWith(
          _$_ObjectWithIdDto value, $Res Function(_$_ObjectWithIdDto) then) =
      __$$_ObjectWithIdDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ObjectWithIdDtoCopyWithImpl<$Res>
    extends _$ObjectWithIdDtoCopyWithImpl<$Res, _$_ObjectWithIdDto>
    implements _$$_ObjectWithIdDtoCopyWith<$Res> {
  __$$_ObjectWithIdDtoCopyWithImpl(
      _$_ObjectWithIdDto _value, $Res Function(_$_ObjectWithIdDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ObjectWithIdDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObjectWithIdDto extends _ObjectWithIdDto {
  const _$_ObjectWithIdDto({required this.id}) : super._();

  factory _$_ObjectWithIdDto.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectWithIdDtoFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ObjectWithIdDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectWithIdDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObjectWithIdDtoCopyWith<_$_ObjectWithIdDto> get copyWith =>
      __$$_ObjectWithIdDtoCopyWithImpl<_$_ObjectWithIdDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObjectWithIdDtoToJson(
      this,
    );
  }
}

abstract class _ObjectWithIdDto extends ObjectWithIdDto {
  const factory _ObjectWithIdDto({required final int id}) = _$_ObjectWithIdDto;
  const _ObjectWithIdDto._() : super._();

  factory _ObjectWithIdDto.fromJson(Map<String, dynamic> json) =
      _$_ObjectWithIdDto.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ObjectWithIdDtoCopyWith<_$_ObjectWithIdDto> get copyWith =>
      throw _privateConstructorUsedError;
}
