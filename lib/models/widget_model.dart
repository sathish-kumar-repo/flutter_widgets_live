// models/widget_model.dart
import 'package:flutter/material.dart';

class WidgetModel {
  final String name;
  final String route;
  final Widget Function() builder;

  const WidgetModel({
    required this.name,
    required this.route,
    required this.builder,
  });
}
