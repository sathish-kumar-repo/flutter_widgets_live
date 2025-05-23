// routes/route_generator.dart
import 'package:flutter/material.dart';
import '../data/widget_data.dart';
import '../models/widget_model.dart';
import '../screens/widget_detail_screen.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final match = widgetList.firstWhere(
      (w) => w.route == settings.name,
      orElse: () => WidgetModel(
          name: 'NotFound', route: '/404', builder: () => const SizedBox()),
    );

    if (match.name == 'NotFound') {
      return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 Not Found'))));
    }

    return MaterialPageRoute(
      builder: (_) => WidgetDetailScreen(
        widgetName: match.name,
        liveWidget: match.builder(),
      ),
    );
  }
}
