import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              height: 200,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
