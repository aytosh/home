part of 'student_cubit.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = _Initial;
  const factory StudentState.loadInProgress() = _LoadInProgress;
  const factory StudentState.loadSuccess(Student student) = _LoadSuccess;
  const factory StudentState.loadFailure(StudentFailure studentFailure) =
      _LoadFailure;
}
