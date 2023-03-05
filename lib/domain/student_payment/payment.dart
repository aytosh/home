import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const Payment._();

  const factory Payment({
    required int id,
    required String paymentCategory,
    required String paymentType,
    required double amount,
    required double rate,
    required String whoPaid,
    required String date,
  }) = _Payment;
}
