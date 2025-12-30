import 'package:flutter/material.dart';

class UIComponentItem {
  final String category;
  final String title;
  final String subtitle;
  final WidgetBuilder builder;

  const UIComponentItem({
    required this.category,
    required this.title,
    required this.subtitle,
    required this.builder,
  });
}
