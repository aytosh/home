import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:school_management/domain/group/group_failure.dart';
import 'package:school_management/domain/group/group.dart';
import 'package:dartz/dartz.dart';
import 'package:school_management/domain/group/i_group_repository.dart';
import 'package:school_management/infrastructure/groups/group_dto.dart';

@LazySingleton(as: IGroupRepository)
class ITUniqueGroupRepository extends IGroupRepository {
  final Dio _dio;

  ITUniqueGroupRepository(this._dio);

  @override
  Future<Either<GroupFailure, List<Group>>> getGroups() async {
    try {
      final response = await _dio.get("class/class/");

      final results = jsonDecode(response.data);

      final List<Group> list = [];
      results.forEach(
        (result) => list.add(GroupDto.fromJson(result).toDomain()),
      );
      return right(list);
    } on DioError catch (_) {
      return left(const GroupFailure.unexpected());
    } on SocketException catch (_) {
      return left(const GroupFailure.unexpected());
    }
  }
}
