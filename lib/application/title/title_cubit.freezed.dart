// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TitleState {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TitleStateCopyWith<TitleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleStateCopyWith<$Res> {
  factory $TitleStateCopyWith(
          TitleState value, $Res Function(TitleState) then) =
      _$TitleStateCopyWithImpl<$Res, TitleState>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$TitleStateCopyWithImpl<$Res, $Val extends TitleState>
    implements $TitleStateCopyWith<$Res> {
  _$TitleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitleStateCopyWith<$Res>
    implements $TitleStateCopyWith<$Res> {
  factory _$$_TitleStateCopyWith(
          _$_TitleState value, $Res Function(_$_TitleState) then) =
      __$$_TitleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_TitleStateCopyWithImpl<$Res>
    extends _$TitleStateCopyWithImpl<$Res, _$_TitleState>
    implements _$$_TitleStateCopyWith<$Res> {
  __$$_TitleStateCopyWithImpl(
      _$_TitleState _value, $Res Function(_$_TitleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_TitleState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleState implements _TitleState {
  const _$_TitleState({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'TitleState(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleState &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleStateCopyWith<_$_TitleState> get copyWith =>
      __$$_TitleStateCopyWithImpl<_$_TitleState>(this, _$identity);
}

abstract class _TitleState implements TitleState {
  const factory _TitleState({required final String title}) = _$_TitleState;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_TitleStateCopyWith<_$_TitleState> get copyWith =>
      throw _privateConstructorUsedError;
}
