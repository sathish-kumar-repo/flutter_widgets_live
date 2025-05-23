import 'package:flutter/material.dart';
import '../components/widget_tile.dart';
import '../data/widget_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    final filteredWidgets = widgetList
        .where((w) => w.name.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Explorer"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
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
          Expanded(
            child: ListView.builder(
              itemCount: filteredWidgets.length,
              itemBuilder: (context, index) {
                return WidgetTile(widgetModel: filteredWidgets[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
