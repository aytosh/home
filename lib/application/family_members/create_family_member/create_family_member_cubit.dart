import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/family_member/family_member_failure.dart';
import 'package:school_management/domain/family_member/i_family_member_repository.dart';

part 'create_family_member_state.dart';
part 'create_family_member_cubit.freezed.dart';

@injectable
class CreateFamilyMemberCubit extends Cubit<CreateFamilyMemberState> {
  final IFamilyMemberRepository _repository;

  CreateFamilyMemberCubit(this._repository)
      : super(CreateFamilyMemberState.initial());

  Future<void> resetFields() async {
    emit(CreateFamilyMemberState.initial().copyWith(
      studentId: state.studentId,
    ));
  }

  Future<void> studentIdChanged(int studentId) async {
    emit(
      state.copyWith(
        studentId: studentId,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> firstNameChanged(String firstName) async {
    emit(
      state.copyWith(
        firstName: firstName,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> lastNameChanged(String lastName) async {
    emit(
      state.copyWith(
        lastName: lastName,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> patronymicChanged(String patronymic) async {
    emit(
      state.copyWith(
        patronymic: patronymic,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> whoChanged(String who) async {
    emit(
      state.copyWith(
        who: who,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addressChanged(String address) async {
    emit(
      state.copyWith(
        address: address,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> phoneNumberChanged(String phoneNumber) async {
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> idPassportChanged(String idPassport) async {
    emit(
      state.copyWith(
        idPassport: idPassport,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> workPlaceChanged(String workPlace) async {
    emit(
      state.copyWith(
        workPlace: workPlace,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> isResposibleChanged(bool isResposible) async {
    emit(
      state.copyWith(
        isResposible: isResposible,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<FamilyMemberFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        familyMemberFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createFamilyMember(
      studentId: state.studentId,
      firstName: state.firstName,
      lastName: state.lastName,
      patrynomic: state.patronymic,
      who: state.who,
      address: state.address,
      phoneNumber: state.phoneNumber,
      idPassport: state.idPassport,
      workPlace: state.workPlace,
      isResposible: state.isResposible,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        familyMemberFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
