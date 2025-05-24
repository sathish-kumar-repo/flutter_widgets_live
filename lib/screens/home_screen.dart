import 'package:flutter/material.dart';
import 'package:flutter_widgets_live/theme/app_theme.dart';
import 'package:provider/provider.dart';
import '../components/widget_tile.dart';
import '../data/widget_data.dart';
import '../models/widget_model.dart';
import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = "";
  bool _isGridView = true;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    // Filter widget list by search input
    final filteredWidgets = widgetList
        .where((w) => w.name.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text("Flutter Widget Live"),
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 5,
        shadowColor: isDarkMode
            ? Colors.black.withOpacity(0.5)
            : Colors.grey.withOpacity(0.5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: FlutterLogo(),
        ),
        actions: [
          // Toggle grid/list view
          IconButton(
            icon: Icon(
              _isGridView ? Icons.view_list : Icons.grid_view,
              color: isDarkMode ? Colors.white : AppTheme.accentColor,
            ),
            tooltip:
                _isGridView ? 'Switch to List View' : 'Switch to Grid View',
            onPressed: () => setState(() => _isGridView = !_isGridView),
          ),
          // Toggle dark/light theme
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
              color: isDarkMode ? Colors.white : AppTheme.accentColor,
            ),
            tooltip:
                isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
            onPressed: themeProvider.toggleTheme,
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(15),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search widgets...",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchText.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () => setState(() => _searchText = ""),
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onChanged: (value) => setState(() => _searchText = value),
              ),
            ),
          ),

          // Main content
          Expanded(
            child: filteredWidgets.isNotEmpty
                ? AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) =>
                        FadeTransition(opacity: animation, child: child),
                    child: _isGridView
                        ? _buildGridView(filteredWidgets)
                        : _buildListView(filteredWidgets),
                  )
                : Center(
                    child: Text('Nothing found "$_searchText"'),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView(List<WidgetModel> widgets) {
    return LayoutBuilder(
      key: const ValueKey('grid'),
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final crossAxisCount = screenWidth < 600
            ? 1
            : screenWidth < 900
                ? 2
                : 3;

        return GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: widgets.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.5,
          ),
          itemBuilder: (context, index) => WidgetTile(
            widgetModel: widgets[index],
            isGridView: _isGridView,
          ),
        );
      },
    );
  }

  Widget _buildListView(List<WidgetModel> widgets) {
    return ListView.builder(
      key: const ValueKey('list'),
      padding: const EdgeInsets.all(10),
      itemCount: widgets.length,
      itemBuilder: (context, index) => WidgetTile(
        widgetModel: widgets[index],
        isGridView: _isGridView,
      ),
    );
  }
}
