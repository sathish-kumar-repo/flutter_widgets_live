import 'package:flutter/material.dart';

class ListenerWidget extends StatefulWidget {
  const ListenerWidget({super.key});

  @override
  State<ListenerWidget> createState() => _ListenerWidgetState();
}

class _ListenerWidgetState extends State<ListenerWidget> {
  int numberOfPresses = 0;
  int numberOfRelease = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listener Widget"),
      ),
      body: Listener(
        onPointerDown: (PointerDownEvent event) {
          setState(() {
            numberOfPresses++;
          });
        },
        onPointerMove: (PointerEvent details) {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
          });
        },
        onPointerUp: (PointerUpEvent event) {
          setState(() {
            numberOfRelease++;
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.orangeAccent,
          child: Column(
            children: [
              Text(
                'presses: $numberOfPresses',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'presses: $numberOfRelease',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'Cursor: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                style: const TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
