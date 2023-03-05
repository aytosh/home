// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Student {
  int get id => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  Group get group => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String get admissionYear => throw _privateConstructorUsedError;
  int? get feeId => throw _privateConstructorUsedError;
  List<int>? get familyMemberIds => throw _privateConstructorUsedError;
  List<int>? get paymentIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {int id,
      String studentId,
      String firstName,
      String lastName,
      String patronymic,
      Gender gender,
      String birthday,
      Group group,
      Status status,
      String admissionYear,
      int? feeId,
      List<int>? familyMemberIds,
      List<int>? paymentIds});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? group = null,
    Object? status = null,
    Object? admissionYear = null,
    Object? feeId = freezed,
    Object? familyMemberIds = freezed,
    Object? paymentIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      admissionYear: null == admissionYear
          ? _value.admissionYear
          : admissionYear // ignore: cast_nullable_to_non_nullable
              as String,
      feeId: freezed == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int?,
      familyMemberIds: freezed == familyMemberIds
          ? _value.familyMemberIds
          : familyMemberIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      paymentIds: freezed == paymentIds
          ? _value.paymentIds
          : paymentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$_StudentCopyWith(
          _$_Student value, $Res Function(_$_Student) then) =
      __$$_StudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String studentId,
      String firstName,
      String lastName,
      String patronymic,
      Gender gender,
      String birthday,
      Group group,
      Status status,
      String admissionYear,
      int? feeId,
      List<int>? familyMemberIds,
      List<int>? paymentIds});

  @override
  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$_StudentCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$_Student>
    implements _$$_StudentCopyWith<$Res> {
  __$$_StudentCopyWithImpl(_$_Student _value, $Res Function(_$_Student) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? patronymic = null,
    Object? gender = null,
    Object? birthday = null,
    Object? group = null,
    Object? status = null,
    Object? admissionYear = null,
    Object? feeId = freezed,
    Object? familyMemberIds = freezed,
    Object? paymentIds = freezed,
  }) {
    return _then(_$_Student(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      admissionYear: null == admissionYear
          ? _value.admissionYear
          : admissionYear // ignore: cast_nullable_to_non_nullable
              as String,
      feeId: freezed == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int?,
      familyMemberIds: freezed == familyMemberIds
          ? _value._familyMemberIds
          : familyMemberIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      paymentIds: freezed == paymentIds
          ? _value._paymentIds
          : paymentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_Student extends _Student {
  const _$_Student(
      {required this.id,
      required this.studentId,
      required this.firstName,
      required this.lastName,
      required this.patronymic,
      required this.gender,
      required this.birthday,
      required this.group,
      required this.status,
      required this.admissionYear,
      this.feeId,
      final List<int>? familyMemberIds,
      final List<int>? paymentIds})
      : _familyMemberIds = familyMemberIds,
        _paymentIds = paymentIds,
        super._();

  @override
  final int id;
  @override
  final String studentId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String patronymic;
  @override
  final Gender gender;
  @override
  final String birthday;
  @override
  final Group group;
  @override
  final Status status;
  @override
  final String admissionYear;
  @override
  final int? feeId;
  final List<int>? _familyMemberIds;
  @override
  List<int>? get familyMemberIds {
    final value = _familyMemberIds;
    if (value == null) return null;
    if (_familyMemberIds is EqualUnmodifiableListView) return _familyMemberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _paymentIds;
  @override
  List<int>? get paymentIds {
    final value = _paymentIds;
    if (value == null) return null;
    if (_paymentIds is EqualUnmodifiableListView) return _paymentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Student(id: $id, studentId: $studentId, firstName: $firstName, lastName: $lastName, patronymic: $patronymic, gender: $gender, birthday: $birthday, group: $group, status: $status, admissionYear: $admissionYear, feeId: $feeId, familyMemberIds: $familyMemberIds, paymentIds: $paymentIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Student &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.admissionYear, admissionYear) ||
                other.admissionYear == admissionYear) &&
            (identical(other.feeId, feeId) || other.feeId == feeId) &&
            const DeepCollectionEquality()
                .equals(other._familyMemberIds, _familyMemberIds) &&
            const DeepCollectionEquality()
                .equals(other._paymentIds, _paymentIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      studentId,
      firstName,
      lastName,
      patronymic,
      gender,
      birthday,
      group,
      status,
      admissionYear,
      feeId,
      const DeepCollectionEquality().hash(_familyMemberIds),
      const DeepCollectionEquality().hash(_paymentIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      __$$_StudentCopyWithImpl<_$_Student>(this, _$identity);
}

abstract class _Student extends Student {
  const factory _Student(
      {required final int id,
      required final String studentId,
      required final String firstName,
      required final String lastName,
      required final String patronymic,
      required final Gender gender,
      required final String birthday,
      required final Group group,
      required final Status status,
      required final String admissionYear,
      final int? feeId,
      final List<int>? familyMemberIds,
      final List<int>? paymentIds}) = _$_Student;
  const _Student._() : super._();

  @override
  int get id;
  @override
  String get studentId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get patronymic;
  @override
  Gender get gender;
  @override
  String get birthday;
  @override
  Group get group;
  @override
  Status get status;
  @override
  String get admissionYear;
  @override
  int? get feeId;
  @override
  List<int>? get familyMemberIds;
  @override
  List<int>? get paymentIds;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      throw _privateConstructorUsedError;
}
