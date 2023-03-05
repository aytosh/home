import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/staff/i_staff_repository.dart';
import 'package:school_management/domain/staff/staff_failure.dart';

part 'create_staff_state.dart';
part 'create_staff_cubit.freezed.dart';

@injectable
class CreateStaffCubit extends Cubit<CreateStaffState> {
  final IStaffRepository _repository;

  CreateStaffCubit(this._repository) : super(CreateStaffState.initial());

  Future<void> resetFields() async {
    emit(
      CreateStaffState.initial(),
    );
  }

  Future<void> firstNameChanged(String firstName) async {
    emit(
      state.copyWith(
        firstName: firstName,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> lastNameChanged(String lastName) async {
    emit(
      state.copyWith(
        lastName: lastName,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> patrynomicChanged(String patrynomic) async {
    emit(
      state.copyWith(
        patronymic: patrynomic,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> genderChanged(String gender) async {
    emit(
      state.copyWith(
        gender: gender,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> birthdayChanged(String birthday) async {
    emit(
      state.copyWith(
        birthday: birthday,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> statusChanged(String status) async {
    emit(
      state.copyWith(
        status: status,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> positionChanged(String position) async {
    emit(
      state.copyWith(
        position: position,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> nationalityChanged(String nationality) async {
    emit(
      state.copyWith(
        nationality: nationality,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> citizenshipChanged(String citizenship) async {
    emit(
      state.copyWith(
        citizenship: citizenship,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> maritalStatusChanged(String maritalStatus) async {
    emit(
      state.copyWith(
        maritalStatus: maritalStatus,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> specialityChanged(String speciality) async {
    emit(
      state.copyWith(
        speciality: speciality,
        staffFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<StaffFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        staffFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createStaff(
      firstName: state.firstName,
      lastName: state.lastName,
      patronymic: state.patronymic,
      gender: state.gender,
      birthday: state.birthday,
      status: state.status,
      position: state.position,
      nationality: state.nationality,
      citizenship: state.citizenship,
      maritalStatus: state.maritalStatus,
      speciality: state.speciality,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        staffFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
