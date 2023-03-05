part of 'accruals_cubit.dart';

@freezed
class AccrualsState with _$AccrualsState {
  const factory AccrualsState.initial() = _Initial;
  const factory AccrualsState.loadInProgress() = _LoadInProgress;
  const factory AccrualsState.loadSuccess(List<Accrual> accruals) =
      _LoadSuccess;
  const factory AccrualsState.loadFailure(AccrualFailure accrualFailure) =
      _LoadFailure;
}
