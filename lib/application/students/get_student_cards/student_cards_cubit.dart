import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/student/i_student_repository.dart';
import 'package:school_management/domain/student/student_card.dart';
import 'package:school_management/domain/student/student_failure.dart';

part 'student_cards_state.dart';
part 'student_cards_cubit.freezed.dart';

@injectable
class StudentCardsCubit extends Cubit<StudentCardsState> {
  final IStudentRepository _repository;

  final fetchedStudentCardsSize = 20;

  bool isSubmiting = false;

  late int currentPage = 1;

  StudentCardsCubit(this._repository)
      : super(const StudentCardsState.initial());

  void addStudentCard(StudentCard studentCard) {
    state.maybeWhen(
      loadSuccess: (studentCards, hasMore) async {
        final data = [studentCard, ...studentCards];
        emit(StudentCardsState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }

  Future<void> getStudentCards() async {
    currentPage = 1;

    emit(const StudentCardsState.loadInProgress());
    final failureOrMessages =
        await _repository.getStudentCards(page: currentPage);
    emit(
      failureOrMessages.fold(
        (f) => StudentCardsState.loadFailure(f),
        (studentCards) => StudentCardsState.loadSuccess(
          studentCards,
          hasMore: studentCards.length == fetchedStudentCardsSize,
        ),
      ),
    );
  }

  Future<void> fetchMoreStudentCards() async {
    state.maybeWhen(
      loadSuccess: (studentCards, hasMore) async {
        if (!isSubmiting && hasMore) {
          isSubmiting = true;

          currentPage++;
          final failureOrMessages =
              await _repository.getStudentCards(page: currentPage);

          isSubmiting = false;

          emit(
            failureOrMessages.fold(
              (f) => StudentCardsState.loadFailure(f),
              (newStudentCards) => StudentCardsState.loadSuccess(
                studentCards + newStudentCards,
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
