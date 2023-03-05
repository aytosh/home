import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/staff/i_staff_repository.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/domain/staff/staff_failure.dart';

part 'staff_state.dart';
part 'staff_cubit.freezed.dart';

@injectable
class StaffCubit extends Cubit<StaffState> {
  final IStaffRepository _repository;

  StaffCubit(this._repository) : super(const StaffState.initial());

  Future<void> getStaff(int id) async {
    emit(const StaffState.loadInProgress());
    final failureOrMessages = await _repository.getStaff(id);
    emit(
      failureOrMessages.fold(
        (f) => StaffState.loadFailure(f),
        (student) => StaffState.loadSuccess(student),
      ),
    );
  }
}
