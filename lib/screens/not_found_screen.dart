import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart'; // If using go_router for navigation

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 100, color: Colors.redAccent),
              const SizedBox(height: 24),
              Text(
                '404',
                style: theme.textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Page Not Found',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              Text(
                'The page you’re looking for doesn’t exist or has been moved.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode ? Colors.white : null,
                ),
                icon: const Icon(Icons.home),
                label: const Text('Go to Home'),
                onPressed: () {
                  context.go('/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
