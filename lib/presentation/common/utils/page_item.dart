import 'package:flutter/material.dart';

class PageItem {
  final String title;
  final String label;
  final Widget page;

  const PageItem({
    this.title = "Title",
    this.label = "Label",
    this.page = const SizedBox.shrink(),
  });
}
