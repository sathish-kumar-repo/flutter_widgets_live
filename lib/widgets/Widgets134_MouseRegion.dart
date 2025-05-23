import 'package:flutter/material.dart';

class MouseRegionWidget extends StatefulWidget {
  const MouseRegionWidget({super.key});

  @override
  State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  int enterCount = 0;
  int exitCount = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MouseRegion Widget"),
      ),
      body: Center(
        child: MouseRegion(
          onEnter: (PointerEvent details) {
            setState(() {
              enterCount++;
            });
          },
          onHover: (PointerEvent details) {
            x = details.position.dx;
            y = details.position.dy;
          },
          onExit: (PointerEvent details) {
            setState(() {
              exitCount++;
            });
          },
          child: Container(
            color: Colors.orangeAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Enters: $enterCount',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Exists $exitCount',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Cursor: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
