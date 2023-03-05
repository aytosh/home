import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student.dart';
import 'package:school_management/domain/student/student_failure.dart';

part 'students_state.dart';
part 'students_cubit.freezed.dart';

@injectable
class StudentsCubit extends Cubit<StudentsState> {
  final IStudentRepository _repository;

  final fetchedStudentsSize = 20;

  bool isSubmiting = false;

  late int currentPage;

  StudentsCubit(this._repository) : super(const StudentsState.initial());

  void addStudent(Student student) {
    state.maybeWhen(
      loadSuccess: (students, hasMore) async {
        final data = [student, ...students];
        emit(StudentsState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }

  Future<void> getStudents() async {
    currentPage = 1;

    emit(const StudentsState.loadInProgress());
    final failureOrMessages = await _repository.getStudents(currentPage);
    emit(
      failureOrMessages.fold(
        (f) => StudentsState.loadFailure(f),
        (students) => StudentsState.loadSuccess(
          students,
          hasMore: students.length == fetchedStudentsSize,
        ),
      ),
    );
  }

  Future<void> fetchMoreStudents() async {
    state.maybeWhen(
      loadSuccess: (students, hasMore) async {
        if (!isSubmiting && hasMore) {
          isSubmiting = true;

          currentPage++;
          final failureOrMessages = await _repository.getStudents(currentPage);

          isSubmiting = false;

          emit(
            failureOrMessages.fold(
              (f) => StudentsState.loadFailure(f),
              (newStudents) => StudentsState.loadSuccess(
                students + newStudents,
                hasMore: hasMore,
              ),
            ),
          );
        }
      },
      orElse: () {},
    );
  }
}
