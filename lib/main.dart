import 'package:flutter/material.dart';
import 'package:flutter_widgets_live/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'models/widget_model.dart';
import 'provider/theme_provider.dart';
import 'screens/home_screen.dart';
import 'data/widget_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Explorer',
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}

final _router = GoRouter(
  // initialLocation: '/',
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
        return widgetModel.builder();
      },
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text('Page not found')),
  ),
);
