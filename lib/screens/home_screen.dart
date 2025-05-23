import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_live/theme/app_theme.dart';
import 'package:provider/provider.dart';
import '../components/widget_tile.dart';
import '../data/widget_data.dart';
import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final filteredWidgets = widgetList
        .where((w) => w.name.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Live"),
        elevation: 1,
        actions: [
          Icon(
            isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
            color: isDarkMode ? Colors.white : AppTheme.accentColor,
          ),
          CupertinoSwitch(
            value: isDarkMode,
            onChanged: (_) => themeProvider.toggleTheme(),
            activeColor: AppTheme.accentColor,
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search widgets...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onChanged: (value) {
                  setState(() => _searchText = value);
                },
              ),
            ),
          ),
          if (filteredWidgets.isNotEmpty)
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: filteredWidgets.length,
                itemBuilder: (context, index) {
                  return WidgetTile(widgetModel: filteredWidgets[index]);
                },
              ),
            )
          else
            Expanded(
              child: Center(
                child: Text('Nothing found "${_searchText}"'),
              ),
            )
        ],
      ),
    );
  }
}
