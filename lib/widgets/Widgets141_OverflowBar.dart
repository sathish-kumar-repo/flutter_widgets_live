import 'package:flutter/material.dart';

class OverflowBarWidget extends StatelessWidget {
  const OverflowBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverflowBar Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // this widget mix between row and column widget
        child: OverflowBar(
          spacing: 8,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn Smart'),
            ),
          ],
        ),
      ),
    );
  }
}
