import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedRotation Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Rotate Logo'),
            )
          ],
        ),
      ),
    );
  }
}
