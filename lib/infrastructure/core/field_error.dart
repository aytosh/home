import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_error.freezed.dart';
part 'field_error.g.dart';

@freezed
class FieldError with _$FieldError {
  const FieldError._();

  const factory FieldError({
    required String detail,
  }) = _FieldError;

  factory FieldError.fromJson(Map<String, dynamic> json) =>
      _$FieldErrorFromJson(json);

  static FieldError getError(Response<dynamic> response) {
    final result = Map<String, dynamic>.from(
      jsonDecode(response.toString()),
    );
    return FieldError.fromJson(result);
  }
}
