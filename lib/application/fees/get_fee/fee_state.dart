part of 'fee_cubit.dart';

@freezed
class FeeState with _$FeeState {
  const factory FeeState.initial() = _Initial;
  const factory FeeState.loadInProgress() = _LoadInProgress;
  const factory FeeState.loadSuccess(Fee fee) = _LoadSuccess;
  const factory FeeState.loadFailure(FeeFailure feeFailure) = _LoadFailure;
}
