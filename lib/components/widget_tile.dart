import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/widget_model.dart';

class WidgetTile extends StatelessWidget {
  final WidgetModel widgetModel;

  const WidgetTile({super.key, required this.widgetModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: const Icon(Icons.widgets, color: Colors.deepPurple),
          title: Text(
            widgetModel.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () => context.go('/widget/${widgetModel.route}'),
        ),
      ),
    );
  }
}
