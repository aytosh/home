import 'package:flutter/material.dart';

class DialogItem {
  final String label;
  final Widget content;
  final Function()? onTap;

  const DialogItem({
    this.label = "Label",
    this.content = const SizedBox.shrink(),
    this.onTap,
  });
}
