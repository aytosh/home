import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'page_item_title_cubit.freezed.dart';
part 'page_item_title_state.dart';

@injectable
class PageItemTitleCubit extends Cubit<PageItemTitleState> {
  PageItemTitleCubit() : super(PageItemTitleState.initial());

  changeTitle(String newTitle) {
    emit(
      state.copyWith(title: newTitle),
    );
  }
}
