import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 25,
              width: 100,
              color: Colors.orangeAccent,
              child: const FittedBox(
                child: Text(
                  'This is a pretty long text',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              color: Colors.orangeAccent,
              child: const FittedBox(
                child: Text(
                  'This is a pretty long text',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              child: const FittedBox(
                child: Text(
                  'This is a pretty long text',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
