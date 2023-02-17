part of 'groups_cubit.dart';

@freezed
class GroupsState with _$GroupsState {
  const factory GroupsState.initial() = _Initial;
  const factory GroupsState.loadInProgress() = _LoadInProgress;
  const factory GroupsState.loadSuccess(List<Group> groups) = _LoadSuccess;
  const factory GroupsState.loadFailure(GroupFailure groupFailure) =
      _LoadFailure;
}
