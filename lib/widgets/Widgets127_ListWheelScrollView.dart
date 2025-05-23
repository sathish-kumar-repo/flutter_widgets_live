import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  const ListWheelScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListWheelScrollView Widget"),
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        // diameterRatio: 2,
        // offAxisFraction: 2,
        // squeeze: 2,
        children: List.generate(
          20,
          (index) => ListTile(
            title: const Text('Flutter Mapp'),
            onTap: () {},
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          ),
        ),
      ),
    );
  }
}
