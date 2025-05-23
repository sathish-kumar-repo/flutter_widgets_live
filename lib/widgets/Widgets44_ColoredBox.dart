import 'package:flutter/material.dart';

class ColoredBoxWidget extends StatelessWidget {
  const ColoredBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColoredBox Widget"),
      ),
      body: const Center(
        child: ColoredBox(
          color: Colors.orangeAccent,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
