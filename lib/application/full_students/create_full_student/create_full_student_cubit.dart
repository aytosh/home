import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/application/family_members/create_family_member/create_family_member_cubit.dart';
import 'package:school_management/application/fee_discounts/create_fee_discount/create_fee_discount_cubit.dart';
import 'package:school_management/application/fees/create_fee/create_fee_cubit.dart';
import 'package:school_management/application/students/create_student/create_student_cubit.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student_failure.dart';

part 'create_full_student_state.dart';
part 'create_full_student_cubit.freezed.dart';

@injectable
class CreateFullStudentCubit extends Cubit<CreateFullStudentState> {
  final IStudentRepository _repository;

  CreateFullStudentCubit(this._repository)
      : super(CreateFullStudentState.initial());

  Future<void> resetFields() async {
    emit(
      CreateFullStudentState.initial(),
    );
  }

  Future<void> createStudentStateChanged(
      CreateStudentState createStudentState) async {
    emit(
      state.copyWith(
        createStudentState: createStudentState,
        fullStudentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> createFamilyMemberStateChanged(
      CreateFamilyMemberState createFamilyMemberState) async {
    emit(
      state.copyWith(
        createFamilyMemberState: createFamilyMemberState,
        fullStudentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> createFeeStateChanged(CreateFeeState createFeeState) async {
    emit(
      state.copyWith(
        createFeeState: createFeeState,
        fullStudentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> createFeeDiscountStateChanged(
      CreateFeeDiscountState createFeeDiscountState) async {
    emit(
      state.copyWith(
        createFeeDiscountState: createFeeDiscountState,
        fullStudentFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> addButtonPressed() async {
    Either<StudentFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSubmitting: true,
        fullStudentFailureOrSuccessOption: none(),
      ),
    );

    failureOrSuccess = await _repository.createFullStudent(
      studentFirstName: state.createStudentState.firstName,
      studentLastName: state.createStudentState.lastName,
      studentPatronymic: state.createStudentState.patronymic,
      studentGender: state.createStudentState.gender,
      studentBirthday: state.createStudentState.birthday,
      studentGroup: state.createStudentState.group,
      studentAdmissionYear: state.createStudentState.admissionYear,
      familyMemberFirstName: state.createFamilyMemberState.firstName,
      familyMemberLastName: state.createFamilyMemberState.lastName,
      familyMemberPatronymic: state.createFamilyMemberState.patronymic,
      familyMemberWho: state.createFamilyMemberState.who,
      familyMemberAddress: state.createFamilyMemberState.address,
      familyMemberPhoneNumber: state.createFamilyMemberState.phoneNumber,
      familyMemberIdPassport: state.createFamilyMemberState.idPassport,
      familyMemberWorkPlace: state.createFamilyMemberState.workPlace,
      familyMemberIsResposible: state.createFamilyMemberState.isResposible,
      feeCategoryId: state.createFeeState.feeCategoryId,
      discountCategoryId: state.createFeeDiscountState.categoryId,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        fullStudentFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
