import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/family_member/family_member.dart';
import 'package:school_management/domain/family_member/family_member_failure.dart';
import 'package:school_management/domain/family_member/i_family_member_repository.dart';

part 'family_members_state.dart';
part 'family_members_cubit.freezed.dart';

@injectable
class FamilyMembersCubit extends Cubit<FamilyMembersState> {
  final IFamilyMemberRepository _repository;

  FamilyMembersCubit(this._repository)
      : super(const FamilyMembersState.initial());

  Future<void> getFamilyMembers(List<int> familyMemberIds) async {
    emit(const FamilyMembersState.loadInProgress());

    final failureOrMessages =
        await _repository.getFamilyMembers(familyMemberIds);

    emit(
      failureOrMessages.fold(
        (f) => FamilyMembersState.loadFailure(f),
        (familyMembers) => FamilyMembersState.loadSuccess(familyMembers),
      ),
    );
  }
}
