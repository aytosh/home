import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/session/i_session_repository.dart';
import 'package:school_management/domain/session/session.dart';
import 'package:school_management/domain/session/session_failure.dart';

part 'sessions_state.dart';
part 'sessions_cubit.freezed.dart';

@injectable
class SessionsCubit extends Cubit<SessionsState> {
  final ISessionRepository _repository;

  SessionsCubit(this._repository) : super(const SessionsState.initial());

  Future<void> getSessions() async {
    emit(const SessionsState.loadInProgress());
    final failureOrMessages = await _repository.getSessions();
    emit(
      failureOrMessages.fold(
        (f) => SessionsState.loadFailure(f),
        (sessions) => SessionsState.loadSuccess(sessions),
      ),
    );
  }
}
