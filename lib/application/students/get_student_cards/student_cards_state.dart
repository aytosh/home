part of 'student_cards_cubit.dart';

@freezed
class StudentCardsState with _$StudentCardsState {
  const factory StudentCardsState.initial() = _Initial;
  const factory StudentCardsState.loadInProgress() = _LoadInProgress;
  const factory StudentCardsState.loadSuccess(
    List<StudentCard> studentCards, {
    required bool hasMore,
  }) = _LoadSuccess;
  const factory StudentCardsState.loadFailure(StudentFailure studentFailure) =
      _LoadFailure;
}
