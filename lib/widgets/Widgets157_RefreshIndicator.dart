import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  List<String> items = <String>[
    'Item 1',
    'Item 2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RefreshIndicator Widget"),
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.orangeAccent,
        onRefresh: () async {
          await Future.delayed(
            const Duration(seconds: 1),
          );
          int nextItem = items.length + 1;
          items.add('Item $nextItem');
          setState(() {});
        },
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(items[index]),
              tileColor: Colors.white70,
            ),
          ),
          padding: const EdgeInsets.all(5),
        ),
      ),
    );
  }
}
