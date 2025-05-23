import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spacer Widget"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orangeAccent,
            height: 100,
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            color: Colors.orangeAccent,
            height: 100,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            color: Colors.orangeAccent,
            height: 100,
          ),
        ],
      ),
    );
  }
}
