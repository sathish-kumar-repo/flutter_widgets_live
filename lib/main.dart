import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/widget_model.dart';
import 'screens/home_screen.dart';
import 'screens/widget_detail_screen.dart';
import 'data/widget_data.dart';

void main() {
  runApp(const WidgetExplorerApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/widget/:name',
      builder: (context, state) {
        final name = state.pathParameters['name']!;
        final widgetModel = widgetList.firstWhere(
          (w) => w.name.toLowerCase() == name.toLowerCase(),
          orElse: () => WidgetModel(
            name: 'Not Found',
            route: '',
            builder: () => const Text("Not Found"),
          ),
        );
        return WidgetDetailScreen(
          widgetName: widgetModel.name,
          liveWidget: widgetModel.builder(),
        );
      },
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text('Page not found')),
  ),
);

class WidgetExplorerApp extends StatelessWidget {
  const WidgetExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Widget Explorer',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
