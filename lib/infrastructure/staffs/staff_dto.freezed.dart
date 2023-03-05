// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StaffDto _$StaffDtoFromJson(Map<String, dynamic> json) {
  return _StaffDto.fromJson(json);
}

/// @nodoc
mixin _$StaffDto {
  int get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffDtoCopyWith<StaffDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDtoCopyWith<$Res> {
  factory $StaffDtoCopyWith(StaffDto value, $Res Function(StaffDto) then) =
      _$StaffDtoCopyWithImpl<$Res, StaffDto>;
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String patronymic,
      String gender,
      String birthday,
      String status,
      String specialty});
}

/// @nodoc
class _$StaffDtoCopyWithImpl<$Res, $Val extends StaffDto>
    implements $StaffDtoCopyWith<$Res> {
  _$StaffDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? status = null,
    Object? specialty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffDtoCopyWith<$Res> implements $StaffDtoCopyWith<$Res> {
  factory _$$_StaffDtoCopyWith(
          _$_StaffDto value, $Res Function(_$_StaffDto) then) =
      __$$_StaffDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String patronymic,
      String gender,
      String birthday,
      String status,
      String specialty});
}

/// @nodoc
class __$$_StaffDtoCopyWithImpl<$Res>
    extends _$StaffDtoCopyWithImpl<$Res, _$_StaffDto>
    implements _$$_StaffDtoCopyWith<$Res> {
  __$$_StaffDtoCopyWithImpl(
      _$_StaffDto _value, $Res Function(_$_StaffDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? status = null,
    Object? specialty = null,
  }) {
    return _then(_$_StaffDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffDto extends _StaffDto {
  const _$_StaffDto(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.patronymic,
      required this.gender,
      required this.birthday,
      required this.status,
      required this.specialty})
      : super._();

  factory _$_StaffDto.fromJson(Map<String, dynamic> json) =>
      _$$_StaffDtoFromJson(json);

  @override
  final int id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String patronymic;
  @override
  final String gender;
  @override
  final String birthday;
  @override
  final String status;
  @override
  final String specialty;

  @override
  String toString() {
    return 'StaffDto(id: $id, first_name: $first_name, last_name: $last_name, patronymic: $patronymic, gender: $gender, birthday: $birthday, status: $status, specialty: $specialty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, first_name, last_name,
      patronymic, gender, birthday, status, specialty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffDtoCopyWith<_$_StaffDto> get copyWith =>
      __$$_StaffDtoCopyWithImpl<_$_StaffDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffDtoToJson(
      this,
    );
  }
}

abstract class _StaffDto extends StaffDto {
  const factory _StaffDto(
      {required final int id,
      required final String first_name,
      required final String last_name,
      required final String patronymic,
      required final String gender,
      required final String birthday,
      required final String status,
      required final String specialty}) = _$_StaffDto;
  const _StaffDto._() : super._();

  factory _StaffDto.fromJson(Map<String, dynamic> json) = _$_StaffDto.fromJson;

  @override
  int get id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get patronymic;
  @override
  String get gender;
  @override
  String get birthday;
  @override
  String get status;
  @override
  String get specialty;
  @override
  @JsonKey(ignore: true)
  _$$_StaffDtoCopyWith<_$_StaffDto> get copyWith =>
      throw _privateConstructorUsedError;
}
