import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/staff/i_staff_repository.dart';
import 'package:school_management/domain/staff/staff.dart';
import 'package:school_management/domain/staff/staff_failure.dart';

part 'staffs_state.dart';
part 'staffs_cubit.freezed.dart';

@injectable
class StaffsCubit extends Cubit<StaffsState> {
  final IStaffRepository _repository;

  final fetchedStaffsSize = 20;

  bool isSubmiting = false;

  late int currentPage;

  StaffsCubit(this._repository) : super(const StaffsState.initial());

  void addStaff(Staff staff) {
    state.maybeWhen(
      loadSuccess: (students, hasMore) async {
        final data = [staff, ...students];
        emit(StaffsState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }

  Future<void> getStaffs() async {
    currentPage = 1;

    emit(const StaffsState.loadInProgress());
    final failureOrMessages = await _repository.getStaffs(currentPage);
    emit(
      failureOrMessages.fold(
        (f) => StaffsState.loadFailure(f),
        (staffs) => StaffsState.loadSuccess(
          staffs,
          hasMore: staffs.length == fetchedStaffsSize,
        ),
      ),
    );
  }

  Future<void> fetchMoreStaffs() async {
    state.maybeWhen(
      loadSuccess: (staffs, hasMore) async {
        if (!isSubmiting && hasMore) {
          isSubmiting = true;

          currentPage++;
          final failureOrMessages = await _repository.getStaffs(currentPage);

          isSubmiting = false;

          emit(
            failureOrMessages.fold(
              (f) => StaffsState.loadFailure(f),
              (newStaffs) => StaffsState.loadSuccess(
                staffs + newStaffs,
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
