import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("ShaderMask Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              print(bounds); // Rect.fromLTRB(0.0, 0.0, 376.0, 94.0)
              return const RadialGradient(
                center: Alignment.topRight,
                radius: 4.0,
                colors: [
                  Colors.orangeAccent,
                  Colors.redAccent,
                ],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            child: const Text(
              'This is cool looking text',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
