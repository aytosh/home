part of 'students_cubit.dart';

@freezed
class StudentsState with _$StudentsState {
  const factory StudentsState.initial() = _Initial;
  const factory StudentsState.loadInProgress() = _LoadInProgress;
  const factory StudentsState.loadSuccess(
    List<Student> students, {
    required bool hasMore,
  }) = _LoadSuccess;
  const factory StudentsState.loadFailure(StudentFailure studentFailure) =
      _LoadFailure;
}
