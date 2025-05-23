import 'package:flutter/material.dart';
import 'package:flutter_widgets_live/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import '../models/widget_model.dart';

class WidgetTile extends StatelessWidget {
  final WidgetModel widgetModel;

  const WidgetTile({super.key, required this.widgetModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: GestureDetector(
        onTap: () => context.go('/widget/${widgetModel.route}'),
        child: Card(
          elevation: 4,
          surfaceTintColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: ListTile(
              leading: const Icon(
                Icons.widgets,
                color: AppTheme.accentColor,
              ),
              title: Text(
                widgetModel.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ),
        ),
      ),
    );
  }
}
