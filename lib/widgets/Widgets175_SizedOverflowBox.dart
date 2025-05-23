import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  const SizedOverflowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedOverflowBox Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.orangeAccent,
          child: SizedOverflowBox(
            size: const Size(100, 100),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('This is a button'),
            ),
          ),
        ),
      ),
    );
  }
}
