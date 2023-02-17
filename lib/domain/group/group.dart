import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

@freezed
class Group with _$Group {
  const Group._();

  const factory Group({
    required int id,
    required String title,
    required String session,
    required String classCategory,
  }) = _Group;
}
