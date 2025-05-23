import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  const OverflowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverflowBox Widget"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orangeAccent,
          child: OverflowBox(
            maxWidth: 200,
            maxHeight: 200,
            child: Container(
              color: Colors.red.withOpacity(0.5),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
