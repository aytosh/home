import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/group/group.dart';
import 'package:school_management/domain/group/group_failure.dart';
import 'package:school_management/domain/group/i_group_repository.dart';

part 'groups_state.dart';
part 'groups_cubit.freezed.dart';

@injectable
class GroupsCubit extends Cubit<GroupsState> {
  final IGroupRepository _repository;

  GroupsCubit(this._repository) : super(const GroupsState.initial());

  Future<void> getGroups() async {
    emit(const GroupsState.loadInProgress());
    final failureOrMessages = await _repository.getGroups();
    emit(
      failureOrMessages.fold(
        (f) => GroupsState.loadFailure(f),
        (groups) => GroupsState.loadSuccess(groups),
      ),
    );
  }
}
