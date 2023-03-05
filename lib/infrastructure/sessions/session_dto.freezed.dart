// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) {
  return _SessionDto.fromJson(json);
}

/// @nodoc
mixin _$SessionDto {
  String get slug => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDtoCopyWith<SessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDtoCopyWith<$Res> {
  factory $SessionDtoCopyWith(
          SessionDto value, $Res Function(SessionDto) then) =
      _$SessionDtoCopyWithImpl<$Res, SessionDto>;
  @useResult
  $Res call({String slug, String title});
}

/// @nodoc
class _$SessionDtoCopyWithImpl<$Res, $Val extends SessionDto>
    implements $SessionDtoCopyWith<$Res> {
  _$SessionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionDtoCopyWith<$Res>
    implements $SessionDtoCopyWith<$Res> {
  factory _$$_SessionDtoCopyWith(
          _$_SessionDto value, $Res Function(_$_SessionDto) then) =
      __$$_SessionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug, String title});
}

/// @nodoc
class __$$_SessionDtoCopyWithImpl<$Res>
    extends _$SessionDtoCopyWithImpl<$Res, _$_SessionDto>
    implements _$$_SessionDtoCopyWith<$Res> {
  __$$_SessionDtoCopyWithImpl(
      _$_SessionDto _value, $Res Function(_$_SessionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? title = null,
  }) {
    return _then(_$_SessionDto(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionDto extends _SessionDto {
  const _$_SessionDto({required this.slug, required this.title}) : super._();

  factory _$_SessionDto.fromJson(Map<String, dynamic> json) =>
      _$$_SessionDtoFromJson(json);

  @override
  final String slug;
  @override
  final String title;

  @override
  String toString() {
    return 'SessionDto(slug: $slug, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionDto &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionDtoCopyWith<_$_SessionDto> get copyWith =>
      __$$_SessionDtoCopyWithImpl<_$_SessionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionDtoToJson(
      this,
    );
  }
}

abstract class _SessionDto extends SessionDto {
  const factory _SessionDto(
      {required final String slug,
      required final String title}) = _$_SessionDto;
  const _SessionDto._() : super._();

  factory _SessionDto.fromJson(Map<String, dynamic> json) =
      _$_SessionDto.fromJson;

  @override
  String get slug;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SessionDtoCopyWith<_$_SessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
