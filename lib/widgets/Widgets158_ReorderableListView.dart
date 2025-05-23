import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReorderableListView Widget"),
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
            title: Text('Item ${items[index]}'),
            trailing: const Icon(Icons.drag_handle_sharp),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              // print(newIndex);
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            // print(item);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
