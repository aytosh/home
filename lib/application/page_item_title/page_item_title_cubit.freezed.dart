// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_item_title_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageItemTitleState {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageItemTitleStateCopyWith<PageItemTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageItemTitleStateCopyWith<$Res> {
  factory $PageItemTitleStateCopyWith(
          PageItemTitleState value, $Res Function(PageItemTitleState) then) =
      _$PageItemTitleStateCopyWithImpl<$Res, PageItemTitleState>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$PageItemTitleStateCopyWithImpl<$Res, $Val extends PageItemTitleState>
    implements $PageItemTitleStateCopyWith<$Res> {
  _$PageItemTitleStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_PageItemTitleStateCopyWith<$Res>
    implements $PageItemTitleStateCopyWith<$Res> {
  factory _$$_PageItemTitleStateCopyWith(_$_PageItemTitleState value,
          $Res Function(_$_PageItemTitleState) then) =
      __$$_PageItemTitleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_PageItemTitleStateCopyWithImpl<$Res>
    extends _$PageItemTitleStateCopyWithImpl<$Res, _$_PageItemTitleState>
    implements _$$_PageItemTitleStateCopyWith<$Res> {
  __$$_PageItemTitleStateCopyWithImpl(
      _$_PageItemTitleState _value, $Res Function(_$_PageItemTitleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_PageItemTitleState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PageItemTitleState implements _PageItemTitleState {
  const _$_PageItemTitleState({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'PageItemTitleState(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageItemTitleState &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageItemTitleStateCopyWith<_$_PageItemTitleState> get copyWith =>
      __$$_PageItemTitleStateCopyWithImpl<_$_PageItemTitleState>(
          this, _$identity);
}

abstract class _PageItemTitleState implements PageItemTitleState {
  const factory _PageItemTitleState({required final String title}) =
      _$_PageItemTitleState;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PageItemTitleStateCopyWith<_$_PageItemTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}
