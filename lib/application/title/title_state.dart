part of 'title_cubit.dart';

@freezed
class TitleState with _$TitleState {
  const factory TitleState({required String title}) = _TitleState;

  factory TitleState.initial() => const TitleState(title: "");
}
