part of 'page_item_title_cubit.dart';

@freezed
class PageItemTitleState with _$PageItemTitleState {
  const factory PageItemTitleState({required String title}) =
      _PageItemTitleState;

  factory PageItemTitleState.initial() => const PageItemTitleState(title: "");
}
