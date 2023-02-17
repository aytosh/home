import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_failure.dart';

part 'student_state.dart';
part 'student_cubit.freezed.dart';

@injectable
class StudentCubit extends Cubit<StudentState> {
  final IStudentRepository _repository;

  StudentCubit(this._repository) : super(const StudentState.initial());

  Future<void> getStudent(String id) async {
    emit(const StudentState.loadInProgress());
    final failureOrMessages = await _repository.getStudent(id);
    emit(
      failureOrMessages.fold(
        (f) => StudentState.loadFailure(f),
        (student) => StudentState.loadSuccess(student),
      ),
    );
  }
}
