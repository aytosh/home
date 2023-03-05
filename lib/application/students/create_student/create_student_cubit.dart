import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student_failure.dart';

part 'create_student_state.dart';
part 'create_student_cubit.freezed.dart';

@injectable
class CreateStudentCubit extends Cubit<CreateStudentState> {
  final IStudentRepository _repository;

  CreateStudentCubit(this._repository) : super(CreateStudentState.initial());

  Future<void> resetFields() async {
    emit(
      CreateStudentState.initial(),
    );
  }

  Future<void> firstNameChanged(String firstName) async {
    emit(
      state.copyWith(
        firstName: firstName,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> lastNameChanged(String lastName) async {
    emit(
      state.copyWith(
        lastName: lastName,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> patrynomicChanged(String patrynomic) async {
    emit(
      state.copyWith(
        patronymic: patrynomic,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> genderChanged(String gender) async {
    emit(
      state.copyWith(
        gender: gender,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> birthdayChanged(String birthday) async {
    emit(
      state.copyWith(
        birthday: birthday,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> groupChanged(int group) async {
    emit(
      state.copyWith(
        group: group,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> admissionYearChanged(String admissionYear) async {
    emit(
      state.copyWith(
        admissionYear: admissionYear,
        studentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<StudentFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        studentFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createStudent(
      firstName: state.firstName,
      lastName: state.lastName,
      patronymic: state.patronymic,
      gender: state.gender,
      birthday: state.birthday,
      group: state.group,
      admissionYear: state.admissionYear,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        studentFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
