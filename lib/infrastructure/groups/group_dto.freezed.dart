// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupDto _$GroupDtoFromJson(Map<String, dynamic> json) {
  return _GroupDto.fromJson(json);
}

/// @nodoc
mixin _$GroupDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get session => throw _privateConstructorUsedError;
  String get class_category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDtoCopyWith<GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDtoCopyWith<$Res> {
  factory $GroupDtoCopyWith(GroupDto value, $Res Function(GroupDto) then) =
      _$GroupDtoCopyWithImpl<$Res, GroupDto>;
  @useResult
  $Res call({int id, String title, String session, String class_category});
}

/// @nodoc
class _$GroupDtoCopyWithImpl<$Res, $Val extends GroupDto>
    implements $GroupDtoCopyWith<$Res> {
  _$GroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? session = null,
    Object? class_category = null,
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
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      class_category: null == class_category
          ? _value.class_category
          : class_category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupDtoCopyWith<$Res> implements $GroupDtoCopyWith<$Res> {
  factory _$$_GroupDtoCopyWith(
          _$_GroupDto value, $Res Function(_$_GroupDto) then) =
      __$$_GroupDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String session, String class_category});
}

/// @nodoc
class __$$_GroupDtoCopyWithImpl<$Res>
    extends _$GroupDtoCopyWithImpl<$Res, _$_GroupDto>
    implements _$$_GroupDtoCopyWith<$Res> {
  __$$_GroupDtoCopyWithImpl(
      _$_GroupDto _value, $Res Function(_$_GroupDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? session = null,
    Object? class_category = null,
  }) {
    return _then(_$_GroupDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      class_category: null == class_category
          ? _value.class_category
          : class_category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupDto extends _GroupDto {
  const _$_GroupDto(
      {required this.id,
      required this.title,
      required this.session,
      required this.class_category})
      : super._();

  factory _$_GroupDto.fromJson(Map<String, dynamic> json) =>
      _$$_GroupDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String session;
  @override
  final String class_category;

  @override
  String toString() {
    return 'GroupDto(id: $id, title: $title, session: $session, class_category: $class_category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.class_category, class_category) ||
                other.class_category == class_category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, session, class_category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupDtoCopyWith<_$_GroupDto> get copyWith =>
      __$$_GroupDtoCopyWithImpl<_$_GroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupDtoToJson(
      this,
    );
  }
}

abstract class _GroupDto extends GroupDto {
  const factory _GroupDto(
      {required final int id,
      required final String title,
      required final String session,
      required final String class_category}) = _$_GroupDto;
  const _GroupDto._() : super._();

  factory _GroupDto.fromJson(Map<String, dynamic> json) = _$_GroupDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get session;
  @override
  String get class_category;
  @override
  @JsonKey(ignore: true)
  _$$_GroupDtoCopyWith<_$_GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}
