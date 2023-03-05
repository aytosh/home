part of 'staff_cubit.dart';

@freezed
class StaffState with _$StaffState {
  const factory StaffState.initial() = _Initial;
  const factory StaffState.loadInProgress() = _LoadInProgress;
  const factory StaffState.loadSuccess(Staff staff) = _LoadSuccess;
  const factory StaffState.loadFailure(StaffFailure studentFailure) =
      _LoadFailure;
}
