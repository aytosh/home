// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentDto _$StudentDtoFromJson(Map<String, dynamic> json) {
  return _StudentDto.fromJson(json);
}

/// @nodoc
mixin _$StudentDto {
  int get id => throw _privateConstructorUsedError;
  String get student_id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  GroupDto get group => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get admission_year => throw _privateConstructorUsedError;
  List<ObjectWithIdDto>? get family_members =>
      throw _privateConstructorUsedError;
  List<ObjectWithIdDto>? get payments => throw _privateConstructorUsedError;
  ObjectWithIdDto? get fee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentDtoCopyWith<StudentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDtoCopyWith<$Res> {
  factory $StudentDtoCopyWith(
          StudentDto value, $Res Function(StudentDto) then) =
      _$StudentDtoCopyWithImpl<$Res, StudentDto>;
  @useResult
  $Res call(
      {int id,
      String student_id,
      String first_name,
      String last_name,
      String patronymic,
      String gender,
      String birthday,
      GroupDto group,
      String status,
      String admission_year,
      List<ObjectWithIdDto>? family_members,
      List<ObjectWithIdDto>? payments,
      ObjectWithIdDto? fee});

  $GroupDtoCopyWith<$Res> get group;
  $ObjectWithIdDtoCopyWith<$Res>? get fee;
}

/// @nodoc
class _$StudentDtoCopyWithImpl<$Res, $Val extends StudentDto>
    implements $StudentDtoCopyWith<$Res> {
  _$StudentDtoCopyWithImpl(this._value, this._then);

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
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? group = null,
    Object? status = null,
    Object? admission_year = null,
    Object? family_members = freezed,
    Object? payments = freezed,
    Object? fee = freezed,
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
      family_members: freezed == family_members
          ? _value.family_members
          : family_members // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as ObjectWithIdDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupDtoCopyWith<$Res> get group {
    return $GroupDtoCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ObjectWithIdDtoCopyWith<$Res>? get fee {
    if (_value.fee == null) {
      return null;
    }

    return $ObjectWithIdDtoCopyWith<$Res>(_value.fee!, (value) {
      return _then(_value.copyWith(fee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentDtoCopyWith<$Res>
    implements $StudentDtoCopyWith<$Res> {
  factory _$$_StudentDtoCopyWith(
          _$_StudentDto value, $Res Function(_$_StudentDto) then) =
      __$$_StudentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String student_id,
      String first_name,
      String last_name,
      String patronymic,
      String gender,
      String birthday,
      GroupDto group,
      String status,
      String admission_year,
      List<ObjectWithIdDto>? family_members,
      List<ObjectWithIdDto>? payments,
      ObjectWithIdDto? fee});

  @override
  $GroupDtoCopyWith<$Res> get group;
  @override
  $ObjectWithIdDtoCopyWith<$Res>? get fee;
}

/// @nodoc
class __$$_StudentDtoCopyWithImpl<$Res>
    extends _$StudentDtoCopyWithImpl<$Res, _$_StudentDto>
    implements _$$_StudentDtoCopyWith<$Res> {
  __$$_StudentDtoCopyWithImpl(
      _$_StudentDto _value, $Res Function(_$_StudentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student_id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? group = null,
    Object? status = null,
    Object? admission_year = null,
    Object? family_members = freezed,
    Object? payments = freezed,
    Object? fee = freezed,
  }) {
    return _then(_$_StudentDto(
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
      family_members: freezed == family_members
          ? _value._family_members
          : family_members // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ObjectWithIdDto>?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as ObjectWithIdDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentDto extends _StudentDto {
  const _$_StudentDto(
      {required this.id,
      required this.student_id,
      required this.first_name,
      required this.last_name,
      required this.patronymic,
      required this.gender,
      required this.birthday,
      required this.group,
      required this.status,
      required this.admission_year,
      final List<ObjectWithIdDto>? family_members,
      final List<ObjectWithIdDto>? payments,
      required this.fee})
      : _family_members = family_members,
        _payments = payments,
        super._();

  factory _$_StudentDto.fromJson(Map<String, dynamic> json) =>
      _$$_StudentDtoFromJson(json);

  @override
  final int id;
  @override
  final String student_id;
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
  final GroupDto group;
  @override
  final String status;
  @override
  final String admission_year;
  final List<ObjectWithIdDto>? _family_members;
  @override
  List<ObjectWithIdDto>? get family_members {
    final value = _family_members;
    if (value == null) return null;
    if (_family_members is EqualUnmodifiableListView) return _family_members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ObjectWithIdDto>? _payments;
  @override
  List<ObjectWithIdDto>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ObjectWithIdDto? fee;

  @override
  String toString() {
    return 'StudentDto(id: $id, student_id: $student_id, first_name: $first_name, last_name: $last_name, patronymic: $patronymic, gender: $gender, birthday: $birthday, group: $group, status: $status, admission_year: $admission_year, family_members: $family_members, payments: $payments, fee: $fee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.admission_year, admission_year) ||
                other.admission_year == admission_year) &&
            const DeepCollectionEquality()
                .equals(other._family_members, _family_members) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      student_id,
      first_name,
      last_name,
      patronymic,
      gender,
      birthday,
      group,
      status,
      admission_year,
      const DeepCollectionEquality().hash(_family_members),
      const DeepCollectionEquality().hash(_payments),
      fee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentDtoCopyWith<_$_StudentDto> get copyWith =>
      __$$_StudentDtoCopyWithImpl<_$_StudentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentDtoToJson(
      this,
    );
  }
}

abstract class _StudentDto extends StudentDto {
  const factory _StudentDto(
      {required final int id,
      required final String student_id,
      required final String first_name,
      required final String last_name,
      required final String patronymic,
      required final String gender,
      required final String birthday,
      required final GroupDto group,
      required final String status,
      required final String admission_year,
      final List<ObjectWithIdDto>? family_members,
      final List<ObjectWithIdDto>? payments,
      required final ObjectWithIdDto? fee}) = _$_StudentDto;
  const _StudentDto._() : super._();

  factory _StudentDto.fromJson(Map<String, dynamic> json) =
      _$_StudentDto.fromJson;

  @override
  int get id;
  @override
  String get student_id;
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
  GroupDto get group;
  @override
  String get status;
  @override
  String get admission_year;
  @override
  List<ObjectWithIdDto>? get family_members;
  @override
  List<ObjectWithIdDto>? get payments;
  @override
  ObjectWithIdDto? get fee;
  @override
  @JsonKey(ignore: true)
  _$$_StudentDtoCopyWith<_$_StudentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
