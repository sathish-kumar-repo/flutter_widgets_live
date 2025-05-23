import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/icon/ocean.jpg',
              ),
            ),
            Center(
              child: Image.asset(
                'assets/icon/blue.jpg',
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
