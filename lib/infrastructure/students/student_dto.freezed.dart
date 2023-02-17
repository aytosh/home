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
  List<FamilyMemberDto> get family_members =>
      throw _privateConstructorUsedError;
  List<FeeDto> get fee => throw _privateConstructorUsedError;
  List<PaymentDto> get payments => throw _privateConstructorUsedError;

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
      List<FamilyMemberDto> family_members,
      List<FeeDto> fee,
      List<PaymentDto> payments});

  $GroupDtoCopyWith<$Res> get group;
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
    Object? family_members = null,
    Object? fee = null,
    Object? payments = null,
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
      family_members: null == family_members
          ? _value.family_members
          : family_members // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberDto>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as List<FeeDto>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
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
      List<FamilyMemberDto> family_members,
      List<FeeDto> fee,
      List<PaymentDto> payments});

  @override
  $GroupDtoCopyWith<$Res> get group;
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
    Object? family_members = null,
    Object? fee = null,
    Object? payments = null,
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
      family_members: null == family_members
          ? _value._family_members
          : family_members // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberDto>,
      fee: null == fee
          ? _value._fee
          : fee // ignore: cast_nullable_to_non_nullable
              as List<FeeDto>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
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
      required final List<FamilyMemberDto> family_members,
      required final List<FeeDto> fee,
      required final List<PaymentDto> payments})
      : _family_members = family_members,
        _fee = fee,
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
  final List<FamilyMemberDto> _family_members;
  @override
  List<FamilyMemberDto> get family_members {
    if (_family_members is EqualUnmodifiableListView) return _family_members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_family_members);
  }

  final List<FeeDto> _fee;
  @override
  List<FeeDto> get fee {
    if (_fee is EqualUnmodifiableListView) return _fee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fee);
  }

  final List<PaymentDto> _payments;
  @override
  List<PaymentDto> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'StudentDto(id: $id, student_id: $student_id, first_name: $first_name, last_name: $last_name, patronymic: $patronymic, gender: $gender, birthday: $birthday, group: $group, status: $status, admission_year: $admission_year, family_members: $family_members, fee: $fee, payments: $payments)';
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
            const DeepCollectionEquality().equals(other._fee, _fee) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
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
      const DeepCollectionEquality().hash(_fee),
      const DeepCollectionEquality().hash(_payments));

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
      required final List<FamilyMemberDto> family_members,
      required final List<FeeDto> fee,
      required final List<PaymentDto> payments}) = _$_StudentDto;
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
  List<FamilyMemberDto> get family_members;
  @override
  List<FeeDto> get fee;
  @override
  List<PaymentDto> get payments;
  @override
  @JsonKey(ignore: true)
  _$$_StudentDtoCopyWith<_$_StudentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

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

FeeDto _$FeeDtoFromJson(Map<String, dynamic> json) {
  return _FeeDto.fromJson(json);
}

/// @nodoc
mixin _$FeeDto {
  int get id => throw _privateConstructorUsedError;
  double get payment_usd => throw _privateConstructorUsedError;
  double get payment_usd_left => throw _privateConstructorUsedError;
  double get paid => throw _privateConstructorUsedError;
  int get fee_category => throw _privateConstructorUsedError;
  List<PaymentPlanDto> get payment_plan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeDtoCopyWith<FeeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDtoCopyWith<$Res> {
  factory $FeeDtoCopyWith(FeeDto value, $Res Function(FeeDto) then) =
      _$FeeDtoCopyWithImpl<$Res, FeeDto>;
  @useResult
  $Res call(
      {int id,
      double payment_usd,
      double payment_usd_left,
      double paid,
      int fee_category,
      List<PaymentPlanDto> payment_plan});
}

/// @nodoc
class _$FeeDtoCopyWithImpl<$Res, $Val extends FeeDto>
    implements $FeeDtoCopyWith<$Res> {
  _$FeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_usd = null,
    Object? payment_usd_left = null,
    Object? paid = null,
    Object? fee_category = null,
    Object? payment_plan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_usd: null == payment_usd
          ? _value.payment_usd
          : payment_usd // ignore: cast_nullable_to_non_nullable
              as double,
      payment_usd_left: null == payment_usd_left
          ? _value.payment_usd_left
          : payment_usd_left // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      fee_category: null == fee_category
          ? _value.fee_category
          : fee_category // ignore: cast_nullable_to_non_nullable
              as int,
      payment_plan: null == payment_plan
          ? _value.payment_plan
          : payment_plan // ignore: cast_nullable_to_non_nullable
              as List<PaymentPlanDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeDtoCopyWith<$Res> implements $FeeDtoCopyWith<$Res> {
  factory _$$_FeeDtoCopyWith(_$_FeeDto value, $Res Function(_$_FeeDto) then) =
      __$$_FeeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double payment_usd,
      double payment_usd_left,
      double paid,
      int fee_category,
      List<PaymentPlanDto> payment_plan});
}

