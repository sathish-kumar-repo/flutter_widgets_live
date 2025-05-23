import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        title: Text(widgetName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: liveWidget,
      ),
    );
  }
}
