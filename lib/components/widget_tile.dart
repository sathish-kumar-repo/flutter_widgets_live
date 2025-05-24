import 'package:flutter/material.dart';
import 'package:flutter_widgets_live/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import '../models/widget_model.dart';

class WidgetTile extends StatefulWidget {
  final WidgetModel widgetModel;
  final bool isGridView;

  const WidgetTile(
      {super.key, required this.widgetModel, required this.isGridView});

  @override
  State<WidgetTile> createState() => _WidgetTileState();
}

class _WidgetTileState extends State<WidgetTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: () => context.go('/widget/${widget.widgetModel.route}'),
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            tween: Tween<double>(
              begin: 1.0,
              end: _isHovered
                  ? widget.isGridView
                      ? 1.03
                      : 1.01
                  : 1.0,
            ),
            builder: (context, scale, child) {
              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
            child: Card(
              elevation: _isHovered ? 8 : 4,
              surfaceTintColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: ListTile(
                  leading: const Icon(
                    Icons.widgets,
                    color: AppTheme.accentColor,
                  ),
                  title: Text(
                    widget.widgetModel.name,
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
        ),
      ),
    );
  }
}