/// @nodoc
class __$$_FeeDtoCopyWithImpl<$Res>
    extends _$FeeDtoCopyWithImpl<$Res, _$_FeeDto>
    implements _$$_FeeDtoCopyWith<$Res> {
  __$$_FeeDtoCopyWithImpl(_$_FeeDto _value, $Res Function(_$_FeeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_usd = null,
    Object? payment_usd_left = null,
    Object? paid = null,
    Object? fee_category = null,
    Object? payment_plan = null,
  }) {
    return _then(_$_FeeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_usd: null == payment_usd
          ? _value.payment_usd
          : payment_usd // ignore: cast_nullable_to_non_nullable
              as double,
      payment_usd_left: null == payment_usd_left
          ? _value.payment_usd_left
          : payment_usd_left // ignore: cast_nullable_to_non_nullable
              as double,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as double,
      fee_category: null == fee_category
          ? _value.fee_category
          : fee_category // ignore: cast_nullable_to_non_nullable
              as int,
      payment_plan: null == payment_plan
          ? _value._payment_plan
          : payment_plan // ignore: cast_nullable_to_non_nullable
              as List<PaymentPlanDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeDto extends _FeeDto {
  const _$_FeeDto(
      {required this.id,
      required this.payment_usd,
      required this.payment_usd_left,
      required this.paid,
      required this.fee_category,
      required final List<PaymentPlanDto> payment_plan})
      : _payment_plan = payment_plan,
        super._();

  factory _$_FeeDto.fromJson(Map<String, dynamic> json) =>
      _$$_FeeDtoFromJson(json);

  @override
  final int id;
  @override
  final double payment_usd;
  @override
  final double payment_usd_left;
  @override
  final double paid;
  @override
  final int fee_category;
  final List<PaymentPlanDto> _payment_plan;
  @override
  List<PaymentPlanDto> get payment_plan {
    if (_payment_plan is EqualUnmodifiableListView) return _payment_plan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment_plan);
  }

  @override
  String toString() {
    return 'FeeDto(id: $id, payment_usd: $payment_usd, payment_usd_left: $payment_usd_left, paid: $paid, fee_category: $fee_category, payment_plan: $payment_plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payment_usd, payment_usd) ||
                other.payment_usd == payment_usd) &&
            (identical(other.payment_usd_left, payment_usd_left) ||
                other.payment_usd_left == payment_usd_left) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.fee_category, fee_category) ||
                other.fee_category == fee_category) &&
            const DeepCollectionEquality()
                .equals(other._payment_plan, _payment_plan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      payment_usd,
      payment_usd_left,
      paid,
      fee_category,
      const DeepCollectionEquality().hash(_payment_plan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeDtoCopyWith<_$_FeeDto> get copyWith =>
      __$$_FeeDtoCopyWithImpl<_$_FeeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeDtoToJson(
      this,
    );
  }
}

abstract class _FeeDto extends FeeDto {
  const factory _FeeDto(
      {required final int id,
      required final double payment_usd,
      required final double payment_usd_left,
      required final double paid,
      required final int fee_category,
      required final List<PaymentPlanDto> payment_plan}) = _$_FeeDto;
  const _FeeDto._() : super._();

  factory _FeeDto.fromJson(Map<String, dynamic> json) = _$_FeeDto.fromJson;

  @override
  int get id;
  @override
  double get payment_usd;
  @override
  double get payment_usd_left;
  @override
  double get paid;
  @override
  int get fee_category;
  @override
  List<PaymentPlanDto> get payment_plan;
  @override
  @JsonKey(ignore: true)
  _$$_FeeDtoCopyWith<_$_FeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentPlanDto _$PaymentPlanDtoFromJson(Map<String, dynamic> json) {
  return _PaymentPlanDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentPlanDto {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentPlanDtoCopyWith<PaymentPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPlanDtoCopyWith<$Res> {
  factory $PaymentPlanDtoCopyWith(
          PaymentPlanDto value, $Res Function(PaymentPlanDto) then) =
      _$PaymentPlanDtoCopyWithImpl<$Res, PaymentPlanDto>;
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class _$PaymentPlanDtoCopyWithImpl<$Res, $Val extends PaymentPlanDto>
    implements $PaymentPlanDtoCopyWith<$Res> {
  _$PaymentPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentPlanDtoCopyWith<$Res>
    implements $PaymentPlanDtoCopyWith<$Res> {
  factory _$$_PaymentPlanDtoCopyWith(
          _$_PaymentPlanDto value, $Res Function(_$_PaymentPlanDto) then) =
      __$$_PaymentPlanDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String date, double amount});
}

/// @nodoc
class __$$_PaymentPlanDtoCopyWithImpl<$Res>
    extends _$PaymentPlanDtoCopyWithImpl<$Res, _$_PaymentPlanDto>
    implements _$$_PaymentPlanDtoCopyWith<$Res> {
  __$$_PaymentPlanDtoCopyWithImpl(
      _$_PaymentPlanDto _value, $Res Function(_$_PaymentPlanDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$_PaymentPlanDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentPlanDto extends _PaymentPlanDto {
  const _$_PaymentPlanDto(
      {required this.id, required this.date, required this.amount})
      : super._();

  factory _$_PaymentPlanDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentPlanDtoFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final double amount;

  @override
  String toString() {
    return 'PaymentPlanDto(id: $id, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentPlanDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentPlanDtoCopyWith<_$_PaymentPlanDto> get copyWith =>
      __$$_PaymentPlanDtoCopyWithImpl<_$_PaymentPlanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentPlanDtoToJson(
      this,
    );
  }
}

abstract class _PaymentPlanDto extends PaymentPlanDto {
  const factory _PaymentPlanDto(
      {required final int id,
      required final String date,
      required final double amount}) = _$_PaymentPlanDto;
  const _PaymentPlanDto._() : super._();

  factory _PaymentPlanDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentPlanDto.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentPlanDtoCopyWith<_$_PaymentPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  int get id => throw _privateConstructorUsedError;
  String get payment_category => throw _privateConstructorUsedError;
  String get payment_type => throw _privateConstructorUsedError;
  double get amount_usd => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  String get who_paid => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {int id,
      String payment_category,
      String payment_type,
      double amount_usd,
      double rate,
      String who_paid,
      String date});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_category = null,
    Object? payment_type = null,
    Object? amount_usd = null,
    Object? rate = null,
    Object? who_paid = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_category: null == payment_category
          ? _value.payment_category
          : payment_category // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      amount_usd: null == amount_usd
          ? _value.amount_usd
          : amount_usd // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      who_paid: null == who_paid
          ? _value.who_paid
          : who_paid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDtoCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$_PaymentDtoCopyWith(
          _$_PaymentDto value, $Res Function(_$_PaymentDto) then) =
      __$$_PaymentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String payment_category,
      String payment_type,
      double amount_usd,
      double rate,
      String who_paid,
      String date});
}

/// @nodoc
class __$$_PaymentDtoCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$_PaymentDto>
    implements _$$_PaymentDtoCopyWith<$Res> {
  __$$_PaymentDtoCopyWithImpl(
      _$_PaymentDto _value, $Res Function(_$_PaymentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payment_category = null,
    Object? payment_type = null,
    Object? amount_usd = null,
    Object? rate = null,
    Object? who_paid = null,
    Object? date = null,
  }) {
    return _then(_$_PaymentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payment_category: null == payment_category
          ? _value.payment_category
          : payment_category // ignore: cast_nullable_to_non_nullable
              as String,
      payment_type: null == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String,
      amount_usd: null == amount_usd
          ? _value.amount_usd
          : amount_usd // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      who_paid: null == who_paid
          ? _value.who_paid
          : who_paid // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDto extends _PaymentDto {
  const _$_PaymentDto(
      {required this.id,
      required this.payment_category,
      required this.payment_type,
      required this.amount_usd,
      required this.rate,
      required this.who_paid,
      required this.date})
      : super._();

  factory _$_PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDtoFromJson(json);

  @override
  final int id;
  @override
  final String payment_category;
  @override
  final String payment_type;
  @override
  final double amount_usd;
  @override
  final double rate;
  @override
  final String who_paid;
  @override
  final String date;

  @override
  String toString() {
    return 'PaymentDto(id: $id, payment_category: $payment_category, payment_type: $payment_type, amount_usd: $amount_usd, rate: $rate, who_paid: $who_paid, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payment_category, payment_category) ||
                other.payment_category == payment_category) &&
            (identical(other.payment_type, payment_type) ||
                other.payment_type == payment_type) &&
            (identical(other.amount_usd, amount_usd) ||
                other.amount_usd == amount_usd) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.who_paid, who_paid) ||
                other.who_paid == who_paid) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, payment_category,
      payment_type, amount_usd, rate, who_paid, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      __$$_PaymentDtoCopyWithImpl<_$_PaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDtoToJson(
      this,
    );
  }
}

abstract class _PaymentDto extends PaymentDto {
  const factory _PaymentDto(
      {required final int id,
      required final String payment_category,
      required final String payment_type,
      required final double amount_usd,
      required final double rate,
      required final String who_paid,
      required final String date}) = _$_PaymentDto;
  const _PaymentDto._() : super._();

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDto.fromJson;

  @override
  int get id;
  @override
  String get payment_category;
  @override
  String get payment_type;
  @override
  double get amount_usd;
  @override
  double get rate;
  @override
  String get who_paid;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDtoCopyWith<_$_PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
