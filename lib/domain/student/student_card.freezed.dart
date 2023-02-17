// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentCard {
  int get id => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  Group get group => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get admissionYear => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentCardCopyWith<StudentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCardCopyWith<$Res> {
  factory $StudentCardCopyWith(
          StudentCard value, $Res Function(StudentCard) then) =
      _$StudentCardCopyWithImpl<$Res, StudentCard>;
  @useResult
  $Res call(
      {int id,
      String studentId,
      String firstName,
      String lastName,
      Group group,
      String status,
      String admissionYear});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class _$StudentCardCopyWithImpl<$Res, $Val extends StudentCard>
    implements $StudentCardCopyWith<$Res> {
  _$StudentCardCopyWithImpl(this._value, this._then);

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
    Object? group = null,
    Object? status = null,
    Object? admissionYear = null,
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
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      admissionYear: null == admissionYear
          ? _value.admissionYear
          : admissionYear // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_StudentCardCopyWith<$Res>
    implements $StudentCardCopyWith<$Res> {
  factory _$$_StudentCardCopyWith(
          _$_StudentCard value, $Res Function(_$_StudentCard) then) =
      __$$_StudentCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String studentId,
      String firstName,
      String lastName,
      Group group,
      String status,
      String admissionYear});

  @override
  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$_StudentCardCopyWithImpl<$Res>
    extends _$StudentCardCopyWithImpl<$Res, _$_StudentCard>
    implements _$$_StudentCardCopyWith<$Res> {
  __$$_StudentCardCopyWithImpl(
      _$_StudentCard _value, $Res Function(_$_StudentCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? group = null,
    Object? status = null,
    Object? admissionYear = null,
  }) {
    return _then(_$_StudentCard(
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
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      admissionYear: null == admissionYear
          ? _value.admissionYear
          : admissionYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StudentCard extends _StudentCard {
  const _$_StudentCard(
      {required this.id,
      required this.studentId,
      required this.firstName,
      required this.lastName,
      required this.group,
      required this.status,
      required this.admissionYear})
      : super._();

  @override
  final int id;
  @override
  final String studentId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final Group group;
  @override
  final String status;
  @override
  final String admissionYear;

  @override
  String toString() {
    return 'StudentCard(id: $id, studentId: $studentId, firstName: $firstName, lastName: $lastName, group: $group, status: $status, admissionYear: $admissionYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.admissionYear, admissionYear) ||
                other.admissionYear == admissionYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, studentId, firstName,
      lastName, group, status, admissionYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCardCopyWith<_$_StudentCard> get copyWith =>
      __$$_StudentCardCopyWithImpl<_$_StudentCard>(this, _$identity);
}

abstract class _StudentCard extends StudentCard {
  const factory _StudentCard(
      {required final int id,
      required final String studentId,
      required final String firstName,
      required final String lastName,
      required final Group group,
      required final String status,
      required final String admissionYear}) = _$_StudentCard;
  const _StudentCard._() : super._();

  @override
  int get id;
  @override
  String get studentId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  Group get group;
  @override
  String get status;
  @override
  String get admissionYear;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCardCopyWith<_$_StudentCard> get copyWith =>
      throw _privateConstructorUsedError;
}
