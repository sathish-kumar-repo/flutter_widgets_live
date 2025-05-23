import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedBox Widget"),
      ),
      body: const Center(
        child: SizedBox(
          // if height and width is not given, then sized box entire width and height
          width: 300.0,
          height: 300.0,
          child: Card(
            color: Colors.orangeAccent,
            child: Center(
              child: Text(
                'Flutter Mapp',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
