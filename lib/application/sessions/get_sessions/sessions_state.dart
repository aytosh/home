part of 'sessions_cubit.dart';

@freezed
class SessionsState with _$SessionsState {
  const factory SessionsState.initial() = _Initial;
  const factory SessionsState.loadInProgress() = _LoadInProgress;
  const factory SessionsState.loadSuccess(List<Session> sessions) =
      _LoadSuccess;
  const factory SessionsState.loadFailure(SessionFailure sessionFailure) =
      _LoadFailure;
}
