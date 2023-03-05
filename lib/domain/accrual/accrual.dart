import 'package:freezed_annotation/freezed_annotation.dart';

part 'accrual.freezed.dart';

@freezed
class Accrual with _$Accrual {
  const Accrual._();

  const factory Accrual({
    required int id,
    required double amount,
    required String currency,
    required String note,
    required String date,
  }) = _Accrual;
}
