import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'title_cubit.freezed.dart';
part 'title_state.dart';

@injectable
class TitleCubit extends Cubit<TitleState> {
  TitleCubit() : super(TitleState.initial());

  titleChanged(String title) {
    emit(
      state.copyWith(title: title),
    );
  }
}
