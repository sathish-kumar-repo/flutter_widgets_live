import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget"),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Row - 1'),
          Text('Row - 2'),
          Text('Row - 3'),
          Text('Row - 4'),
          Text('Row - 5'),
          Text('Row - 6'),
          Text('Flutter Mapp'),
        ],
      ),
    );
  }
}
