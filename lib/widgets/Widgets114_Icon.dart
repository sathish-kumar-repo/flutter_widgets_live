import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Widget"),
      ),
      body: const Icon(
        Icons.flutter_dash,
        color: Colors.orangeAccent,
        size: 200,
        shadows: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(8, 8),
            spreadRadius: 10,
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
