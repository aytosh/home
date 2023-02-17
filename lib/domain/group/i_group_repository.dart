import 'package:dartz/dartz.dart';
import 'package:school_management/domain/group/group.dart';
import 'package:school_management/domain/group/group_failure.dart';

abstract class IGroupRepository {
  Future<Either<GroupFailure, List<Group>>> getGroups();
}
