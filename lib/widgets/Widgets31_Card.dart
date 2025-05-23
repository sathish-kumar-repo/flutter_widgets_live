import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.orangeAccent,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                const Text('This is a Flutter Card'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Press'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
