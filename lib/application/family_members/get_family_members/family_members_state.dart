part of 'family_members_cubit.dart';

@freezed
class FamilyMembersState with _$FamilyMembersState {
  const factory FamilyMembersState.initial() = _Initial;
  const factory FamilyMembersState.loadInProgress() = _LoadInProgress;
  const factory FamilyMembersState.loadSuccess(
      List<FamilyMember> familyMembers) = _LoadSuccess;
  const factory FamilyMembersState.loadFailure(
      FamilyMemberFailure familyMemberFailure) = _LoadFailure;
}
