import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:school_management/presentation/common/constants/colors.dart';
import 'package:school_management/presentation/common/constants/shadows.dart';

Flushbar showError({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 3),
}) {
  return Flushbar(
    title: title,
    titleColor: kPrimaryColor,
    message: message,
    messageColor: kPrimaryColor,
    icon: const Icon(
      Icons.warning,
      size: 28.0,
      color: kPrimaryColor,
    ),
    leftBarIndicatorColor: kPrimaryColor,
    backgroundColor: kBackgroundColor,
    duration: duration,
    boxShadows: [kFlushBarShadow],
  );
}

Flushbar showSuccess({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 3),
}) {
  return Flushbar(
    title: title,
    titleColor: kPrimaryColor,
    message: message,
    messageColor: kPrimaryColor,
    icon: const Icon(
      Icons.check_circle,
      color: kPrimaryColor,
    ),
    leftBarIndicatorColor: kPrimaryColor,
    backgroundColor: kBackgroundColor,
    duration: duration,
    boxShadows: [kFlushBarShadow],
  );
}
