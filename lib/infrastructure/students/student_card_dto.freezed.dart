// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentCardDto _$StudentCardDtoFromJson(Map<String, dynamic> json) {
  return _StudentCardDto.fromJson(json);
}

/// @nodoc
mixin _$StudentCardDto {
  int get id => throw _privateConstructorUsedError;
  String get student_id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  GroupDto get group => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get admission_year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCardDtoCopyWith<StudentCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCardDtoCopyWith<$Res> {
  factory $StudentCardDtoCopyWith(
          StudentCardDto value, $Res Function(StudentCardDto) then) =
      _$StudentCardDtoCopyWithImpl<$Res, StudentCardDto>;
  @useResult
  $Res call(
      {int id,
      String student_id,
      String first_name,
      String last_name,
      GroupDto group,
      String status,
      String admission_year});

  $GroupDtoCopyWith<$Res> get group;
}

/// @nodoc
class _$StudentCardDtoCopyWithImpl<$Res, $Val extends StudentCardDto>
    implements $StudentCardDtoCopyWith<$Res> {
  _$StudentCardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student_id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? group = null,
    Object? status = null,
    Object? admission_year = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      admission_year: null == admission_year
          ? _value.admission_year
          : admission_year // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupDtoCopyWith<$Res> get group {
    return $GroupDtoCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentCardDtoCopyWith<$Res>
    implements $StudentCardDtoCopyWith<$Res> {
  factory _$$_StudentCardDtoCopyWith(
          _$_StudentCardDto value, $Res Function(_$_StudentCardDto) then) =
      __$$_StudentCardDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String student_id,
      String first_name,
      String last_name,
      GroupDto group,
      String status,
      String admission_year});

  @override
  $GroupDtoCopyWith<$Res> get group;
}

/// @nodoc
class __$$_StudentCardDtoCopyWithImpl<$Res>
    extends _$StudentCardDtoCopyWithImpl<$Res, _$_StudentCardDto>
    implements _$$_StudentCardDtoCopyWith<$Res> {
  __$$_StudentCardDtoCopyWithImpl(
      _$_StudentCardDto _value, $Res Function(_$_StudentCardDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student_id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? group = null,
    Object? status = null,
    Object? admission_year = null,
  }) {
    return _then(_$_StudentCardDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      admission_year: null == admission_year
          ? _value.admission_year
          : admission_year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentCardDto extends _StudentCardDto {
  const _$_StudentCardDto(
      {required this.id,
      required this.student_id,
      required this.first_name,
      required this.last_name,
      required this.group,
      required this.status,
      required this.admission_year})
      : super._();

  factory _$_StudentCardDto.fromJson(Map<String, dynamic> json) =>
      _$$_StudentCardDtoFromJson(json);

  @override
  final int id;
  @override
  final String student_id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final GroupDto group;
  @override
  final String status;
  @override
  final String admission_year;

  @override
  String toString() {
    return 'StudentCardDto(id: $id, student_id: $student_id, first_name: $first_name, last_name: $last_name, group: $group, status: $status, admission_year: $admission_year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentCardDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.admission_year, admission_year) ||
                other.admission_year == admission_year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, student_id, first_name,
      last_name, group, status, admission_year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCardDtoCopyWith<_$_StudentCardDto> get copyWith =>
      __$$_StudentCardDtoCopyWithImpl<_$_StudentCardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentCardDtoToJson(
      this,
    );
  }
}

abstract class _StudentCardDto extends StudentCardDto {
  const factory _StudentCardDto(
      {required final int id,
      required final String student_id,
      required final String first_name,
      required final String last_name,
      required final GroupDto group,
      required final String status,
      required final String admission_year}) = _$_StudentCardDto;
  const _StudentCardDto._() : super._();

  factory _StudentCardDto.fromJson(Map<String, dynamic> json) =
      _$_StudentCardDto.fromJson;

  @override
  int get id;
  @override
  String get student_id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  GroupDto get group;
  @override
  String get status;
  @override
  String get admission_year;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCardDtoCopyWith<_$_StudentCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}
