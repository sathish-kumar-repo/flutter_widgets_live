// screens/widget_detail_screen.dart
import 'package:flutter/material.dart';

class WidgetDetailScreen extends StatelessWidget {
  final String widgetName;
  final Widget liveWidget;

  const WidgetDetailScreen({
    super.key,
    required this.widgetName,
    required this.liveWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widgetName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: liveWidget,
      ),
    );
  }
}
