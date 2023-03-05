part of 'staffs_cubit.dart';

@freezed
class StaffsState with _$StaffsState {
  const factory StaffsState.initial() = _Initial;
  const factory StaffsState.loadInProgress() = _LoadInProgress;
  const factory StaffsState.loadSuccess(
    List<Staff> staffs, {
    required bool hasMore,
  }) = _LoadSuccess;
  const factory StaffsState.loadFailure(StaffFailure studentFailure) =
      _LoadFailure;
}
