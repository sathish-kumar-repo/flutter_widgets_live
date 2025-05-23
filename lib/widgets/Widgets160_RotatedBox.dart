import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  const RotatedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("RotatedBox Widget"),
      ),
      body: const Center(
        child: RotatedBox(
          quarterTurns: 1,
          // quarterTurns: 2,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
