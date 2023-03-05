// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyMemberDto _$FamilyMemberDtoFromJson(Map<String, dynamic> json) {
  return _FamilyMemberDto.fromJson(json);
}

/// @nodoc
mixin _$FamilyMemberDto {
  int get id => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get who => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get id_passport => throw _privateConstructorUsedError;
  String get work_place => throw _privateConstructorUsedError;
  bool get is_responsible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyMemberDtoCopyWith<FamilyMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMemberDtoCopyWith<$Res> {
  factory $FamilyMemberDtoCopyWith(
          FamilyMemberDto value, $Res Function(FamilyMemberDto) then) =
      _$FamilyMemberDtoCopyWithImpl<$Res, FamilyMemberDto>;
  @useResult
  $Res call(
      {int id,
      String fullname,
      String who,
      String address,
      String phone_number,
      String id_passport,
      String work_place,
      bool is_responsible});
}

/// @nodoc
class _$FamilyMemberDtoCopyWithImpl<$Res, $Val extends FamilyMemberDto>
    implements $FamilyMemberDtoCopyWith<$Res> {
  _$FamilyMemberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? who = null,
    Object? address = null,
    Object? phone_number = null,
    Object? id_passport = null,
    Object? work_place = null,
    Object? is_responsible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      id_passport: null == id_passport
          ? _value.id_passport
          : id_passport // ignore: cast_nullable_to_non_nullable
              as String,
      work_place: null == work_place
          ? _value.work_place
          : work_place // ignore: cast_nullable_to_non_nullable
              as String,
      is_responsible: null == is_responsible
          ? _value.is_responsible
          : is_responsible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FamilyMemberDtoCopyWith<$Res>
    implements $FamilyMemberDtoCopyWith<$Res> {
  factory _$$_FamilyMemberDtoCopyWith(
          _$_FamilyMemberDto value, $Res Function(_$_FamilyMemberDto) then) =
      __$$_FamilyMemberDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullname,
      String who,
      String address,
      String phone_number,
      String id_passport,
      String work_place,
      bool is_responsible});
}

/// @nodoc
class __$$_FamilyMemberDtoCopyWithImpl<$Res>
    extends _$FamilyMemberDtoCopyWithImpl<$Res, _$_FamilyMemberDto>
    implements _$$_FamilyMemberDtoCopyWith<$Res> {
  __$$_FamilyMemberDtoCopyWithImpl(
      _$_FamilyMemberDto _value, $Res Function(_$_FamilyMemberDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? who = null,
    Object? address = null,
    Object? phone_number = null,
    Object? id_passport = null,
    Object? work_place = null,
    Object? is_responsible = null,
  }) {
    return _then(_$_FamilyMemberDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      id_passport: null == id_passport
          ? _value.id_passport
          : id_passport // ignore: cast_nullable_to_non_nullable
              as String,
      work_place: null == work_place
          ? _value.work_place
          : work_place // ignore: cast_nullable_to_non_nullable
              as String,
      is_responsible: null == is_responsible
          ? _value.is_responsible
          : is_responsible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyMemberDto extends _FamilyMemberDto {
  const _$_FamilyMemberDto(
      {required this.id,
      required this.fullname,
      required this.who,
      required this.address,
      required this.phone_number,
      required this.id_passport,
      required this.work_place,
      required this.is_responsible})
      : super._();

  factory _$_FamilyMemberDto.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyMemberDtoFromJson(json);

  @override
  final int id;
  @override
  final String fullname;
  @override
  final String who;
  @override
  final String address;
  @override
  final String phone_number;
  @override
  final String id_passport;
  @override
  final String work_place;
  @override
  final bool is_responsible;

  @override
  String toString() {
    return 'FamilyMemberDto(id: $id, fullname: $fullname, who: $who, address: $address, phone_number: $phone_number, id_passport: $id_passport, work_place: $work_place, is_responsible: $is_responsible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyMemberDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.id_passport, id_passport) ||
                other.id_passport == id_passport) &&
            (identical(other.work_place, work_place) ||
                other.work_place == work_place) &&
            (identical(other.is_responsible, is_responsible) ||
                other.is_responsible == is_responsible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname, who, address,
      phone_number, id_passport, work_place, is_responsible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamilyMemberDtoCopyWith<_$_FamilyMemberDto> get copyWith =>
      __$$_FamilyMemberDtoCopyWithImpl<_$_FamilyMemberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyMemberDtoToJson(
      this,
    );
  }
}

abstract class _FamilyMemberDto extends FamilyMemberDto {
  const factory _FamilyMemberDto(
      {required final int id,
      required final String fullname,
      required final String who,
      required final String address,
      required final String phone_number,
      required final String id_passport,
      required final String work_place,
      required final bool is_responsible}) = _$_FamilyMemberDto;
  const _FamilyMemberDto._() : super._();

  factory _FamilyMemberDto.fromJson(Map<String, dynamic> json) =
      _$_FamilyMemberDto.fromJson;

  @override
  int get id;
  @override
  String get fullname;
  @override
  String get who;
  @override
  String get address;
  @override
  String get phone_number;
  @override
  String get id_passport;
  @override
  String get work_place;
  @override
  bool get is_responsible;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyMemberDtoCopyWith<_$_FamilyMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
