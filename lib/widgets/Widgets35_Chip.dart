import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip Widget"),
      ),
      body: Center(
        child: Chip(
          label: const Text('This is a Flutter Chip'),
          onDeleted: () {
            debugPrint('Do something');
          },
          deleteIcon: const Icon(Icons.delete),
          deleteIconColor: Colors.pinkAccent,
          backgroundColor: Colors.tealAccent,
          deleteButtonTooltipMessage: 'Click to Delete',
          shadowColor: Colors.pinkAccent,
          // iconTheme: IconThemeData(
          //   color: Colors.blueGrey,
          //   fill: 1,
          //   size: 300,
          // ),
          elevation: 20,
          labelPadding: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          labelStyle: const TextStyle(fontSize: 20),
          // surfaceTintColor: Colors.yellowAccent,
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
