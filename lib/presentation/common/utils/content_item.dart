import 'package:flutter/material.dart';

class ContentItem {
  final String label;
  final Widget content;

  const ContentItem({this.label = "Label", this.content = const SizedBox.shrink()});
}
