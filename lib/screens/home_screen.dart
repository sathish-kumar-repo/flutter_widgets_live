import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/widget_data.dart';
import '../models/widget_model.dart';
import '../provider/theme_provider.dart';

import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final filteredWidgets = widgetList
        .where((w) => w.name.toLowerCase().contains(search.toLowerCase()))
        .toList();

    final isDarkMode = themeProvider.isDarkMode;
    final baseBgColor = isDarkMode ? Colors.black : Colors.grey[50];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.deepPurple, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: const Text(
            'Flutter Widget Explorer',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                  color: Colors.white),
              Switch(
                value: isDarkMode,
                onChanged: (_) => themeProvider.toggleTheme(),
                activeColor: Colors.pinkAccent,
                inactiveThumbColor: Colors.amber,
              ),
              const SizedBox(width: 12),
            ],
          )
        ],
      ),
      backgroundColor: baseBgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: TextField(
                  onChanged: (val) => setState(() => search = val),
                  decoration: InputDecoration(
                    hintText: 'Search widgets...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: isDarkMode ? Colors.grey[850] : Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth > 800
                    ? 4
                    : constraints.maxWidth > 600
                        ? 3
                        : 2;

                return GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: filteredWidgets.length,
                  itemBuilder: (context, index) {
                    final widgetItem = filteredWidgets[index];
                    return _NeumorphicWidgetCard(
                      widgetModel: widgetItem,
                      onTap: () => context.go('/widget/${widgetItem.route}'),
                      isDarkMode: isDarkMode,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NeumorphicWidgetCard extends StatelessWidget {
  final WidgetModel widgetModel;
  final VoidCallback onTap;
  final bool isDarkMode;

  const _NeumorphicWidgetCard({
    required this.widgetModel,
    required this.onTap,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final baseColor = isDarkMode ? Colors.grey[900]! : Colors.grey[300]!;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isDarkMode
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    offset: const Offset(5, 5),
                    blurRadius: 15,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade800,
                    offset: const Offset(-5, -5),
                    blurRadius: 15,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(5, 5),
                    blurRadius: 15,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    blurRadius: 15,
                  ),
                ],
        ),
        child: Center(
          child: Text(
            widgetModel.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white70 : Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
